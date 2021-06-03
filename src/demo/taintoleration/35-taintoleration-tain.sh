#!/bin/bash

NODE1=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 1)
NODE2=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 2 | tail -n 1)
oc adm taint nodes $NODE1 demotain=repulse:NoSchedule
oc adm taint nodes $NODE1 demotain=repulse:NoExecute
oc adm taint nodes $NODE2 demotain=otherval:NoSchedule
oc adm taint nodes $NODE2 demotain=otherval:NoExecute