# Demo HUGO

The **hugo** [demo](../../5-demos) use the [hugo cluster resource](../../resources/hugo) to deploy multiple HUGO cluster using the hugo operator with several example applications working with them.

This demo is based on the [cluster-hugo helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-hugo) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                       |
| ---------------- | --------------------------------------------- |
| **Name**         | **STARTX demo hugo**                          |
| **tags**         | `startx` `demo` `micro-services` `hugo`       |
| **provider**     | STARTX                                        |
| **requirements** | [hugo cluster resource](../../resources/hugo) |
| **format**       | openshift template with argoCD application    |
| **content**      | 6 ArgoCD application                          |
| **namespace**    | demo-hugo                                     |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate hugo mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable hugo mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate hugo mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable hugo mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info hugo
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
