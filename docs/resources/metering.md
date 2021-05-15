# Metering

Deploy cluster resource enable **Metering** for chargeback reports.

## Description

| Field         | Content                                                          |
| ------------- | ---------------------------------------------------------------- |
| **Name**      | **STARTX cluster Metering**                                      |
| **tags**      | `startx`, `cluster`, `config`, `admin`, `metering`, `chargeback` |
| **provider**  | STARTX                                                           |
| **format**    | openshift template                                               |
| **content**   | 3 ArgoCD application                                             |
| **namespace** | openshift-metering                                               |
| **operator**  | metering-operator@4.7.0-202104250659.p0                          |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate metering mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable metering mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate metering mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable metering mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info metering
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
