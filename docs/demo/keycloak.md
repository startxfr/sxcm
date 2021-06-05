# Demo Keycloak

The **keycloak** [demo](../../5-demos) use the [keycloak cluster resource](../../resources/keycloak) to deploy multiple Keycloak cluster using the keycloak operator with several example applications working with them.

This demo is based on the [cluster-keycloak helm chart](https://helm-repository.readthedocs.io/en/latest/charts/cluster-keycloak) defined in [startx helm-repository](https://helm-repository.readthedocs.io).

## Description

| Field            | Content                                     |
| ---------------- | ------------------------------------------- |
| **Name**         | **STARTX demo keycloak**                    |
| **tags**         | `startx` `demo` `sso` `security` `keycloak` |
| **provider**     | STARTX                                      |
| **requirements** | _none_                                      |
| **format**       | openshift template with argoCD application  |
| **content**      | 6 ArgoCD application                        |
| **namespace**    | demo-keycloak                               |

## Add to a cluster

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate keycloak mycluster
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable keycloak mycluster
```

## Remove from a cluster

```bash
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate keycloak mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable keycloak mycluster
```

## Get demo detail

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info keycloak
```

## More on demo

You should read the [demo management](../../5-demos) documentation section to learn the command
meaning and how to addapt your own demo for a personalized cluster configuration.
