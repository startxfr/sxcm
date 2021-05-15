# Pico profile

Deploy `pico` profile

## Description

| Field          | Content                          |
| -------------- | -------------------------------- |
| **Name**       | **pico**                             |
| **Scope**      | shared                           |
| **cost**       | ***0,15 € / hour***                    |
| **Datacenter** | _AWS Ohio_                         |
| **Topology**   | **3** master-worker                  |
| **Master**     | **4**Vcpu,  **8**Go RAM, **40**Go gp2  40iop |
| **Worker**     |                                  |
| **service**    | `argocd`                           |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster pico
```
