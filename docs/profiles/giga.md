# Giga profile

Deploy `giga` profile based on the [sxcm giga profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-giga.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                                           |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | **giga**                                                                                                                                          |
| **Scope**      | shared                                                                                                                                            |
| **cost**       | ***2,67 € / hour***                                                                                                                               |
| **Datacenter** | _AWS London_                                                                                                                                      |
| **Topology**   | **3** master + **3** worker                                                                                                                       |
| **Master**     | **8**Vcpu, **16**Go RAM, **200**Go gp2  200iop                                                                                                    |
| **Worker**     | **8**Vcpu,  **64**Go RAM, **200**Go gp2  200iop                                                                                                   |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` `logging` `acm` `quay` `ocs` `metering` `3scale` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster giga
```
