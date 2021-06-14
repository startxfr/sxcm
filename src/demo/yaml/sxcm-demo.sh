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
    $k8cmdGet Application -n startx-argocd --no-headers=true -l app.startx.fr/component="${namespace}"
    echo "---- List of the exposed route to use"
    $k8cmdGet route -n ${namespace} --no-headers=true
    echo "---- Nothing special to perform to begin this demo scenario"
}

# Actions for the begining of the demo scenario
function myDemoStep {
    echo "-- Demo $demo - step $option"
    case $option in
        "1") 
            echo "---- Start step 1"
            echo "Here is the list of the various configMap defined fo this demo :"
            $k8cmdGet cm -n ${namespace}
        ;;
        "2") 
            echo "---- Start step 2"
            echo "Here is the list of the various configMap defined fo this demo :"
            $k8cmdGet cm -n ${namespace}
            echo "Yous can run the following command for each configMap to read the defined values :"
            echo "oc get -o yaml cm basic-config"
            echo "oc get -o yaml cm abstract-config"
            echo "oc get -o yaml cm child-abc-config"
            echo "oc get -o yaml cm child-bc-config"
            echo "oc get -o yaml cm child-c-config"
        ;;
        "3")
            echo "---- Start step 3"
            echo "Yous can run the following command for each configMap to change the defined values :"
            echo "oc edit cm basic-config"
            echo "oc edit cm abstract-config"
            echo "oc edit cm child-abc-config"
            echo "oc edit cm child-bc-config"
            echo "oc edit cm child-c-config"
        ;;
        "4")
            echo "---- Start step 4"
            echo "Yous can run the following to apply change to your deployment :"
            echo "oc get job -l app=yaml -o json | kubectl replace --force -f -"
        ;;
        "5")
            echo "---- Start step 5"
            echo "Yous can run the following to export you resources :"
            echo "oc get cm basic-config -o json"
            echo "oc get cm abstract-config -o yaml"
            echo "oc get pod -o yaml"
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
Description : Deployment of multiple samples application using various YAML syntaxs to 
              demonstrate the flexibility and extensibility of YAML format combined under an 
              openshift 4 environment. Could also be used to illustrate interactions
              with the K8S resources controllers and declarative paradigm.
Require     : none
EOF
}

####

# main menu for the cluster sub-command
case $action in
    begin) myDemoBegin;;
    step) myDemoStep;;
    end) myDemoEnd;;
    info) myDemoInfo ;;
    *) myDemoUsage ;;
esac