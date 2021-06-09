#!/bin/bash

ACTION=$1
SCOPE=$3
CLUSTER=$2
ENV=$4
VERSION=$5
NODE1=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 1)
NODE2=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 2 | tail -n 1)

if [[ $ACTION == "delete" ]]
then
    echo -e "Delete demotain repulse for node $NODE1"
    oc adm taint nodes $NODE1 demotain=repulse:NoSchedule-
    oc adm taint nodes $NODE1 demotain=repulse:NoExecute-
    echo -e "Delete demotain otherval for node $NODE2"
    oc adm taint nodes $NODE2 demotain=otherval:NoSchedule-
    oc adm taint nodes $NODE2 demotain=otherval:NoExecute-
else 
    echo -e "Add demotain repulse for node $NODE1"
    oc adm taint nodes $NODE1 demotain=repulse:NoSchedule
    oc adm taint nodes $NODE1 demotain=repulse:NoExecute
    echo -e "Add demotain otherval for node $NODE2"
    oc adm taint nodes $NODE2 demotain=otherval:NoSchedule
    oc adm taint nodes $NODE2 demotain=otherval:NoExecute
fi

