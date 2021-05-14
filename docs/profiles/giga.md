# giga

Deploy `giga` profile

## Description

| Field          | Content                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Name**       | giga                                                                                                                |
| **Scope**      | shared                                                                                                              |
| **cost**       | 2,67 € / hour                                                                                                       |
| **Datacenter** | AWS London                                                                                                          |
| **Topology**   | 3 master + 3 worker                                                                                                 |
| **Master**     | 8Vcpu, 16Go RAM, 200Go gp2  200iop                                                                                  |
| **Worker**     | 8Vcpu,  64Go RAM, 200Go gp2  200iop                                                                                 |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay,OCS,metering,3Scale |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster giga
```
