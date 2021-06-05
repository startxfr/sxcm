# Demo Nexus

The **nexus** [demo](../../5-demos) use the [nexus cluster resource](../../resources/nexus) to deploy multiple Nexus cluster using the nexus operator with several example applications working with them.

This demo is based on the [cluster-nexus helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-nexus) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo nexus**                      |
| **tags**         | `startx` `demo` `storage` `nexus`          |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | 6 ArgoCD application                       |
| **namespace**    | demo-nexus                                 |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate nexus mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable nexus mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate nexus mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable nexus mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info nexus
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
