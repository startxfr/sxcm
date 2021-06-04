# Demo Vertical Pod Autoscaler

The **vpa** [demo](../../5-demos) use the [vpa cluster resource](../../resources/vpa) to deploy multiple Vertical Pod Autoscaler cluster using the vpa operator with several example applications working with them.

This demo is based on the [cluster-vpa helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-vpa) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                     |
| ---------------- | ------------------------------------------- |
| **Name**         | **STARTX demo vpa**                         |
| **tags**         | `startx` `demo` `ha` `k8s`  `vpa`           |
| **provider**     | STARTX                                      |
| **requirements** | [vpa cluster resource](../../resources/vpa) |
| **format**       | openshift template with argoCD application  |
| **content**      | 6 ArgoCD application                        |
| **namespace**    | demo-vpa                                    |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate vpa mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable vpa mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate vpa mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable vpa mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info vpa
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
