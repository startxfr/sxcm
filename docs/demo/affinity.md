# Demo Affinity

The **affinity** [demo](../../5-demos) use the [affinity cluster resource](../../resources/affinity) to deploy multiple Affinity cluster using the affinity operator with several example applications working with them.

This demo is based on the [example-catalog helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-catalog) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo affinity**                   |
| **tags**         | `startx` `demo` `k8s` `ha` `affinity`      |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | **6** Applications + **1** AppProject      |
| **namespace**    | demo-affinity                              |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate affinity mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable affinity mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate affinity mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable affinity mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info affinity
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
