# Service KNative

The **KNative** [cluster resource](../../4-cluster-resources) deploy the **knative operator** and a
**KNative instance** that provide serverless support in the cluster.

This cluster resource is based on the [cluster-knative helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-knative) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field         | Content                                       |
| ------------- | --------------------------------------------- |
| **Name**      | **STARTX cluster KNative**                    |
| **tags**      | `startx` `cluster` `config` `admin` `knative` |
| **provider**  | STARTX                                        |
| **format**    | openshift template                            |
| **content**   | 3 ArgoCD application                          |
| **namespace** | openshift-serverless                          |
| **operator**  | serverless-operator@1.12.0                    |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate knative mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable knative mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate knative mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable knative mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info knative
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
