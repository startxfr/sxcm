#!/bin/bash
SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
OCTOKEN=$5
OCCLUSTER=$6
OCCLUSTERNAME=$7
PROJECT=startx-vault
VAULT_RELEASE=0.7.0
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/resources/vault"
ACTION="install"
ACTIONNAME="Installation de vault (helm)"


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
PODCNT=`oc get po -l app.kubernetes.io/name=vault-agent-injector --token=$OCTOKEN --cluster=$OCCLUSTERNAME | wc -l`
if [[ $PODCNT -gt "0" ]]
then
    PODSTATE=`oc get po -l app.kubernetes.io/name=vault-agent-injector -o=jsonpath="{.items[0].status.phase}" --token=$OCTOKEN --cluster=$OCCLUSTERNAME`
    if [[ $PODSTATE == "Running" ]]
    then
        ACTION="upgrade"
        ACTIONNAME="Mise a jour de vault (helm)"
    fi
fi
echo -e "Ajout des SCC pour les SA vault et vault-agent-injector"
oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:vault --token=$OCTOKEN --cluster=$OCCLUSTERNAME
oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:vault-agent-injector --token=$OCTOKEN --cluster=$OCCLUSTERNAME


echo -e "Attente du demarrage de vault"
oc wait po -l app.kubernetes.io/name=vault --for=condition=Ready --timeout=30000ms -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME &>/dev/null
if [[ $? == "0" ]]
then
    if [[ $ACTION == "install" ]]
    then
        echo -e "Attente de l'initialisation de vault"
        sleep 10
    fi
    echo -e "Integration de vault avec kubernetes"
    echo "oc cp -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME $DIR/config-k8s.sh $PROJECT-0:/tmp/config-k8s.sh"
    echo "oc exec -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME -t $PROJECT-0 -- sh /tmp/config-k8s.sh"
    oc cp -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME $DIR/config-k8s.sh $PROJECT-0:/tmp/config-k8s.sh
    oc exec -n $PROJECT --token=$OCTOKEN --cluster=$OCCLUSTERNAME -t $PROJECT-0 -- sh /tmp/config-k8s.sh
fi
