# OCS

Deploy cluster resource enable **OCS** for converged storage capacities.

## Description

| Field         | Content                                             |
| ------------- | --------------------------------------------------- |
| **Name**      | **STARTX OCS Config**                               |
| **tags**      | `startx` `cluster` `config` `admin` `storage` `ocs` |
| **provider**  | STARTX                                              |
| **format**    | openshift template + script                         |
| **content**   | 4 ArgoCD application                                |
| **namespace** | openshift-storage                                   |
| **operator**  | ocs-operator@4.6.4                                  |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate ocs mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable ocs mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate ocs mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable ocs mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info ocs
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
