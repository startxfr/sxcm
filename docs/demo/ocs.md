# Demo OCS

The **ocs** [demo](../../5-demos) use the [ocs cluster resource](../../resources/ocs) to deploy multiple OCS cluster using the ocs operator with several example applications working with them.

This demo is based on the [cluster-ocs helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-ocs) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                     |
| ---------------- | ------------------------------------------- |
| **Name**         | **STARTX demo ocs**                         |
| **tags**         | `startx` `demo` `storage` `ocs`             |
| **provider**     | STARTX                                      |
| **requirements** | [ocs cluster resource](../../resources/ocs) |
| **format**       | openshift template with argoCD application  |
| **content**      | 6 ArgoCD application                        |
| **namespace**    | demo-ocs                                    |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate ocs mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable ocs mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate ocs mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable ocs mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info ocs
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
