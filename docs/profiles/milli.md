# milli

Deploy `milli` profile

## Description

| Field          | Content                          |
| -------------- | -------------------------------- |
| **Name**       | milli                            |
| **Scope**      | shared                           |
| **cost**       | 1,02 € / hour                    |
| **Datacenter** | AWS Paris                        |
| **Topology**   | 3 master-worker                  |
| **Master**     | 8Vcpu, 32Go RAM, 50Go io1  50iop |
| **Worker**     |                                  |
| **service**    | argocd,pipeline                  |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster milli
```
