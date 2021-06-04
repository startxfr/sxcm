# Demo KNative

The **knative** [demo](../../5-demos) use the [knative cluster resource](../../resources/knative) to deploy multiple KNative cluster using the knative operator with several example applications working with them.

This demo is based on the [cluster-knative helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-knative) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                             |
| ---------------- | --------------------------------------------------- |
| **Name**         | **STARTX demo knative**                             |
| **tags**         | `startx` `demo` `serverless` `knative`              |
| **provider**     | STARTX                                              |
| **requirements** | [knative cluster resource](../../resources/knative) |
| **format**       | openshift template with argoCD application          |
| **content**      | 6 ArgoCD application                                |
| **namespace**    | demo-knative                                        |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate knative mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable knative mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate knative mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable knative mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info knative
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
