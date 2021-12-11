#!/bin/bash

ACTION=$1
SCOPE=$3
CLUSTER=$2
ENV=$4
VERSION=$5
PROJECT=startx-vault
PROJECT2=demo-vault
DIR=`dirname $(readlink -f $0)`

echo -e "Attente du demarrage de vault dans le projet $PROJECT"
oc wait po $PROJECT-0 --for=condition=Ready -n $PROJECT
if [[ $? == "0" ]]
then
    if [[ $ACTION == "delete" ]]
    then
        echo -e "Delete privileged SCC to vault-auth SA in $PROJECT2 project"
        oc adm policy remove-scc-to-user privileged system:serviceaccount:$PROJECT2:vault-auth
    else 
        echo -e "Update privileged SCC to vault-auth SA in $PROJECT2 project"
        oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT2:vault-auth
        echo -e "Execute config-demo-vault.sh in $PROJECT-0 executed into $PROJECT2 project"
        oc cp -n $PROJECT $DIR/demo/vault/config-demo-vault.sh $PROJECT-0:/tmp/config-demo.sh
        oc exec -n $PROJECT -t $PROJECT-0 -- sh /tmp/config-demo.sh
    fi
fi
