# Kubevirt

Deploy cluster resource enable **Kubevirt** for virtualisation support.

## Description

| Field         | Content                                        |
| ------------- | ---------------------------------------------- |
| **Name**      | **STARTX cluster KubeVirt**                    |
| **tags**      | `startx` `cluster` `config` `admin` `kubevirt` |
| **provider**  | STARTX                                         |
| **format**    | openshift template                             |
| **content**   | 3 ArgoCD application                           |
| **namespace** | openshift-cnv                                  |
| **operator**  | kubevirt-hyperconverged-operator@2.5.4         |

## Add to a cluster

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate kubevirt mycluster
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable kubevirt mycluster
```

## Remove from a cluster

```bash
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate kubevirt mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable kubevirt mycluster
```

## Get cluster resource detail

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info kubevirt
```

## More on resource

You should read the [cluster resource management](../../4-cluster-resources) documentation section to learn the command
meaning and how to create your own cluster resource service to deliver personalized cluster configuration.
