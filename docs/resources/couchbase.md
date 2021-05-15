# Service Couchbase

The **couchbase** [cluster resource](../../4-cluster-resources) deploy the **couchbase-enterprise certified operator** and a
**couchbase instance** that provide a NoSQL database support in your cluster.

This cluster resource is based on the [cluster-couchbase helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-couchbase) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                                 |
| ------------- | ------------------------------------------------------- |
| **Name**      | **STARTX Couchbase cluster**                            |
| **tags**      | `startx` `cluster` `config` `admin` `couchbase` `NoSQL` |
| **provider**  | STARTX                                                  |
| **format**    | openshift template                                      |
| **content**   | 2 ArgoCD application                                    |
| **namespace** | openshift-couchbase                                     |
| **operator**  | couchbase-enterprise-certified@2.1.0                    |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate couchbase mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable couchbase mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate couchbase mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable couchbase mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info couchbase
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
