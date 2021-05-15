# Operator 3scale

Deploy cluster resource enable **3Scale** API management support.

## Description

| Field         | Content                                      |
| ------------- | -------------------------------------------- |
| **Name**      | **STARTX cluster 3Scale**                    |
| **tags**      | `startx` `cluster` `config` `admin` `3scale` |
| **provider**  | STARTX                                       |
| **format**    | openshift template                           |
| **content**   | 3 ArgoCD application                         |
| **namespace** | startx-3scale                                |
| **operator**  | red-hat-3scale@0.6.1                         |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate 3scale mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable 3scale mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate 3scale mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable 3scale mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info 3scale
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
