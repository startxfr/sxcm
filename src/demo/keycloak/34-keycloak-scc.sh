#!/bin/bash

SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
PROJECT=startx-keycloak
PROJECT2=$2-keycloak

echo -e "Ajout du SCC pour le SA freeipa-pod $PROJECT"
oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:freeipa-pod
oc adm policy add-scc-to-user anyuid system:serviceaccount:$PROJECT:freeipa-pod
