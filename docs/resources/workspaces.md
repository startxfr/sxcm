# Operator CodeReady Workspaces

Deploy cluster resource enable **CodeReady Workspaces** for CodeReady Workspaces support.

## Description

| Field         | Content                                                      |
| ------------- | ------------------------------------------------------------ |
| **Name**      | **STARTX cluster CodeReady Workspaces**                      |
| **tags**      | `startx` `cluster` `config` `admin` `workspaces` `codeready` |
| **provider**  | STARTX                                                       |
| **format**    | openshift template                                           |
| **content**   | 3 ArgoCD application                                         |
| **namespace** | openshift-workspaces                                         |
| **operator**  | codeready-workspaces@2.5.1                                   |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate workspaces mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable workspaces mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate workspaces mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable workspaces mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info workspaces
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
