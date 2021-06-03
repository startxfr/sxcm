#!/bin/bash

SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
PROJECT=demo-helm
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/demo/_okd/dev/"

DEMO1_NAME="mysql"
DEMO1_REPO="stable/mysql"
DEMO2_NAME="nodejs"
DEMO2_REPO="redhat-charts/nodejs-ex-k"


echo -e "deplacement vers le projet $PROJECT"
oc project $PROJECT

# test de l'install helm'
echo -e "Test du chargement de helm dans $PROJECT"
if [[ $(helm list | grep $DEMO1_NAME | wc -l) == "0" ]]
then
    echo -e "Creation du chart $DEMO1_NAME dans le projet $PROJECT"
    helm repo add stable https://kubernetes-charts.storage.googleapis.com
    helm repo add redhat-charts https://redhat-developer.github.com/redhat-helm-charts
    helm repo update
fi

# test de la premiere demo
echo -e "Test de l'existance de $DEMO1_NAME dans $PROJECT"
if [[ $(helm list | grep $DEMO1_NAME | wc -l) == "0" ]]
then
    echo -e "Creation du chart $DEMO1_NAME dans le projet $PROJECT"
    helm install $DEMO1_NAME $DEMO1_REPO
else
    echo -e "Mise a jour du chart $DEMO1_NAME dans le projet $PROJECT"
    helm upgrade $DEMO1_NAME $DEMO1_REPO
fi

# test de la seconde demo
echo -e "Test de l'existance de $DEMO2_NAME dans $PROJECT"
if [[ $(helm list | grep $DEMO2_NAME | wc -l) == "0" ]]
then
    echo -e "Creation du chart $DEMO2_NAME dans le projet $PROJECT"
    helm install $DEMO2_NAME $DEMO2_REPO
else
    echo -e "Mise a jour du chart $DEMO2_NAME dans le projet $PROJECT"
    helm upgrade $DEMO2_NAME $DEMO2_REPO
fi
