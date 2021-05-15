# Quay

Deploy cluster resource enable **Quay** for Quay enterprise registry support.

## Description

| Field         | Content                                        |
| ------------- | ---------------------------------------------- |
| **Name**      | **STARTX cluster Quay**                        |
| **tags**      | `startx`, `cluster`, `config`, `admin`, `quay` |
| **provider**  | STARTX                                         |
| **format**    | openshift template                             |
| **content**   | 3 ArgoCD application                           |
| **namespace** | startx-quay                                    |
| **operator**  | red-hat-quay@3.3.4                             |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate quay mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable quay mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate quay mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable quay mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info quay
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
