# Operator Pipeline

Deploy cluster resource enable **Pipeline** for pipeline support.

## Description

| Field         | Content                                               |
| ------------- | ----------------------------------------------------- |
| **Name**      | **STARTX cluster Pipeline**                           |
| **tags**      | `startx` `cluster` `config` `admin` `cicd` `pipeline` |
| **provider**  | STARTX                                                |
| **format**    | openshift template                                    |
| **content**   | 1 ArgoCD application                                  |
| **namespace** | openshift-pipelines                                   |
| **operator**  | redhat-openshift-pipelines-operator@1.2.3             |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate pipeline mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable pipeline mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate pipeline mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable pipeline mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info pipeline
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
