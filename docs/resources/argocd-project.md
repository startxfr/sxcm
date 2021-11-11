# ArgoCD Project

The **ArgoCD project** [cluster resource](../../4-cluster-resources) deploy an **ArgoCD context** that provide a configured environment (project, rbac, operator) for running a Continous delivery support in your cluster.

This cluster resource is based on the [argocd-project openshift template](https://raw.githubusercontent.com/startxfr/sxcm/main/src/resources/argocd-project.yml).

## Description

| Field         | Content                                               |
| ------------- | ----------------------------------------------------- |
| **Name**      | **STARTX ArgoCD**                                     |
| **tags**      | `startx` `cluster` `config` `admin` `argocd` `gitops` |
| **provider**  | STARTX                                                |
| **format**    | openshift template + script                           |
| **content**   | 1 Poject + 3 RoleBinding + 1 Subscription             |
| **namespace** | openshift-gitops                                         |
| **operator**  | argocd-operator@0.0.14                                |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate argocd-project mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable argocd-project mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate argocd-project mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable argocd-project mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info argocd-project
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
