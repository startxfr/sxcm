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

#### Functions for this demo

# Actions for the begining of the demo scenario
function myDemoBegin {
    echo "-- Demo $demo - Begin"
    echo "---- Status of the ArgoCD Applications"
    $k8cmdGet Application -n openshift-gitops --no-headers=true -l app.startx.fr/component="${namespace}"
    echo "---- List of the exposed route to use"
    $k8cmdGet route -n ${namespace} --no-headers=true
    echo "---- Nothing special to perform to begin this demo scenario"
}

# Actions for the begining of the demo scenario
function myDemoStep {
    echo "-- Demo $demo - step $option"
    case $option in
    "1")
        echo "---- Nothing special to perform for this step"
        echo "---- Display main resource deployed in this project"
        $k8cmdGet pod,route,dc,deployment,bc -n ${namespace}
        ;;
    "2")
        echo "---- Nothing special to perform for this step"
        echo "---- Display main resource deployed in this project"
        $k8cmdGet pod,route,dc,deployment,bc -n ${namespace}
        ;;
    *)
        echo "This step number is not implemented in this demo"
        ;;
    esac
}

# Actions for the end of the demo scenario
function myDemoEnd {
    echo "-- Demo $demo - End"
    echo "---- Nothing special to perform to end this demo scenario"
}

# Actions for the end of the demo scenario
function myDemoUsage {
    echo "Choose an action between begin, step or end"
}

# Get information about the demo scenario
function myDemoInfo {
    cat <<EOF
Description : Deployment of severals codeless application using pod priority and PriorityClass 
              directives applied to demonstrate the placement capacity of openshift 4
Require     : none
EOF
}

####

# main menu for the cluster sub-command
case $action in
begin) myDemoBegin ;;
step) myDemoStep ;;
end) myDemoEnd ;;
info) myDemoInfo ;;
*) myDemoUsage ;;
esac
