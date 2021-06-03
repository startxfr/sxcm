#!/bin/bash

SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
PROJECT=startx-vault
PROJECT2=demo-vault
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/demo/_okd/dev/"

echo -e "Attente du demarrage de vault dans le projet $PROJECT"
oc wait po vault-0 --for=condition=Ready -n $PROJECT
if [[ $? == "0" ]]
then
    echo -e "Creation de la config vault le projet $PROJECT"
    oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT2:vault-auth
    oc cp -n $PROJECT $DIR/resources/config-demo-vault.sh vault-0:/tmp/config-demo.sh
    oc exec -n $PROJECT -t vault-0 -- sh /tmp/config-demo.sh
fi
