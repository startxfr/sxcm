# tera

Deploy `tera` profile

## Description

| Field          | Content                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Name**       | tera                                                                                                                |
| **Scope**      | shared                                                                                                              |
| **cost**       | 3,54 € / hour                                                                                                       |
| **Datacenter** | AWS Ohio                                                                                                            |
| **Topology**   | 3 master = 6 worker                                                                                                 |
| **Master**     | 8Vcpu, 16Go RAM, 200Go io1  1000iop                                                                                 |
| **Worker**     | 8Vcpu,  64Go RAM, 200Go io1  1000iop                                                                                |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay,OCS,metering,3Scale |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster tera
```
