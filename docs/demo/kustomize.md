# Demo Kustomize

The **kustomize** [demo](../../5-demos) use the [kustomize cluster resource](../../resources/kustomize) to deploy multiple Kustomize cluster using the kustomize operator with several example applications working with them.

This demo is based on the [example-catalog helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-catalog) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo kustomize**                  |
| **tags**         | `startx` `demo` `k8s` `kustomize`          |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | **6** Applications + **1** AppProject      |
| **namespace**    | demo-kustomize                             |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate kustomize mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable kustomize mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate kustomize mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable kustomize mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info kustomize
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
