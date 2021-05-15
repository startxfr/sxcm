# Configure Machine

The **machine** [cluster resource](../../4-cluster-resources) apply the cluster **machine configuration** backend for cluster configuration (infrastructure, healthCheck and Autoscaler, ...).

This cluster resource is based on the [cluster-machine helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-machine) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                                                    |
| ------------- | -------------------------------------------------------------------------- |
| **Name**      | **STARTX Cluster Machine config**                                          |
| **tags**      | `startx` `cluster` `config` `admin` `machine` `machineset` `iac` `cluster` |
| **provider**  | STARTX                                                                     |
| **format**    | openshift template                                                         |
| **content**   | 2 ArgoCD application                                                       |
| **namespace** | openshift-machine                                                          |
| **operator**  | machine-operator@4.7.0                                                     |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate machine mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable machine mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate machine mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable machine mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info machine
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
