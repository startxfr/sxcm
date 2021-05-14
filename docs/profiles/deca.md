# deca

Deploy `deca` profile

## Description

| Field          | Content                                                                      |
| -------------- | ---------------------------------------------------------------------------- |
| **Name**       | deca                                                                         |
| **Scope**      | shared                                                                       |
| **cost**       | 0,88 € / hour                                                                |
| **Datacenter** | AWS London                                                                   |
| **Topology**   | 3 master + 3 worker                                                          |
| **Master**     | 4Vcpu, 16Go RAM, 120Go gp2  120iop                                           |
| **Worker**     | 4Vcpu, 16Go RAM, 120Go gp2  120iop                                           |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster deca
```
