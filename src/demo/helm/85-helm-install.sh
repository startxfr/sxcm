#!/bin/bash

ACTION=$1
SCOPE=$3
CLUSTER=$2
ENV=$4
VERSION=$5
PROJECT=demo-helm
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/demo/_okd/dev/"

DEMO1_NAME="mysql"
DEMO1_REPO="stable/mysql"
DEMO2_NAME="nodejs"
DEMO2_REPO="redhat-charts/nodejs-ex-k"


echo -e "deplacement vers le projet $PROJECT" 
oc project $PROJECT
if [[ $? == "0" ]]
then
    echo -e "Wait 20sec for project $PROJECT to be created"
    sleep 20
    oc project $PROJECT
fi


if [[ $? == "0" ]]
then
    if [[ $ACTION == "delete" ]]
    then
        echo -e "Delete $DEMO1_NAME and $DEMO2_NAME helm chart in $PROJECT project"
        helm uninstall $DEMO1_NAME &>/dev/null
        helm uninstall $DEMO2_NAME &>/dev/null
    else
        # test de l'install helm'
        echo -e "Test if $DEMO1_NAME exist in $PROJECT"
        if [[ $(helm list | grep $DEMO1_NAME | wc -l) == "0" ]]
        then
            echo -e "Updating helm repository stable and redhat-charts"
            helm repo add stable https://kubernetes-charts.storage.googleapis.com
            helm repo add redhat-charts https://redhat-developer.github.com/redhat-helm-charts
            helm repo update
        fi
        # test de la premiere demo
        echo -e "Test if $DEMO1_NAME exist in $PROJECT"
        if [[ $(helm list | grep $DEMO1_NAME | wc -l) == "0" ]]
        then
            echo -e "Adding chart $DEMO1_NAME into $PROJECT project"
            helm install $DEMO1_NAME $DEMO1_REPO
        else
            echo -e "Updating chart $DEMO1_NAME in $PROJECT project"
            helm upgrade $DEMO1_NAME $DEMO1_REPO
        fi
        # test de la seconde demo
        echo -e "Test if $DEMO2_NAME exist in $PROJECT"
        if [[ $(helm list | grep $DEMO2_NAME | wc -l) == "0" ]]
        then
            echo -e "Adding chart $DEMO2_NAME into $PROJECT project"
            helm install $DEMO2_NAME $DEMO2_REPO
        else
            echo -e "Updating chart $DEMO2_NAME in $PROJECT project"
            helm upgrade $DEMO2_NAME $DEMO2_REPO
        fi
    fi
else 
    echo -e "Could not load helm chart into project $PROJECT because project doesn't exist"
fi


