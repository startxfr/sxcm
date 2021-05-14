# metal

Deploy `metal` profile

## Description

| Field          | Content                                                                                                                      |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | metal                                                                                                                        |
| **Scope**      | shared                                                                                                                       |
| **cost**       | 13,1 € / hour                                                                                                                |
| **Datacenter** | AWS Paris                                                                                                                    |
| **Topology**   | 3 master + 3 worker                                                                                                          |
| **Master**     | 8Vcpu, 16Go RAM, 500Go io1 2000iop                                                                                           |
| **Worker**     | 96Vcpu, 192Go RAM, 500Go io1 4000iop                                                                                         |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay,OCS,metering,3Scale,Kubevirt |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster metal
```
