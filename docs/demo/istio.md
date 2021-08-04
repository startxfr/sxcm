# Demo Istio

The **istio** [demo](../../5-demos) use the [istio cluster resource](../../resources/istio) to deploy multiple Istio cluster using the istio operator with several example applications working with them.

This demo is based on the [cluster-istio helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-istio) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                         |
| ---------------- | ----------------------------------------------- |
| **Name**         | **STARTX demo istio**                           |
| **tags**         | `startx` `demo` `service-mesh` `istio`          |
| **provider**     | STARTX                                          |
| **requirements** | [istio cluster resource](../../resources/istio) |
| **format**       | openshift template with argoCD application      |
| **content**      | **6** Applications + **1** AppProject           |
| **namespace**    | demo-istio                                      |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate istio mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable istio mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate istio mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable istio mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info istio
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
