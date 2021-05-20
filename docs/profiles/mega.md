# Mega profile

Deploy `mega` profile based on the [sxcm mega profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-mega.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                                 |
| -------------- | ----------------------------------------------------------------------------------------------------------------------- |
| **Name**       | **mega**                                                                                                                |
| **Scope**      | shared                                                                                                                  |
| **cost**       | ***2,34 € / hour***                                                                                                     |
| **Datacenter** | _AWS Paris_                                                                                                             |
| **Topology**   | **3** master + **6** worker                                                                                             |
| **Master**     | **4**Vcpu, **16**Go RAM, **120**Go io1  120iop                                                                          |
| **Worker**     | **8**Vcpu,  **32**Go RAM, **200**Go io1  200iop                                                                         |
| **service**    | `argocd`  <br/> `pipeline`  <br/> `istio`  <br/> `quaysec`  <br/> `machine`  <br/> `workspaces`  <br/> `couchbase`  <br/> `sso`  <br/> `vault`  <br/> `knative`  <br/> `logging`  <br/> `acm`  <br/> `quay` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster mega
```
