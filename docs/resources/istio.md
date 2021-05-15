# Operator Istio

Deploy cluster resource enable **Istio** for service-mesh support.

## Description

| Field         | Content                                     |
| ------------- | ------------------------------------------- |
| **Name**      | **STARTX cluster Istio-operator**           |
| **tags**      | `startx` `cluster` `config` `admin` `istio` |
| **provider**  | STARTX                                      |
| **format**    | openshift template                          |
| **content**   | 3 ArgoCD application                        |
| **namespace** | startx-istio                                |
| **operator**  | servicemeshoperator@2.0.2                   |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate istio mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable istio mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate istio mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable istio mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info istio
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
