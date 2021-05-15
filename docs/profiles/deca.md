# Deca profile

Deploy `deca` profile based on the [sxcm deca profile](https://raw.githubusercontent.com/startxfr/sxcm/main/src/profiles/install-config-deca.yml) that is part of the [sxcm default profiles](../../3-profiles).

## Description

| Field          | Content                                                                                          |
| -------------- | ------------------------------------------------------------------------------------------------ |
| **Name**       | **deca**                                                                                         |
| **Scope**      | shared                                                                                           |
| **cost**       | ***0,88 € / hour***                                                                              |
| **Datacenter** | _AWS London_                                                                                     |
| **Topology**   | **3** master + **3** worker                                                                      |
| **Master**     | **4**Vcpu, **16**Go RAM, **120**Go gp2  120iop                                                   |
| **Worker**     | **4**Vcpu, **16**Go RAM, **120**Go gp2  120iop                                                   |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` `couchbase` `sso` `vault` `knative` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster deca
```
