# Demo Compliance

The **compliance** [demo](../../5-demos) use the [compliance cluster resource](../../resources/compliance) to deploy multiple Compliance cluster using the compliance operator with several example applications working with them.

This demo is based on the [cluster-compliance helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-compliance) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                                   |
| ---------------- | --------------------------------------------------------- |
| **Name**         | **STARTX demo compliance**                                |
| **tags**         | `startx` `demo` `security` `compliance`                   |
| **provider**     | STARTX                                                    |
| **requirements** | [compliance cluster resource](../../resources/compliance) |
| **format**       | openshift template with argoCD application                |
| **content**      | **6** Applications + **1** AppProject                     |
| **namespace**    | demo-compliance                                           |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate compliance mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable compliance mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate compliance mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable compliance mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info compliance
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
