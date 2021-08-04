# Demo Vault

The **vault** [demo](../../5-demos) use the [vault cluster resource](../../resources/vault) to deploy multiple Vault cluster using the vault operator with several example applications working with them.

This demo is based on the [cluster-vault helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-vault) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                         |
| ---------------- | ----------------------------------------------- |
| **Name**         | **STARTX demo vault**                           |
| **tags**         | `startx` `demo` `security` `vault`              |
| **provider**     | STARTX                                          |
| **requirements** | [vault cluster resource](../../resources/vault) |
| **format**       | openshift template with argoCD application      |
| **content**      | **6** Applications + **1** AppProject           |
| **namespace**    | demo-vault                                      |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate vault mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable vault mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate vault mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable vault mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info vault
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
