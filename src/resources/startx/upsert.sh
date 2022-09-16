#!/bin/bash
SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
OCTOKEN=$5
OCCLUSTER=$6
OCCLUSTERNAME=$7
PROJECT=startx
PROJECTCONF=startx-config
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/_console/okd-cluster-resources/startx"
ACTION="install"
ACTIONNAME="Installation du context STARTX (helm)"

function testProjectExist {
    oc project $1 --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
    if [[ $? -gt "0" ]]
    then
        echo -e "Attente de la creation du project $1 pendant 10sec..."
        sleep 10
        testProjectExist $1
    fi
}

testProjectExist $PROJECT
echo -e "$ACTION of project $PROJECT"
if [[ $ACTION == "uninstall" ]]
then
    echo -e "Remove all serviceAccounts view role in $PROJECT"
    oc policy remove-role-to-group view system:serviceaccounts -n $PROJECT
    echo -e "Remove all serviceAccounts image-puller role in $PROJECT"
    oc policy remove-role-to-group system:image-puller system:serviceaccounts -n $PROJECT
else
    echo -e "Add all serviceAccounts view role in $PROJECT"
    oc policy add-role-to-group view system:serviceaccounts -n $PROJECT
    echo -e "Add all serviceAccounts image-puller role in $PROJECT"
    oc policy add-role-to-group system:image-puller system:serviceaccounts -n $PROJECT
    echo -e "Add system:authenticated view role in $PROJECT"
    oc policy add-role-to-group view system:authenticated -n $PROJECT
    echo -e "Add system:authenticated image-puller role in $PROJECT"
    oc policy add-role-to-group system:image-puller system:authenticated -n $PROJECT
fi

# https://docs.openshift.com/container-platform/4.10/openshift_images/managing_images/using-image-pull-secrets.html#images-update-global-pull-secret_using-image-pull-secrets
if [[ "$8" != "" && "$9" != "" ]]
then
    if [[ $ACTION == "uninstall" ]]
    then
        echo -e "Remove tunning of default creds"
    else
        echo -e "Import cluster pull-secret credentials"
        oc get secret/pull-secret -n openshift-config --template='{{index .data ".dockerconfigjson" | base64decode}}' > /tmp/secrettmp
        echo -e "Add quay and dockerhub to cluster pull-secret credentials"
        oc registry login --registry="docker.io" --auth-basic="$8" --skip-check --to=/tmp/secrettmp 
        # oc registry login --registry="quay.io" --auth-basic="$9" --to=/tmp/secrettmp
        echo -e "Apply this change to the new cluster (first time could be long, require a drain on all nodes)"
        oc set data secret/pull-secret -n openshift-config --from-file=.dockerconfigjson=/tmp/secrettmp
        rm -f /tmp/secrettmp
    fi
fi



