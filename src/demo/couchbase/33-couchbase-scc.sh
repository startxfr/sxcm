#!/bin/bash

ACTION=$1
SCOPE=$3
CLUSTER=$2
ENV=$4
VERSION=$5
PROJECT=demo-couchbase
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/demo/_okd/dev/"

if [[ $ACTION == "delete" ]]
then
    echo -e "Delete privileged SCC to couchbase-pods SA in $PROJECT project"
    oc adm policy remove-scc-to-user privileged system:serviceaccount:$PROJECT:couchbase-pods
else 
    echo -e "Update privileged SCC to couchbase-pods SA in $PROJECT project"
    oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:couchbase-pods
fi
