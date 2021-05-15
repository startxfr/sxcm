# Configure RBAC

The **RBAC** [cluster resource](../../4-cluster-resources) apply the cluster **RBAC configuration** that define the user and group role and access control applyied to this cluster.

This cluster resource is based on the [cluster-rbac helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-rbac) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                    |
| ------------- | ------------------------------------------ |
| **Name**      | **STARTX cluster RBAC**                    |
| **tags**      | `startx` `cluster` `config` `admin` `rbac` |
| **provider**  | STARTX                                     |
| **format**    | openshift template                         |
| **content**   | 1 ArgoCD application                       |
| **namespace** | _none_                                     |
| **operator**  | _none_                                     |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate rbac mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable rbac mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate rbac mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable rbac mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info rbac
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
