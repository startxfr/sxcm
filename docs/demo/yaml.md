# Demo YAML

The **yaml** [demo](../../5-demos) use the [yaml cluster resource](../../resources/yaml) to deploy multiple YAML cluster using the yaml operator with several example applications working with them.

This demo is based on the [cluster-yaml helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-yaml) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                                 |
| ---------------- | ------------------------------------------------------- |
| **Name**         | **STARTX demo yaml**                               |
| **tags**         | `startx` `demo` `iac` `yaml`                     |
| **provider**     | STARTX                                                  |
| **requirements** | [yaml cluster resource](../../resources/yaml) |
| **format**       | openshift template with argoCD application              |
| **content**      | 6 ArgoCD application                                    |
| **namespace**    | demo-yaml                                          |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate yaml mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable yaml mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate yaml mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable yaml mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info yaml
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
