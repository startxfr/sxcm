# nano

Deploy `nano` profile

## Description

| Field          | Content                          |
| -------------- | -------------------------------- |
| **Name**       | nano                             |
| **Scope**      | shared                           |
| **cost**       | 0,29 € / hour                    |
| **Datacenter** | AWS Dublin                       |
| **Topology**   | 3 master-worker                  |
| **Master**     | 8Vcpu, 16Go RAM, 50Go gp2  50iop |
| **Worker**     |                                  |
| **service**    | argocd                           |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster nano
```
