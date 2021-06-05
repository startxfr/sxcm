# Demo Jenkins

The **jenkins** [demo](../../5-demos) use the [jenkins cluster resource](../../resources/jenkins) to deploy multiple Jenkins cluster using the jenkins operator with several example applications working with them.

This demo is based on the [example-catalog helm chart](https://helm-repository.readthedocs.io/en/latest/charts/example-catalog) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                         |
| ---------------- | ----------------------------------------------- |
| **Name**         | **STARTX demo jenkins**                         |
| **tags**         | `startx` `demo` `build` `jenkins`  `automation` |
| **provider**     | STARTX                                          |
| **requirements** | _none_                                          |
| **format**       | openshift template with argoCD application      |
| **content**      | 6 ArgoCD application                            |
| **namespace**    | demo-jenkins                                    |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate jenkins mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable jenkins mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate jenkins mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable jenkins mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info jenkins
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
