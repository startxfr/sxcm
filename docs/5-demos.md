# Demos

A demo is a group of **argocd application** deploying a group of resources into a **demo project** into a cluster.

**demo** are stored into the `/usr/share/sxcm/demos` directory and copied into a cluster gitops repository when enabled into a cluster. 

| Profile                                       | Kind        | Purpose                                                |
| --------------------------------------------- | ----------- | ------------------------------------------------------ |
| **[argocd-project](../demos/argocd-project)** | **Core**    | Continious delivery project and operator               |
| **[argocd-deploy](../demos/argocd-deploy)**   | **Core**    | Continious delivery instance                           |
| **[auth](../demos/auth)**                     | **Config**  | Configure user and group authentification              |
| **[console](../demos/console)**               | **Config**  | Configure interface tunning                            |
| **[infra](../demos/infra)**                   | **Config**  | Various cluster-internal configurations                |
| **[machine](../demos/machine)**               | **Config**  | Various cluster-external configurations                |
| **[rbac](../demos/rbac)**                     | **Config**  | RBAC configuration related to the auth group and users |
| **[storage](../demos/storage)**               | **Config**  | Default dynamic-provisionned storage                   |
| **[3scale](../demos/3scale)**                 | **Service** | API management support                                 |
| **[acm](../demos/acm)**                       | **Service** | multi-cluster management support                       |
| **[couchbase](../demos/couchbase)**           | **Service** | Manage NoSQL database support                          |
| **[istio](../demos/istio)**                   | **Service** | Manage service-mesh support                            |
| **[knative](../demos/knative)**               | **Service** | Manage serverless support                              |
| **[kubevirt](../demos/kubevirt)**             | **Service** | Manage virtualisation support                          |
| **[logging](../demos/logging)**               | **Service** | Manage aggregating logging stack                       |
| **[metering](../demos/metering)**             | **Service** | Manage chargeback reports                              |
| **[ocs](../demos/ocs)**                       | **Service** | Manage converged storage service                       |
| **[pipeline](../demos/pipeline)**             | **Service** | Manage pipeline support                                |
| **[quay](../demos/quay)**                     | **Service** | Manage Quay enterprise registry service                |
| **[quaysec](../demos/quaysec)**               | **Service** | Scan on the running images in your cluster             |
| **[sso](../demos/sso)**                       | **Service** | Manage SSO backend                                     |
| **[vault](../demos/vault)**                   | **Service** | Manage Hashicorp Vault backend                         |
| **[workspaces](../demos/workspaces)**         | **Service** | Manage Eclipse Che IDE Environment                     |

## Read commands

This group of command are **readonly** command available for micro and macro information of the cluster
demos installed into your environment (**shared or personnal**)

### List availables

List available cluster configurations

| Param    | mandatory | Content                         |
| -------- | --------- | ------------------------------- |
| **help** | no        | Get the manpage of this command |

```bash
# List the demo in the shared directory
sxcm demo list
```

### Read information

Get **information** about a **demo**.

Could be a resource stored into the sxcm demo stack.

| Param          | mandatory | Content                            |
| -------------- | --------- | ---------------------------------- |
| **myresource** | **yes**   | The name of the resource to search |
| **help**       | no        | Get the manpage of this command    |

```bash
# Read information about the demo version installed into your host (local)
sxcm demo info myresource
```
























## Write commands

This group of command have **impact** on the **personal** demo **stack** and resource stored into this
directory. Shared demo are not manage using this group of command.

### Create

Add a **new demo** to the **local** demo **stack**.

The **file** could be **local**, or **remote** and should be a single yaml file. This file will be copied into the
**personal** demo **stack** with a name coresponding to the choosed one.

Fail if name already exist or if file could not be found.

| Param          | mandatory | Content                                                            |
| -------------- | --------- | ------------------------------------------------------------------ |
| **myresource** | **yes**   | The name of the resource to create                                 |
| **filepath**   | **yes**   | The path to the demo file to load. Could be a local or remote file |
| **help**       | no        | Get the manpage of this command                                    |

```bash
# Create a resource named myresource, with content from the local file myresource.yml, in your personal resource stack
sxcm demo create myresource ./myresource.yml
# Create a resource named myresource, with content from the remote file http://example.com/myresource.yml, in your personal resource stack
sxcm demo create myresource http://example.com/myresource.yml
```

### Edit

**Edit** a demo and **commit change** to the remote **gitops repository**.

Be carefull when editing a deployed cluster as several fields (network, labels, sshkeys, instance type)
are readonly. Use this command prior to deploying the cluster.

| Param          | mandatory | Content                          |
| -------------- | --------- | -------------------------------- |
| **myresource** | **yes**   | The name of the resource to edit |
| **help**       | no        | Get the manpage of this command  |

```bash
# Edit the myresource, and record change into the gitops repository
sxcm demo edit myresource
```

### Delete

**Remove** a demo from the **local** demo **stack**. If cluster is deployed, you should destroy it first.

| Param          | mandatory | Content                            |
| -------------- | --------- | ---------------------------------- |
| **myresource** | **yes**   | The name of the resource to delete |
| **help**       | no        | Get the manpage of this command    |

```bash
# Remove the myresource from the personal demo stack
sxcm demo delete myresource
```

## Cluster interaction commands

This group of command have impat on the cluster instances and resource stored into it.
According to your cluster state (deployed or not), some command may be more usefull.

### Associate / Dissociate

**Add or remove** a **demo** into a demo list and **push it** to gitops repository. If no cluster name is
given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is not deployed**. If your cluster is deployed, no change will
happen into the running cluster, change will be performed when

- deploy the defined cluster `sxcm deploy mycluster`
- editing a change to the cluster using `sxcm edit mycluster`
- enable the demo into the cluster using `sxcm demo enable myresource mycluster`

| Param          | mandatory | Content                                                                         |
| -------------- | --------- | ------------------------------------------------------------------------------- |
| **myresource** | **yes**   | The name of the resource to associate or dissociate                             |
| **mycluster**  | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**       | no        | Get the manpage of this command                                                 |

```bash
# Associate this demo to the cluster mycluster (runable resource)
sxcm demo associate myresource mycluster
# Dissociate this demo from the cluster mycluster (removable resource)
sxcm demo dissociate myresource mycluster
```

### Enable / Disable

**Add or remove** a **demo** into a demo list, **apply it** into a deployed cluster and **push it** to gitops repository.
If no cluster name is given, the currently active cluster will be used.

This command is mostly intended to use when your cluster **is deployed**. If your cluster is not deployed, change will be performed when
you will deploy the defined cluster using `sxcm deploy mycluster` command.

| Param          | mandatory | Content                                                                         |
| -------------- | --------- | ------------------------------------------------------------------------------- |
| **myresource** | **yes**   | The name of the resource to enable or disable                                   |
| **mycluster**  | no        | The name of the cluster impacted by this command. Default is the active cluster |
| **help**       | no        | Get the manpage of this command                                                 |

```bash
# Enable this demo to the cluster mycluster (running resource)
sxcm demo enable myresource mycluster
# Disable this demo from the cluster mycluster (removed resource)
sxcm demo disable myresource mycluster
```
