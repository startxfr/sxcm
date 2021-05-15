# Kilo profile

Deploy `kilo` profile based on the [sxcm kilo profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-kilo.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                                 |
| -------------- | ------------------------------------------------------------------------------------------------------- |
| **Name**       | **kilo**                                                                                                |
| **Scope**      | shared                                                                                                  |
| **cost**       | ***1,87 € / hour***                                                                                     |
| **Datacenter** | _AWS Paris_                                                                                             |
| **Topology**   | **3** master + **3** worker                                                                             |
| **Master**     | **4**Vcpu, **16**Go RAM, **120**Go gp2  120iop                                                          |
| **Worker**     | **8**Vcpu,  **32**Go RAM, **120**Go gp2  120iop                                                         |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` `quay` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster kilo
```
