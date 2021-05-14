# mega

Deploy `mega` profile

## Description

| Field          | Content                                                                                         |
| -------------- | ----------------------------------------------------------------------------------------------- |
| **Name**       | mega                                                                                            |
| **Scope**      | shared                                                                                          |
| **cost**       | 2,34 € / hour                                                                                   |
| **Datacenter** | AWS Paris                                                                                       |
| **Topology**   | 3 master + 6 worker                                                                             |
| **Master**     | 4Vcpu, 16Go RAM, 120Go io1  120iop                                                              |
| **Worker**     | 8Vcpu,  32Go RAM, 200Go io1  200iop                                                             |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster mega
```
