# Demo Source-to-image

The **s2i** [demo](../../5-demos) use the [s2i cluster resource](../../resources/s2i) to deploy multiple Source-to-image cluster using the s2i operator with several example applications working with them.

This demo is based on the [cluster-s2i helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-s2i) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo s2i**                        |
| **tags**         | `startx` `demo` `build` `s2i`              |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | 6 ArgoCD application                       |
| **namespace**    | demo-s2i                                   |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate s2i mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable s2i mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate s2i mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable s2i mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info s2i
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
