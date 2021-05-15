# Nano profile

Deploy `nano` profile based on the [sxcm nano profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-nano.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                      |
| -------------- | -------------------------------------------- |
| **Name**       | **nano**                                     |
| **Scope**      | shared                                       |
| **cost**       | ***0,29 € / hour***                          |
| **Datacenter** | _AWS Dublin_                                 |
| **Topology**   | **3** master-worker                          |
| **Master**     | **8**Vcpu, **16**Go RAM, **50**Go gp2  50iop |
| **Worker**     |                                              |
| **service**    | `argocd`                                     |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster nano
```
