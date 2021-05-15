# Centi profile

Deploy `centi` profile based on the [sxcm centi profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-centi.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                       |
| -------------- | --------------------------------------------- |
| **Name**       | **centi**                                     |
| **Scope**      | shared                                        |
| **cost**       | ***1,82 € / hour***                           |
| **Datacenter** | _AWS London_                                  |
| **Topology**   | **3** master-worker                           |
| **Master**     | **16**Vcpu, **64**Go RAM, **75**Go gp2  75iop |
| **Worker**     |                                               |
| **service**    | `argocd` `pipeline` `istio` `quaysec`         |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster centi
```
