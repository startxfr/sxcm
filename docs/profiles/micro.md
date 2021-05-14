# micro

Deploy `micro` profile

## Description

| Field          | Content                          |
| -------------- | -------------------------------- |
| **Name**       | micro                            |
| **Scope**      | shared                           |
| **cost**       | 0,77 € / hour                    |
| **Datacenter** | AWS Oregon                       |
| **Topology**   | 3 master-worker                  |
| **Master**     | 8Vcpu, 32Go RAM, 50Go gp2  50iop |
| **Worker**     |                                  |
| **service**    | argocd,pipeline                  |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster micro
```
