# default

Deploy `default` profile

## Description

| Field          | Content                                          |
| -------------- | ------------------------------------------------ |
| **Name**       | default                                          |
| **Scope**      | shared                                           |
| **cost**       | 0,72 € / hour                                    |
| **Datacenter** | AWS Paris                                        |
| **Topology**   | 3 master + 3 worker                              |
| **Master**     | 4Vcpu, 16Go RAM, 120Go gp2  120iop               |
| **Worker**     | 2Vcpu,   8Go RAM, 120Go gp2  120iop              |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster default
```
