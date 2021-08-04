# Demo KubeVirt

The **kubevirt** [demo](../../5-demos) use the [kubevirt cluster resource](../../resources/kubevirt) to deploy multiple KubeVirt cluster using the kubevirt operator with several example applications working with them.

This demo is based on the [cluster-kubevirt helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-kubevirt) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                               |
| ---------------- | ----------------------------------------------------- |
| **Name**         | **STARTX demo kubevirt**                              |
| **tags**         | `startx` `demo` `virtualisation` `kubevirt`           |
| **provider**     | STARTX                                                |
| **requirements** | [kubevirt cluster resource](../../resources/kubevirt) |
| **format**       | openshift template with argoCD application            |
| **content**      | **6** Applications + **1** AppProject                 |
| **namespace**    | demo-kubevirt                                         |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate kubevirt mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable kubevirt mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate kubevirt mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable kubevirt mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info kubevirt
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
