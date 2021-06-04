# Demo ArgoCD

The **argocd** [demo](../../5-demos) use the [argocd cluster resource](../../resources/argocd) to deploy multiple ArgoCD cluster using the argocd operator with several example applications working with them.

This demo is based on the [cluster-argocd helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-argocd) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                           |
| ---------------- | ------------------------------------------------- |
| **Name**         | **STARTX demo argocd**                            |
| **tags**         | `startx` `demo` `automation` `gitops` `argocd`    |
| **provider**     | STARTX                                            |
| **requirements** | [argocd cluster resource](../../resources/argocd) |
| **format**       | openshift template with argoCD application        |
| **content**      | 6 ArgoCD application                              |
| **namespace**    | demo-argocd                                       |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate argocd mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable argocd mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate argocd mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable argocd mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info argocd
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
