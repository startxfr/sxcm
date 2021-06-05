# Demo Ansible

The **ansible** [demo](../../5-demos) use the [ansible cluster resource](../../resources/ansible) to deploy multiple Ansible cluster using the ansible operator with several example applications working with them.

This demo is based on the [cluster-ansible helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-ansible) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                    |
| ---------------- | ------------------------------------------ |
| **Name**         | **STARTX demo ansible**                    |
| **tags**         | `startx` `demo` `automation` `ansible`     |
| **provider**     | STARTX                                     |
| **requirements** | _none_                                     |
| **format**       | openshift template with argoCD application |
| **content**      | 6 ArgoCD application                       |
| **namespace**    | demo-ansible                               |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate ansible mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable ansible mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate ansible mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable ansible mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info ansible
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
