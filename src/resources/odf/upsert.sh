#!/bin/bash

SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
OCTOKEN=$5
OCCLUSTER=$6
OCCLUSTERNAME=$7
LIST=$(oc get node -o name  -l node-role.kubernetes.io/worker --token=$OCTOKEN --cluster=$OCCLUSTERNAME 2>/dev/null)
COUNT=$(echo $LIST | wc -w)
echo -e "Found $COUNT worker node to label as storage node"
if [[ $COUNT -gt 0 ]]; then
    for node in $LIST
    do
        oc label $node cluster.odf.openshift.io/openshift-storage="" --overwrite --token=$OCTOKEN --cluster=$OCCLUSTERNAME
    done
fi