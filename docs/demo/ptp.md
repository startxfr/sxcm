# Demo PTP

The **ptp** [demo](../../5-demos) use the [ptp cluster resource](../../resources/ptp) to deploy multiple PTP cluster using the ptp operator with several example applications working with them.

This demo is based on the [cluster-ptp helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-ptp) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                     |
| ---------------- | ------------------------------------------- |
| **Name**         | **STARTX demo ptp**                         |
| **tags**         | `startx` `demo` `infra` `ptp`               |
| **provider**     | STARTX                                      |
| **requirements** | [ptp cluster resource](../../resources/ptp) |
| **format**       | openshift template with argoCD application  |
| **content**      | 6 ArgoCD application                        |
| **namespace**    | demo-ptp                                    |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate ptp mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable ptp mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate ptp mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable ptp mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info ptp
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
