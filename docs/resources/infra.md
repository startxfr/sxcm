# infrastructure configuration

Deploy cluster resource enable **Infra** for infrastructure configuration.

## Description

| Field         | Content                                         |
| ------------- | ----------------------------------------------- |
| **Name**      | **STARTX cluster Infra**                        |
| **tags**      | `startx`, `cluster`, `config`, `admin`, `infra` |
| **provider**  | STARTX                                          |
| **format**    | openshift template                              |
| **content**   | 3 ArgoCD application                            |
| **namespace** | openshift-config                                |
| **operator**  | _none_                                          |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate infra mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable infra mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate infra mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable infra mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info infra
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
