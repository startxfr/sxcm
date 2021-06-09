# Demo Helm

The **helm** [demo](../../5-demos) use the [helm cluster resource](../../resources/helm) to deploy multiple Helm cluster using the helm operator with several example applications working with them.

This demo is based on the [example-pod](https://helm-repository.readthedocs.io/en/latest/charts/example-pod),[example-deployment](https://helm-repository.readthedocs.io/en/latest/charts/example-deployment) and [example-sxapi](https://helm-repository.readthedocs.io/en/latest/charts/example-sxapi) helm chart defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo helm**                       |
| **tags**         | `startx` `demo` `k8s` `helm`               |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | **6** Applications + **1** AppProject      |
| **namespace**    | demo-helm                                  |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate helm mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable helm mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate helm mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable helm mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info helm
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
