# hecto

Deploy `hecto` profile

## Description

| Field          | Content                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Name**       | hecto                                                                                                               |
| **Scope**      | shared                                                                                                              |
| **cost**       | 1,33 € / hour                                                                                                       |
| **Datacenter** | AWS Paris                                                                                                           |
| **Topology**   | 3 master + 6 worker                                                                                                 |
| **Master**     | 4Vcpu, 16Go RAM, 120Go io1  120iop                                                                                  |
| **Worker**     | 4Vcpu,  16Go RAM, 200Go io1  200iop                                                                                 |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay,OCS,metering,3Scale |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster hecto
```
