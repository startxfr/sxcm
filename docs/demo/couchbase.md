# Demo Couchbase

The **couchbase** [demo](../../5-demos) use the [couchbase cluster resource](../../resources/couchbase) to deploy multiple Couchbase cluster using the couchbase operator with several example applications working with them.

This demo is based on the [cluster-couchbase helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-couchbase) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                                 |
| ---------------- | ------------------------------------------------------- |
| **Name**         | **STARTX demo couchbase**                               |
| **tags**         | `startx` `demo` `nosql` `couchbase`                     |
| **provider**     | STARTX                                                  |
| **requirements** | [couchbase cluster resource](../../resources/couchbase) |
| **format**       | openshift template with argoCD application              |
| **content**      | **6** Applications + **1** AppProject                   |
| **namespace**    | demo-couchbase                                          |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate couchbase mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable couchbase mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate couchbase mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable couchbase mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info couchbase
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
