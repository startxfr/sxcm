# startx cluster manage (sxcm)

![sxcm](https://img.shields.io/badge/latest-v0.1.0-blue.svg) [![last commit](https://img.shields.io/github/last-commit/startxfr/sxcm.svg)](https://github.com/startxfr/sxcm) [![Doc](https://readthedocs.org/projects/sxcm/badge)](https://sxcm.readthedocs.io)

STARTX Openshift installer for various infrastructure configuration deployed under an AWS account.
For more informations and how to install this cluster manager, you can visit the [startx sxcm homepage](https://startxfr.github.io/sxcm) or the [startx sxcm documentation](https://sxcm.readthedocs.io).

## 1. Requirements

You must follow the [system requirements and client install documentation](1-requirements.md) to get and install the sxcm cli.

## 2. global config

After this basic installation, you can [follow the configuration guide](2-configure.md).

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

## 5. Release lifecycle

If you want to have move information about the sxcm relese lifecycle, you can read the [release lifecycle](5-release-lifecycle.md).

## 6. Release history

If you want to have move information about the various sxcm release and their content, you can read the [release history](6-release-history.md).
