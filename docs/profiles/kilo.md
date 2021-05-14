# kilo

Deploy `kilo` profile

## Description

| Field          | Content                                                                           |
| -------------- | --------------------------------------------------------------------------------- |
| **Name**       | kilo                                                                              |
| **Scope**      | shared                                                                            |
| **cost**       | 1,87 € / hour                                                                     |
| **Datacenter** | AWS Paris                                                                         |
| **Topology**   | 3 master + 3 worker                                                               |
| **Master**     | 4Vcpu, 16Go RAM, 120Go gp2  120iop                                                |
| **Worker**     | 8Vcpu,  32Go RAM, 120Go gp2  120iop                                               |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,quay |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster kilo
```
