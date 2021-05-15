# Micro profile

Deploy `micro` profile

## Description

| Field          | Content                          |
| -------------- | -------------------------------- |
| **Name**       | **micro**                            |
| **Scope**      | shared                           |
| **cost**       | ***0,77 € / hour***                    |
| **Datacenter** | _AWS Oregon_                       |
| **Topology**   | **3** master-worker                  |
| **Master**     | **8**Vcpu, **32**Go RAM, **50**Go gp2  50iop |
| **Worker**     |                                  |
| **service**    | `argocd` `pipeline`                  |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster micro
```
