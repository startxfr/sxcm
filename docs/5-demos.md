# Demos

A demo is a group of **argocd application** deploying a group of resources into a **demo project** created in the targeted cluster.

**demo** are stored into the `/usr/share/sxcm/demos` directory and copied into a cluster gitops repository when enabled into a cluster.

| Demo name                                    | Kind            | Purpose                                                                    |
| -------------------------------------------- | --------------- | -------------------------------------------------------------------------- |
| **[3scale](../demo/3scale)**                 | **API**         | Demo on how to use 3Scale API Management                                   |
| **[couchbase](../demo/couchbase)**           | **Application** | Demo on how to deploy and use NoSQL database in a resilient way            |
| **[affinity](../demo/affinity)**             | **Run**         | Demo on how to use Afinity pod placement                                   |
| **[ansible](../demo/ansible)**               | **Automation**  | Demo on how to use Ansible AWX infrastructure                              |
| **[argocd](../demo/argocd)**                 | **Automation**  | Demo on how to use ArgoCD Gitops platform for application lifecycle        |
| **[compliance](../demo/compliance)**         | **Security**    | Demo on how to use the compliance operator                                 |
| **[helm](../demo/helm)**                     | **Application** | Demo on how to use Helm to deploy application                              |
| **[hpa](../demo/hpa)**                       | **Infra**       | Demo on how to use the Horizontal Pod Autoscaler                           |
| **[hugo](../demo/hugo)**                     | **Application** | Demo on how to use HUGO to build static website container                  |
| **[imagestreams](../demo/imagestreams)**     | **Infra**       | Demo on how to load imagestreams into the service catalog                  |
| **[istio](../demo/istio)**                   | **Run**         | Demo on how to use service mesh                                            |
| **[jenkins](../demo/jenkins)**               | **Build**       | Demo on how to deploy and use a jenkins server                             |
| **[keycloak](../demo/keycloak)**             | **Security**    | Demo deploying an SSO server                                               |
| **[knative](../demo/knative)**               | **App**         | Demo on to deploy an application using a serverless architecture           |
| **[kubevirt](../demo/kubevirt)**             | **Run**         | Demo running virtual machine into a Kubernetes cluster                     |
| **[kustomize](../demo/kustomize)**           | **Automation**  | Demo on how to deploy application using kustomize files                    |
| **[nexus](../demo/nexus)**                   | **Build**       | Demo on how to deploy and use a nexus server                               |
| **[ocs](../demo/ocs)**                       | **Infra**       | Demo on how to deploy and use an ODF storage backend                       |
| **[ptp](../demo/ptp)**                       | **Infra**       | Demo on how to enable Precision Time Protocol                              |
| **[s2i](../demo/s2i)**                       | **Build**       | Demo on how to build application container using source to image           |
| **[storage](../demo/storage)**               | **Infra**       | Demo with various deployment using block, FS and object storage            |
| **[sxapi](../demo/sxapi)**                   | **API**         | Demo on how to deploy various micro-services                               |
| **[taintoleration](../demo/taintoleration)** | **Run**         | Demo on how to deploy a application using tain and toleration placement    |
| **[tekton](../demo/tekton)**                 | **Build**       | Demo on how to build using tekton task and pipeline                        |
| **[vault](../demo/vault)**                   | **Security**    | Demo on how a application can consume secret stored into a vault           |
| **[vpa](../demo/vpa)**                       | **Run**         | Demo on how to deploy an application with vertical autoscalling capacities |
| **[workspace](../demo/workspace)**           | **Build**       | Demo on how to deploy an Eclipse IDE environment                           |
| **[yaml](../demo/yaml)**                     | **Run**         | Demo on how to describe resource with the yaml syntax                      |

## Read commands

This group of command are **readonly** command available for micro and macro information of the cluster
demos installed into your local environment

### List availables demos

List available cluster configurations

| Param    | mandatory | Content                         |
| -------- | --------- | ------------------------------- |
| **help** | no        | Get the manpage of this command |

```bash
# List the demo in the shared directory
sxcm demo stack
```

### Read information

Get **information** about a **demo**.

Should be a demo stored into the sxcm demo stack. See `sxcm demo stack` to get a list of available demos.

| Param      | mandatory | Content                         |
| ---------- | --------- | ------------------------------- |
| **mydemo** | **yes**   | The name of the demo to search  |
| **help**   | no        | Get the manpage of this command |

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info mydemo
```

## Write commands

This group of command have **impact** on the demo loaded into the **cluster demo stack**.

### Edit

**Edit** a demo and **commit change** to the remote **gitops repository**. Change are not executed into the cluster and you must enable the demo with `sxcm demo enable mydemo` to apply change to the cluster.

| Param         | mandatory | Content                                                                         |
| ------------- | --------- | ------------------------------------------------------------------------------- |
| **mydemo**    | **yes**   | The name of the demo to edit                                                    |
| **mycluster** | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**      | no        | Get the manpage of this command                                                 |

```bash
# Edit the mydemo of the active cluster and record change into the gitops repository
sxcm demo edit mydemo
# Edit the mydemo of the mycluster cluster and record change into the gitops repository
sxcm demo edit mydemo mycluster
```

## Cluster interaction commands

This group of command have impat on the cluster instances and demo stored into it.
According to your cluster state (deployed or not), some command may be more usefull.

### Associate / Dissociate

**Add or remove** a **demo** into a cluster demo stack and **push it** to gitops repository. If no cluster name is
given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is not deployed**. If your cluster is deployed, no change will
happen into the running cluster, change will be performed when

- deploy the defined cluster `sxcm deploy mycluster`
- enable the demo into the cluster using `sxcm demo enable mydemo mycluster`

| Param         | mandatory | Content                                                                         |
| ------------- | --------- | ------------------------------------------------------------------------------- |
| **mydemo**    | **yes**   | The name of the demo to associate or dissociate                                 |
| **mycluster** | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**      | no        | Get the manpage of this command                                                 |

```bash
# Associate this demo to the cluster mycluster (runable demo)
sxcm demo associate mydemo mycluster
# Dissociate this demo from the cluster mycluster (removable demo)
sxcm demo dissociate mydemo mycluster
```

### Enable / Disable

**Add or remove** a **demo** into a cluster demo stack, **apply it** into a deployed cluster and **push it** to gitops repository.
If no cluster name is given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is deployed**. If your cluster is not deployed, change will be performed when
you will deploy the defined cluster using `sxcm deploy mycluster` command.

| Param         | mandatory | Content                                                                         |
| ------------- | --------- | ------------------------------------------------------------------------------- |
| **mydemo**    | **yes**   | The name of the demo to enable or disable                                       |
| **mycluster** | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**      | no        | Get the manpage of this command                                                 |

```bash
# Enable this demo to the cluster mycluster (running demo)
sxcm demo enable mydemo mycluster
# Disable this demo from the cluster mycluster (removed demo)
sxcm demo disable mydemo mycluster
```
