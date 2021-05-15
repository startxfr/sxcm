# Operator KeyCloak

Deploy cluster resource enable **SSO** for KeyCloak deployment.

## Description

| Field         | Content                                   |
| ------------- | ----------------------------------------- |
| **Name**      | **STARTX cluster KeyCloak**               |
| **tags**      | `startx` `cluster` `config` `admin` `sso` |
| **provider**  | STARTX                                    |
| **format**    | openshift template + script               |
| **content**   | 3 ArgoCD application                      |
| **namespace** | startx-sso                                |
| **operator**  | rhsso-operator@7.4.6                      |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate sso mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable sso mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate sso mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable sso mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info sso
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
