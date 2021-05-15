# Service Logging

Deploy cluster resource enable **Logging** for aggregating logging stack.

## Description

| Field         | Content                                       |
| ------------- | --------------------------------------------- |
| **Name**      | **STARTX cluster Logging**                    |
| **tags**      | `startx` `cluster` `config` `admin` `logging` |
| **provider**  | STARTX                                        |
| **format**    | openshift template                            |
| **content**   | 3 ArgoCD application                          |
| **namespace** | openshift-logging                             |
| **operator**  | elasticsearch-operator@5.0.3-6                |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate logging mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable logging mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate logging mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable logging mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info logging
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
