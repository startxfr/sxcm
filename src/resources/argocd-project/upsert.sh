#!/bin/bash
SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
OCTOKEN=$5
OCCLUSTER=$6
OCCLUSTERNAME=$7
ARGOCDPREFIX=openshift-gitops
PROJECT=openshift-gitops
OPERATOR_PROJECT=openshift-operators
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/_console/okd-cluster-resources/argcod-project"
SERVER_NAME="controller-manager"
DELAY="60"

oc wait po -l control-plane=$SERVER_NAME --for=condition=Ready --timeout=500ms -n $OPERATOR_PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
if [[ $? == "0" ]]
then
    echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is started"
else
    echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is not present, probably under deployment. Wait ${DELAY}s..."
    echo -e "${DELAY}sec left..."
    sleep ${DELAY}
    oc wait po -l control-plane=$SERVER_NAME --for=condition=Ready --timeout=${DELAY}0ms -n $OPERATOR_PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
    if [[ $? == "0" ]]
    then
        echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is now started"
    else
        oc get po -n $OPERATOR_PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME
        echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is still not ready. Wait ${DELAY}s more..."
        echo -e "$(echo ${DELAY}/2 | bc)sec left..."
        sleep $(echo ${DELAY}/2 | bc)
        oc wait po -l control-plane=$SERVER_NAME --for=condition=Ready --timeout=${DELAY}0ms -n $OPERATOR_PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
        if [[ $? == "0" ]]
        then
            echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is started"
        else
            echo -e "Operator $SERVER_NAME in $OPERATOR_PROJECT is not started after ${DELAY}s x 2"
            exit 1;
        fi
    fi
    echo -e "Add anyuid SCC to argocd-redis-ha service account in $PROJECT namespace"
    oc adm policy add-scc-to-user anyuid -z argocd-redis-ha -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
fi


echo -e "Link serviceAccounts with registrycreds secrets in $PROJECT"
oc secrets link argocd-application-controller startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link argocd-dex-server startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link argocd-operator startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link argocd-redis-ha startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link argocd-server startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link default startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link deployer startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link $PROJECT-application-controller startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link $PROJECT-dex-server startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link $PROJECT-redis-ha startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
oc secrets link $PROJECT-server startx-registrycreds-docker --for=pull -n $PROJECT &>/dev/null
