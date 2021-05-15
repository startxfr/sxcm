# Hecto profile

Deploy `hecto` profile based on the [sxcm hecto profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-hecto.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                                           |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | **hecto**                                                                                                                                         |
| **Scope**      | shared                                                                                                                                            |
| **cost**       | ***1,33 € / hour***                                                                                                                               |
| **Datacenter** | _AWS Paris_                                                                                                                                       |
| **Topology**   | **3** master + **6** worker                                                                                                                       |
| **Master**     | **4**Vcpu, **16**Go RAM, **120**Go io1  120iop                                                                                                    |
| **Worker**     | **4**Vcpu,  **16**Go RAM, **200**Go io1  200iop                                                                                                   |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` `logging` `acm` `quay` `ocs` `metering` `3scale` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster hecto
```
