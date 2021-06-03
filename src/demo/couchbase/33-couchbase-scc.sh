#!/bin/bash

SCOPE=$2
CLUSTER=$1
ENV=$3
VERSION=$4
PROJECT=demo-couchbase
DIR=`dirname $(readlink -f $0)`
DIR="$DIR/demo/_okd/dev/"

oc adm policy add-scc-to-user privileged system:serviceaccount:$PROJECT:couchbase-pods