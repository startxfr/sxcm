# Demo Horizontal Pod Autoscaler

The **hpa** [demo](../../5-demos) use the [hpa cluster resource](../../resources/hpa) to deploy multiple Horizontal Pod Autoscaler cluster using the hpa operator with several example applications working with them.

This demo is based on the [example-pod helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-pod) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo hpa**                        |
| **tags**         | `startx` `demo` `k8s` `ha` `hpa`           |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | 6 ArgoCD application                       |
| **namespace**    | demo-hpa                                   |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate hpa mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable hpa mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate hpa mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable hpa mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info hpa
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
