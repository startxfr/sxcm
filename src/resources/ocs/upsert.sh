#!/bin/bash

LIST=$(oc get node -o name  -l node-role.kubernetes.io/worker 2>/dev/null)
COUNT=$(echo $LIST | wc -w)
echo -e "Found $COUNT worker node to label as storage node"
if [[ $COUNT -gt 0 ]]; then
    for node in $LIST
    do
        oc label $node cluster.ocs.openshift.io/openshift-storage="" --overwrite
    done
fi