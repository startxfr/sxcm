#!/bin/bash

ACTION=$1
SCOPE=$3
CLUSTER=$2
ENV=$4
VERSION=$5
PROJECT=startx-keycloak
PROJECT2=$2-keycloak

if [[ $ACTION == "delete" ]]
then
    echo -e "Delete privileged and anyuid SCC to freeipa-pod SA in $PROJECT project"
    oc adm policy remove-scc-to-user privileged system:serviceaccount:$PROJECT:freeipa-pod
    oc adm policy remove-scc-to-user anyuid system:serviceaccount:$PROJECT:freeipa-pod
else 
    echo -e "Update privileged and anyuid SCC to freeipa-pod SA in $PROJECT project"
    oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:freeipa-pod
    oc adm policy add-scc-to-user anyuid system:serviceaccount:$PROJECT:freeipa-pod
fi