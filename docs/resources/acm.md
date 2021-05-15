# Service ACM

The **Advanced Cluster-Management** [cluster resource](../../4-cluster-resources) deploy the **advanced-cluster-management operator** and a
**Advanced Cluster Management instance** that provide a multi-cluster management support in your cluster.

This cluster resource is based on the [cluster-acm helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-acm) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                                              |
| ------------- | -------------------------------------------------------------------- |
| **Name**      | **STARTX Advanced Cluster Management**                               |
| **tags**      | `startx` `cluster` `config` `admin` `acm` `multi-cloud` `management` |
| **provider**  | STARTX                                                               |
| **format**    | openshift template                                                   |
| **content**   | 3 ArgoCD application                                                 |
| **namespace** | open-cluster-management                                              |
| **operator**  | advanced-cluster-management@2.1.2                                    |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate acm mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable acm mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate acm mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable acm mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info acm
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
