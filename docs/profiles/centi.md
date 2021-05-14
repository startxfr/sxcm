# centi

Deploy `centi` profile

## Description

| Field          | Content                           |
| -------------- | --------------------------------- |
| **Name**       | centi                             |
| **Scope**      | shared                            |
| **cost**       | 1,82 € / hour                     |
| **Datacenter** | AWS London                        |
| **Topology**   | 3 master-worker                   |
| **Master**     | 16Vcpu, 64Go RAM, 75Go gp2  75iop |
| **Worker**     |                                   |
| **service**    | argocd,pipeline,istio,quaysec     |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster centi
```
