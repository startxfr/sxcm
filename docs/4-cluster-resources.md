# Cluster resources

A cluster resource is a group of **service** (mostly operator-based) or **configuration** to apply to deployed clusters. With exception of the argocd-x cluster resource, all other cluster resources are based on **openshift template** deploying **argocd application** or
**bash script** executing `oc` or `kubectl` commands.

| Profile                                           | Kind    | Purpose                                                |
| ------------------------------------------------- | ------- | ------------------------------------------------------ |
| **[argocd-project](../resources/argocd-project)** | Core    | Continious delivery project and operator               |
| **[argocd-deploy](../resources/argocd-deploy)**   | Core    | Continious delivery instance                           |
| **[3scale](../resources/3scale)**                 | Service | API management support                                 |
| **[acm](../resources/acm)**                       | Service | multi-cluster management support                       |
| **[auth](../resources/auth)**                     | Config  | Configure user and group authentification              |
| **[console](../resources/console)**               | Config  | Configure interface tunning                            |
| **[infra](../resources/infra)**                   | Config  | Various cluster-internal configurations                |
| **[machine](../resources/machine)**               | Config  | Various cluster-external configurations                |
| **[rbac](../resources/rbac)**                     | Config  | RBAC configuration related to the auth group and users |
| **[storage](../resources/storage)**               | Config  | Default dynamic-provisionned storage                   |
| **[couchbase](../resources/couchbase)**           | Service | Manage NoSQL database support                          |
| **[istio](../resources/istio)**                   | Service | Manage service-mesh support                            |
| **[knative](../resources/knative)**               | Service | Manage serverless support                              |
| **[kubevirt](../resources/kubevirt)**             | Service | Manage virtualisation support                          |
| **[logging](../resources/logging)**               | Service | Manage aggregating logging stack                       |
| **[metering](../resources/metering)**             | Service | Manage chargeback reports                              |
| **[ocs](../resources/ocs)**                       | Service | Manage converged storage service                       |
| **[pipeline](../resources/pipeline)**             | Service | Manage pipeline support                                |
| **[quay](../resources/quay)**                     | Service | Manage Quay enterprise registry service                |
| **[quaysec](../resources/quaysec)**               | Service | Scan on the running images in your cluster             |
| **[sso](../resources/sso)**                       | Service | Manage SSO backend                                     |
| **[vault](../resources/vault)**                   | Service | Manage Hashicorp Vault backend                         |
| **[workspaces](../resources/workspaces)**         | Service | Manage Eclipse Che IDE Environment                     |

## Read commands

This group of command are **readonly** command available for micro and macro information of the cluster
resources installed into your environment (**shared or personnal**)

### List availables

List available cluster configurations

| Param    | mandatory | Content                         |
| -------- | --------- | ------------------------------- |
| **help** | no        | Get the manpage of this command |

```bash
# List the cluster resource description found locally (both shared and personal)
sxcm resources
# Alias of the previous command
sxcm resource list
```

### Read information

Get **information** about a **cluster resource**.

Could be a resource stored into the sxcm cluster resource stack, or the personal cluster resource stack.

| Param          | mandatory | Content                            |
| -------------- | --------- | ---------------------------------- |
| **myresource** | **yes**   | The name of the resource to search |
| **help**       | no        | Get the manpage of this command    |

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info myresource
```

## Write commands

This group of command have **impact** on the **personal** cluster resource **stack** and resource stored into this
directory. Shared cluster resource are not manage using this group of command.

### Create

Add a **new cluster resource** to the **local** cluster resource **stack**.

The **file** could be **local**, or **remote** and should be a single yaml file. This file will be copied into the
**personal** cluster resource **stack** with a name coresponding to the choosed one.

Fail if name already exist or if file could not be found.

| Param          | mandatory | Content                                                                        |
| -------------- | --------- | ------------------------------------------------------------------------------ |
| **myresource** | **yes**   | The name of the resource to create                                             |
| **filepath**   | **yes**   | The path to the cluster resource file to load. Could be a local or remote file |
| **help**       | no        | Get the manpage of this command                                                |

```bash
# Create a resource named myresource, with content from the local file myresource.yml, in your personal resource stack
sxcm resource create myresource ./myresource.yml
# Create a resource named myresource, with content from the remote file http://example.com/myresource.yml, in your personal resource stack
sxcm resource create myresource http://example.com/myresource.yml
```

### Edit

**Edit** a cluster resource and **commit change** to the remote **gitops repository**.

Be carefull when editing a deployed cluster as several fields (network, labels, sshkeys, instance type)
are readonly. Use this command prior to deploying the cluster.

| Param          | mandatory | Content                          |
| -------------- | --------- | -------------------------------- |
| **myresource** | **yes**   | The name of the resource to edit |
| **help**       | no        | Get the manpage of this command  |

```bash
# Edit the myresource, and record change into the gitops repository
sxcm resource edit myresource
```

### Delete

**Remove** a cluster resource from the **local** cluster resource **stack**. If cluster is deployed, you should destroy it first.

| Param          | mandatory | Content                            |
| -------------- | --------- | ---------------------------------- |
| **myresource** | **yes**   | The name of the resource to delete |
| **help**       | no        | Get the manpage of this command    |

```bash
# Remove the myresource from the personal cluster resource stack
sxcm resource delete myresource
```

## Cluster interaction commands

This group of command have impat on the cluster instances and resource stored into it.
According to your cluster state (deployed or not), some command may be more usefull.

### Associate / Dissociate

**Add or remove** a **cluster resource** into a cluster resource list and **push it** to gitops repository. If no cluster name is
given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is not deployed**. If your cluster is deployed, no change will
happen into the running cluster, change will be performed when

- deploy the defined cluster `sxcm deploy mycluster`
- editing a change to the cluster using `sxcm edit mycluster`
- enable the cluster resource into the cluster using `sxcm resource enable myresource mycluster`

| Param          | mandatory | Content                                                                         |
| -------------- | --------- | ------------------------------------------------------------------------------- |
| **myresource** | **yes**   | The name of the resource to associate or dissociate                             |
| **mycluster**  | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**       | no        | Get the manpage of this command                                                 |

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate myresource mycluster
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate myresource mycluster
```

### Enable / Disable

**Add or remove** a **cluster resource** into a cluster resource list, **apply it** into a deployed cluster and **push it** to gitops repository.
If no cluster name is given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is deployed**. If your cluster is not deployed, change will be performed when
you will deploy the defined cluster using `sxcm deploy mycluster` command.

| Param          | mandatory | Content                                                                         |
| -------------- | --------- | ------------------------------------------------------------------------------- |
| **myresource** | **yes**   | The name of the resource to enable or disable                                   |
| **mycluster**  | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**       | no        | Get the manpage of this command                                                 |

```bash
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable myresource mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable myresource mycluster
```
