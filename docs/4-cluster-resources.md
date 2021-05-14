# Cluster resources

## Cluster resources commands actions (local) :
  - resources                                        
  - resource create RESOURCENAME RESOURCEFILE        
  - resource edit RESOURCENAME                       
  - resource info RESOURCENAME                       
  - resource delete RESOURCENAME                     
  - resource associate RESOURCENAME [CLUSTERNAME]    
  - resource dissociate RESOURCENAME [CLUSTERNAME]   Remove a cluster resource from a cluster resource list and record deletion (default is active cluster)

## Cluster resources commands actions (remote) :
  - resource enable RESOURCENAME [CLUSTERNAME]       
  - resource disable RESOURCENAME [CLUSTERNAME]      Remove a cluster resource from the cluster, record it, remove the cluster resource list and record it (default is active cluster)







## Read commands

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

Get information about a cluster resource. Could be a resource stored into the sxcm cluster resource stack, 
or the personal cluster resource stack.

| Param             | mandatory | Content                         |
| ----------------- | --------- | ------------------------------- |
| **\<myresource>** | yes       | The name of the resource to search |
| **help**          | no        | Get the manpage of this command |

```bash
# Read information about the cluster resource version installed into your host (local)
sxcm resource info myresource
```

## Write commands

### Create

Add a new cluster resource to the local cluster resource stack

```bash
# Create a resource named myresource, with content from the local file myresource.yml, in your personal resource stack
sxcm resource create myresource ./myresource.yml
# Create a resource named myresource, with content from the remote file http://example.com/myresource.yml, in your personal resource stack
sxcm resource create myresource http://example.com/myresource.yml
```

### Edit

Edit a cluster resource (only local)

```bash
# Edit the myresource, and record change into the gitops repository
sxcm resource edit myresource
```

### Delete

Remove a cluster resource from the local cluster resource stack

```bash
# Remove the myresource from the personal cluster resource stack
sxcm resource delete myresource
```

## Cluster interaction commands

### Associate / Dissociate

Add or remove a cluster resource into a cluster resource list and record it (default is active cluster)

```bash
# Associate this cluster resource to the cluster mycluster (runable resource)
sxcm resource associate myresource mycluster
# Dissociate this cluster resource from the cluster mycluster (removable resource)
sxcm resource dissociate myresource mycluster
```

### Enable / Disable

Add or remove a cluster resource into a cluster resource list, record, apply to running cluster and record it (default is active cluster)

```bash
# Enable this cluster resource to the cluster mycluster (running resource)
sxcm resource enable myresource mycluster
# Disable this cluster resource from the cluster mycluster (removed resource)
sxcm resource disable myresource mycluster
```
