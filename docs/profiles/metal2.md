# Metal2 profile

Deploy `metal2` profile based on the [sxcm metal2 profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-metal2.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                                                      |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Name**       | **metal2**                                                                                                                                                   |
| **Scope**      | shared                                                                                                                                                       |
| **cost**       | ***10,3 € / hour***                                                                                                                                          |
| **Datacenter** | _AWS Mumbai_                                                                                                                                                 |
| **Topology**   | **3** master + **3** worker                                                                                                                                  |
| **Master**     | **8**Vcpu, **16**Go RAM, **500**Go io1 2000iop                                                                                                               |
| **Worker**     | **96**Vcpu, **192**Go RAM, **500**Go io1 4000iop                                                                                                             |
| **service**    | `argocd`  <br/> `pipeline`  <br/> `istio`  <br/> `quaysec`  <br/> `machine`  <br/> `workspaces`  <br/> `couchbase`  <br/> `sso`  <br/> `vault`  <br/> `knative`  <br/> `logging`  <br/> `acm`  <br/> `quay`  <br/> `ocs`  <br/> `metering`  <br/> `3scale`  <br/> `kubevirt` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster metal2
```
