# Demo ElasticSearch

The **elasticsearch** [demo](../../5-demos) use the [elasticsearch cluster resource](../../resources/elasticsearch) to deploy multiple ElasticSearch cluster using the elasticsearch operator with several example applications working with them.

This demo is based on the [cluster-elasticsearch helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-elasticsearch) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                                         |
| ---------------- | --------------------------------------------------------------- |
| **Name**         | **STARTX demo elasticsearch**                                   |
| **tags**         | `startx` `demo` `security` `elasticsearch`                      |
| **provider**     | STARTX                                                          |
| **requirements** | [elasticsearch cluster resource](../../resources/elasticsearch) |
| **format**       | openshift template with argoCD application                      |
| **content**      | **2** Applications + **1** AppProject                           |
| **namespace**    | demo-elasticsearch                                              |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate elasticsearch mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable elasticsearch mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate elasticsearch mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable elasticsearch mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info elasticsearch
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
