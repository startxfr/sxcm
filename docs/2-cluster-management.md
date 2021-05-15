# Cluster lifecycle

## Listing the clusters

List the available cluster

| Param    | mandatory | Content                         |
| -------- | --------- | ------------------------------- |
| **help** | no        | Get the manpage of this command |

```bash
# List the available cluster
sxcm list
```

## Change active cluster

Change the active cluster to a new one.

| Param         | mandatory | Content                                |
| ------------- | --------- | -------------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to make active |
| **help**      | no        | Get the manpage of this command        |

```bash
# Make the mycluster the new active cluster
sxcm switch mycluster
# Alias of the previous command
sxcm current mycluster
```

## Get cluster detail

Get information about the given cluster. If none given, use the active cluster.

| Param         | mandatory | Content                                |
| ------------- | --------- | -------------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to make active |
| **help**      | no        | Get the manpage of this command        |

```bash
# Read the mycluster information
sxcm info mycluster
# Read the information of the currently active cluster
sxcm info
```

## Creating a cluster

### New cluster

Create a new cluster and record it to the gitOps repository.

| Param         | mandatory | Content                                                           |
| ------------- | --------- | ----------------------------------------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to create                                 |
| **profile**   | no        | The name of the profile to use. Use the default prfile if not set |
| **help**      | no        | Get the manpage of this command                                   |

```bash
# Create the mycluster cluster based on the default profile
sxcm create mycluster
# Create the mycluster cluster based on the micro profile
sxcm create mycluster micro
```

### Importing a cluster

Import an existing cluster defined in the gitops repository into a locally managed cluster. This command
preserve the cluster state and allow you to share cluster state across various sxcm instance.

| Param               | mandatory | Content                                                               |
| ------------------- | --------- | --------------------------------------------------------------------- |
| **mycluster**       | **yes**   | The name of the cluster to import                                     |
| **myclusterbranch** | no        | The name of the remote branch to use. Use the cluster name if not set |
| **help**            | no        | Get the manpage of this command                                       |

```bash
# Import the cluster named mycluster from the mycluster remote branch
sxcm import mycluster
# Import the cluster named mycluster using the myclusterbranch branch stored into the cluster git repository as model.
sxcm import mycluster myclusterbranch
```

### Cloning a cluster

Clone an existing cluster defined in the gitops repository into a locally managed cluster. this command
alter the cluster state and create a new cluser instance ready to be deployed.

| Param              | mandatory | Content                                                                 |
| ------------------ | --------- | ----------------------------------------------------------------------- |
| **mycluster**      | **yes**   | The name of the cluster to clone                                        |
| **myclustermodel** | no        | The name of the cluster model to use. Use the active cluster if not set |
| **help**           | no        | Get the manpage of this command                                         |

```bash
# Create the mycluster cluster based on the current active cluster
sxcm clone mycluster
# Create the myclusternew cluster based on the mycluster cluster
sxcm clone myclusternew mycluster
```

## Deploying a cluster

Deploy a locally managed cluster. this command alter the cluster state and record it change into the gitops repository.

| Param         | mandatory | Content                           |
| ------------- | --------- | --------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to deploy |
| **help**      | no        | Get the manpage of this command   |

```bash
# Deploy the current active cluster
sxcm deploy
# Deploy the mycluster cluster
sxcm deploy mycluster
```

## Updating the cluster

### Connecting

Connect `oc` and `kubectl` client to the given cluster. This command use cluster credentials to connect to
the given cluster,

```bash
# Connect the current active cluster
sxcm connect
# Connect the mycluster cluster
sxcm connect mycluster
# Test connection to this cluster
oc get nodes
```

### Editing

Edit a locally managed cluster. this command alter the cluster state and record it change into the gitops repository.

| Param         | mandatory | Content                           |
| ------------- | --------- | --------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to update |
| **help**      | no        | Get the manpage of this command   |

```bash
# Update the current active cluster
sxcm edit
# Update the mycluster cluster
sxcm edit mycluster
```

### Cluster resource

To **associate** / **dissociate** or **enable** / **disable** a [cluster resource](../4-cluster-resources), you can follow to the [cluster resource interaction with cluster](../4-cluster-resources#cluster-interaction-commands).

### Exporting the cluster

Export an existing cluster defined locally into the gitops repository. This command
preserve the cluster state and allow you to share cluster state across various sxcm instance.

| Param         | mandatory | Content                           |
| ------------- | --------- | --------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to export |
| **help**      | no        | Get the manpage of this command   |

```bash
# Export all change to the cluster into the gitops remote branch
sxcm export mycluster
```

## Terminating the cluster

### Destroy a cluster

Destroy a locally managed cluster. this command alter the cluster state and record it change into the gitops repository.

| Param         | mandatory | Content                            |
| ------------- | --------- | ---------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to destroy |
| **help**      | no        | Get the manpage of this command    |

```bash
# Destroy the current active cluster
sxcm destroy
# Destroy the mycluster cluster
sxcm destroy mycluster
```

### Delete a cluster

Delete a cluster locally.

| Param         | mandatory | Content                           |
| ------------- | --------- | --------------------------------- |
| **mycluster** | **yes**   | The name of the cluster to delete |
| **help**      | no        | Get the manpage of this command   |

```bash
# Delete the current active cluster
sxcm delete
# Delete the mycluster cluster
sxcm delete mycluster
```

### Remove gitops trace

Go to your private gitops and remove useless branch.
