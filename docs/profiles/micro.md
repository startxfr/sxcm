# Micro profile

Deploy `micro` profile based on the [sxcm micro profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-micro.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                      |
| -------------- | -------------------------------------------- |
| **Name**       | **micro**                                    |
| **Scope**      | shared                                       |
| **cost**       | ***0,77 € / hour***                          |
| **Datacenter** | _AWS Oregon_                                 |
| **Topology**   | **3** master-worker                          |
| **Master**     | **8**Vcpu, **32**Go RAM, **50**Go gp2  50iop |
| **Worker**     |                                              |
| **service**    | `argocd` `pipeline`                          |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster micro
```
