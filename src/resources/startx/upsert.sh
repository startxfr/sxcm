#!/bin/bash
SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
OCTOKEN=$5
OCCLUSTER=$6
OCCLUSTERNAME=$7
PROJECT=startx
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
if [[ $ACTION == "uninstall" ]]
then
    oc policy remove-role-to-group view system:serviceaccount -n $PROJECT
    oc policy remove-role-to-group system:image-puller system:serviceaccounts -n $PROJECT
else
    oc policy add-role-to-group view system:serviceaccount -n $PROJECT
    oc policy add-role-to-group system:image-puller system:serviceaccounts -n $PROJECT
fi