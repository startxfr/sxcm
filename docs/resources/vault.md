# Service Vault

The **vault** [cluster resource](../../4-cluster-resources) deploy a
**vault instance** that provide a Digital Vault using Hashicorp Vault solution.

This cluster resource is based on the [cluster-vault helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-vault) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                           |
| ------------- | ------------------------------------------------- |
| **Name**      | **STARTX cluster Vault**                          |
| **tags**      | `startx` `cluster` `config` `admin` `sec` `vault` |
| **provider**  | STARTX                                            |
| **format**    | openshift template + script                       |
| **content**   | 2 ArgoCD application                              |
| **namespace** | startx-vault                                      |
| **operator**  | _none_                                            |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate vault mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable vault mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate vault mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable vault mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info vault
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
