# deci

Deploy `deci` profile

## Description

| Field          | Content                             |
| -------------- | ----------------------------------- |
| **Name**       | deci                                |
| **Scope**      | shared                              |
| **cost**       | 0,99 € / hour                       |
| **Datacenter** | AWS Mumbai                          |
| **Topology**   | 3 master-worker                     |
| **Master**     | 16Vcpu, 64Go RAM, 100Go io1  100iop |
| **Worker**     |                                     |
| **service**    | argocd,pipeline,istio,quaysec       |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster deci
```
