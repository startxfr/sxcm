# Metal2 profile

Deploy `metal2` profile

## Description

| Field          | Content                                                                                                                      |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | **metal2**                                                                                                                       |
| **Scope**      | shared                                                                                                                       |
| **cost**       | ***10,3 € / hour***                                                                                                                |
| **Datacenter** | _AWS Mumbai_                                                                                                                   |
| **Topology**   | **3** master + **3** worker                                                                                                          |
| **Master**     | **8**Vcpu, **16**Go RAM, **500**Go io1 2000iop                                                                                           |
| **Worker**     | **96**Vcpu, **192**Go RAM, **500**Go io1 4000iop                                                                                         |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` `logging` `acm` `quay` `ocs` `metering` `3scale` `kubevirt` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster metal2
```
