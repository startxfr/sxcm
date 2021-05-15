# Deci profile

Deploy `deci` profile based on the [sxcm deci profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-deci.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                         |
| -------------- | ----------------------------------------------- |
| **Name**       | **deci**                                        |
| **Scope**      | shared                                          |
| **cost**       | ***0,99 € / hour***                             |
| **Datacenter** | _AWS Mumbai_                                    |
| **Topology**   | **3** master-worker                             |
| **Master**     | **16**Vcpu, **64**Go RAM, **100**Go io1  100iop |
| **Worker**     |                                                 |
| **service**    | `argocd` `pipeline` `istio` `quaysec`           |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster deci
```
