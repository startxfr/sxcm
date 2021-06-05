# Demo Tekton

The **tekton** [demo](../../5-demos) use the [tekton cluster resource](../../resources/tekton) to deploy multiple Tekton cluster using the tekton operator with several example applications working with them.

This demo is based on the [cluster-tekton helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-tekton) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                             |
| ---------------- | --------------------------------------------------- |
| **Name**         | **STARTX demo tekton**                              |
| **tags**         | `startx` `demo` `pipeline` `build` `tekton`         |
| **provider**     | STARTX                                              |
| **requirements** | [pipeline cluster resource](../../resources/tekton) |
| **format**       | openshift template with argoCD application          |
| **content**      | 6 ArgoCD application                                |
| **namespace**    | demo-tekton                                         |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate tekton mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable tekton mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate tekton mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable tekton mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info tekton
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
