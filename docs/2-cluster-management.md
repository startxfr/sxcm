# Cluster lifecycle

## Listing the clusters

TO DO

## Get cluster list (sxcm list)

TO DO

## Change active cluster (sxcm switch)

TO DO

## Get cluster detail (sxcm info)

TO DO

## Creating a cluster

TO DO

## New cluster (sxcm create)

TO DO

## Importing a cluster (sxcm import)

TO DO

## Cloning a cluster (sxcm clone)

TO DO

## Deploying a cluster (sxcm deploy)

TO DO

## Updating the cluster

TO DO

## Editing (sxcm edit)

TO DO

## Cluster resource (sxcm resource enable/associate/..)

TO DO

## Exporting the cluster (sxcm export)

TO DO

## Terminating the cluster

TO DO

## Destroy a cluster (sxcm destroy)

TO DO

## Delete a cluster (sxcm delete)

TO DO

## Remove gitops trace

TO DO











## 3. Cluster creation

### Import existing undeployed cluster

```bash
# import the undeployed example
sxcm import undeployed
# display information about the cluster 
sxcm info
# deploy this cluster
sxcm deploy
# connect to this cluster
sxcm connect
# display various cluster informations
oc get project
oc get nodes
```

### Import existing deployed cluster

```bash
# import the deployed example
sxcm import deployed
# display information about the cluster 
sxcm info
# deploy this cluster
sxcm deploy
# connect to this cluster
sxcm connect
# display various cluster informations
oc get project
oc get nodes
```

## 4. Cluster deletion

### Destruction of cluster

```bash
# destruction of the the active cluster
sxcm destroy
```

### Removal of cluster

```bash
# Removal of the the active cluster
sxcm delete
```
