# Demo Images-streams

The **imagestreams** [demo](../../5-demos) use the [imagestreams cluster resource](../../resources/imagestreams) to deploy multiple Images-streams cluster using the imagestreams operator with several example applications working with them.

This demo is based on the [example-imagestreams helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-imagestreams) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo imagestreams**               |
| **tags**         | `startx` `demo` `k8s` `imagestreams`       |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | 6 ArgoCD application                       |
| **namespace**    | demo-imagestreams                          |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate imagestreams mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable imagestreams mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate imagestreams mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable imagestreams mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info imagestreams
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
