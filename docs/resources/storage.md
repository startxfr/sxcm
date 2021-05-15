# Configure storage

The **Storage** [cluster resource](../../4-cluster-resources) apply the cluster **storage configuration** that define the storage class applyied to this cluster for configuring dynamic-provisionned storage.

This cluster resource is based on the [cluster-storage helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-storage) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                                      |
| ------------- | ------------------------------------------------------------ |
| **Name**      | **STARTX cluster Storage**                                   |
| **tags**      | `startx` `cluster` `config` `admin` `storage` `storageclass` |
| **provider**  | STARTX                                                       |
| **format**    | openshift template                                           |
| **content**   | 1 ArgoCD application                                         |
| **namespace** | _none_                                                       |
| **operator**  | _none_                                                       |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate storage mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable storage mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate storage mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable storage mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info storage
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
