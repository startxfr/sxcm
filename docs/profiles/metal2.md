# metal

Deploy `metal2` profile

## Description

| Field          | Content                                                                                                                      |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| **Name**       | metal2                                                                                                                       |
| **Scope**      | shared                                                                                                                       |
| **cost**       | 10,3 € / hour                                                                                                                |
| **Datacenter** | AWS Mumbai                                                                                                                   |
| **Topology**   | 3 master + 3 worker                                                                                                          |
| **Master**     | 8Vcpu, 16Go RAM, 500Go io1 2000iop                                                                                           |
| **Worker**     | 96Vcpu, 192Go RAM, 500Go io1 4000iop                                                                                         |
| **service**    | argocd,pipeline,istio,quaysec,machine,workspaces,couchbase,sso,vault,Knative,logging,RHACM,quay,OCS,metering,3Scale,Kubevirt |

## Create a cluster

```bash
# Create this cluster to the cluster stack (based on this profile)
sxcm create mycluster metal2
```
