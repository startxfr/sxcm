# Demo Storage

The **storage** [demo](../../5-demos) use the [storage cluster resource](../../resources/storage) to deploy multiple Storage cluster using the storage operator with several example applications working with them.

This demo is based on the [cluster-storage helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-storage) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                             |
| ---------------- | --------------------------------------------------- |
| **Name**         | **STARTX demo storage**                             |
| **tags**         | `startx` `demo` `persistance` `storage`             |
| **provider**     | STARTX                                              |
| **requirements** | [storage cluster resource](../../resources/storage) |
| **format**       | openshift template with argoCD application          |
| **content**      | 6 ArgoCD application                                |
| **namespace**    | demo-storage                                        |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate storage mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable storage mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate storage mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable storage mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info storage
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
