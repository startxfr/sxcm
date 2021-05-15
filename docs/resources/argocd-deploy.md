# ArgoCD Deployment

Deploy cluster resource **ArgoCD** continuous-delivery support.

## Description

| Field         | Content                                                    |
| ------------- | ---------------------------------------------------------- |
| **Name**      | **STARTX ArgoCD Deployment**                               |
| **tags**      | `startx`, `cluster`, `config`, `admin`, `argocd`, `gitops` |
| **provider**  | STARTX                                                     |
| **format**    | openshift template + script                                |
| **content**   | 1 ArgoCD + 2 AppProject + 1 ClusterRoleBinding             |
| **namespace** | startx-argocd                                              |
| **operator**  | argocd-operator@0.0.14                                     |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate argocd-deploy mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable argocd-deploy mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate argocd-deploy mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable argocd-deploy mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info argocd-deploy
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
