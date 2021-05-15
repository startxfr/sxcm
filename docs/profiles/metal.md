# Metal profile

Deploy `metal` profile based on the [sxcm metal profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-metal.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                                                      |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Name**       | **metal**                                                                                                                                                    |
| **Scope**      | shared                                                                                                                                                       |
| **cost**       | ***13,1 € / hour***                                                                                                                                          |
| **Datacenter** | _AWS Paris_                                                                                                                                                  |
| **Topology**   | **3** master + **3** worker                                                                                                                                  |
| **Master**     | **8**Vcpu, **16**Go RAM, **500**Go io1 2000iop                                                                                                               |
| **Worker**     | **96**Vcpu, **192**Go RAM, **500**Go io1 4000iop                                                                                                             |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` `logging` `acm` `quay` `ocs` `metering` `3scale` `kubevirt` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster metal
```
