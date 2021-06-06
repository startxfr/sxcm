# Demo 3Scale

The **3scale** [demo](../../5-demos) use the [3scale cluster resource](../../resources/3scale) to deploy multiple 3Scale cluster using the 3scale operator with several example applications working with them.

This demo is based on the [cluster-3scale helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-3scale) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                           |
| ---------------- | ------------------------------------------------- |
| **Name**         | **STARTX demo 3scale**                            |
| **tags**         | `startx` `demo` `api` `3scale`                    |
| **provider**     | STARTX                                            |
| **requirements** | [3scale cluster resource](../../resources/3scale) |
| **format**       | openshift template with argoCD application        |
| **content**      | **6** Applications + **1** AppProject             |
| **namespace**    | demo-3scale                                       |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate 3scale mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable 3scale mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate 3scale mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable 3scale mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info 3scale
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
