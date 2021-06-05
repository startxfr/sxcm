# Demo SXApi

The **sxapi** [demo](../../5-demos) use the [sxapi cluster resource](../../resources/sxapi) to deploy multiple SXApi cluster using the sxapi operator with several example applications working with them.

This demo is based on the [example-sxapi helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-sxapi) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                        |
| ---------------- | ---------------------------------------------- |
| **Name**         | **STARTX demo sxapi**                          |
| **tags**         | `startx` `demo` `api` `micro-services` `sxapi` |
| **provider**     | STARTX                                         |
| **requirements** | _none_                                         |
| **format**       | openshift template with argoCD application     |
| **content**      | 6 ArgoCD application                           |
| **namespace**    | demo-sxapi                                     |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate sxapi mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable sxapi mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate sxapi mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable sxapi mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info sxapi
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.