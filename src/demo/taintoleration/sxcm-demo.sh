#!/bin/bash

#### Default variables for this demo script
action=${1:-begin}
demo=${2:-mydemo}
cluster=${3:-default}
localScope=${4:-scope}
localEnv=${5:-dev}
localVersion=${6:-beta}
clusterK8s=$7
option=$8
namespace="demo-$demo"
k8cmd="oc $SXCM_OCAPPLY_OPTS --cluster=$clusterK8s"
k8cmdGet="oc $SXCM_OCAPPLY_OPTS --cluster=$clusterK8s -o wide get "

NODE1=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 1)
NODE2=$(oc get node -o name  -l node-role.kubernetes.io/worker | head -n 2 | tail -n 1)

#### Functions for this demo

# Actions for the begining of the demo scenario
function myDemoBegin {
    echo "-- Demo $demo - Begin"
    echo "---- Status of the ArgoCD Applications"
    $k8cmdGet Application -n startx-argocd --no-headers=true -l app.startx.fr/component="${namespace}"
    echo "---- List of the exposed route to use"
    $k8cmdGet route -n ${namespace} --no-headers=true
    echo "---- List of the nodes and taint applyed"
    $k8cmdGet nodes -o go-template='{{printf "%-50s %-12s\n" "Node" "Taint"}}{{- range .items}}{{- if $taint := (index .spec "taints") }}{{- .metadata.name }}{{ "\t" }}{{- range $taint }}{{- .key }}={{ .value }}:{{ .effect }}{{ "\t" }}{{- end }}{{- "\n" }}{{- end}}{{- end}}'
    echo "---- Nothing special to perform to begin this demo scenario"
}

# Actions for the begining of the demo scenario
function myDemoStep {
    echo "-- Demo $demo - step $option"
    case $option in
        "1") 
            echo "---- Add demotain repulse for node $NODE1"
            oc adm taint nodes $NODE1 demotain=repulse:NoSchedule
            oc adm taint nodes $NODE1 demotain=repulse:NoExecute
        ;;
        "2")
            echo "---- Add demotain otherval for node $NODE2"
            oc adm taint nodes $NODE2 demotain=otherval:NoSchedule
            oc adm taint nodes $NODE2 demotain=otherval:NoExecute
        ;;
        *)
            echo "This step number is not implemented in this demo"
        ;;
    esac
}

# Actions for the end of the demo scenario
function myDemoEnd {
    echo "-- Demo $demo - End"
    echo "---- Remove demotain repulse for node $NODE1"
    oc adm taint nodes $NODE1 demotain=repulse:NoSchedule-
    oc adm taint nodes $NODE1 demotain=repulse:NoExecute-
    echo "---- Remove demotain otherval for node $NODE2"
    oc adm taint nodes $NODE2 demotain=otherval:NoSchedule-
    oc adm taint nodes $NODE2 demotain=otherval:NoExecute-
    echo "---- List of the nodes and taint applyed"
    $k8cmdGet nodes -o go-template='{{printf "%-50s %-12s\n" "Node" "Taint"}}{{- range .items}}{{- if $taint := (index .spec "taints") }}{{- .metadata.name }}{{ "\t" }}{{- range $taint }}{{- .key }}={{ .value }}:{{ .effect }}{{ "\t" }}{{- end }}{{- "\n" }}{{- end}}{{- end}}'
}

# Actions for the end of the demo scenario
function myDemoUsage {
    echo "Choose an action between begin, step or end"
}

# Get information about the demo scenario
function myDemoInfo {
    echo "TODO : Add a description for this demo in sxcm-demo.sh"
}

####

# main menu for the cluster sub-command
case $action in
    begin) myDemoBegin;;
    step) myDemoStep;;
    end) myDemoEnd;;
    *) myDemoUsage ;;
esac