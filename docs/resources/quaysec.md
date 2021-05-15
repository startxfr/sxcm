# Service Quay-vulnerability

The **Quay vulnerability check** [cluster resource](../../4-cluster-resources) deploy the **container security operator** to enable security scan on the running images in your cluster (console integration).

This cluster resource is based on the [cluster-quay helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-quay) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                                      |
| ------------- | ------------------------------------------------------------ |
| **Name**      | **STARTX cluster Quay-sec**                                  |
| **tags**      | `startx` `cluster` `config` `admin` `quay` `security` `scan` |
| **provider**  | STARTX                                                       |
| **format**    | openshift template                                           |
| **content**   | 2 ArgoCD application                                         |
| **namespace** | startx-quaysecvuln                                           |
| **operator**  | container-security-operator@3.3.4                            |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate quaysec mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable quaysec mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate quaysec mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable quaysec mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info quaysec
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
