# Tera profile

Deploy `tera` profile based on the [sxcm tera profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-tera.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                                           |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | **tera**                                                                                                                                          |
| **Scope**      | shared                                                                                                                                            |
| **cost**       | ***3,54 € / hour***                                                                                                                               |
| **Datacenter** | _AWS Ohio_                                                                                                                                        |
| **Topology**   | **3** master + **6** worker                                                                                                                       |
| **Master**     | **8**Vcpu, **16**Go RAM, **200**Go io1  1000iop                                                                                                   |
| **Worker**     | **8**Vcpu,  **64**Go RAM, **200**Go io1  1000iop                                                                                                  |
| **service**    | `argocd`  <br/> `pipeline`  <br/> `istio`  <br/> `quaysec`  <br/> `machine`  <br/> `workspaces`  <br/> `couchbase`  <br/> `sso`  <br/> `vault`  <br/> `knative`  <br/> `logging`  <br/> `acm`  <br/> `quay`  <br/> `ocs`  <br/> `metering`  <br/> `3scale` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster tera
```
