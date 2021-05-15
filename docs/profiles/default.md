# Default profile

Deploy `default` profile

## Description

| Field          | Content                                          |
| -------------- | ------------------------------------------------ |
| **Name**       | **default**                                          |
| **Scope**      | shared                                           |
| **cost**       | ***0,72 € / hour***                                    |
| **Datacenter** | _AWS Paris_                                        |
| **Topology**   | **3** master + **3** worker                              |
| **Master**     | **4**Vcpu, **16**Go RAM, **120**Go gp2  120iop               |
| **Worker**     | **2**Vcpu,   **8**Go RAM, **120**Go gp2  120iop              |
| **service**    | `argocd` `pipeline` `istio` `quaysec` `machine` `workspaces` |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster default
```
