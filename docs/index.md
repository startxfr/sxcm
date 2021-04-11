# startx cluster manage (sxcm)

![sxcm](https://img.shields.io/badge/latest-v0.0.4-blue.svg) [![last commit](https://img.shields.io/github/last-commit/startxfr/sxcm.svg)](https://github.com/startxfr/sxcm) [![Doc](https://readthedocs.org/projects/sxcm/badge)](https://sxcm.readthedocs.io)

STARTX Openshift installer for various infrastructure configuration deployed under an AWS account.
For more informations and how to install this cluster manager, you can visit the [startx sxcm homepage](https://startxfr.github.io/sxcm) or the [startx sxcm documentation](https://sxcm.readthedocs.io).

## Requirements

### System

```bash
yum update -y
```

### library

```bash
yum install ansible yq helm oc
```

## Client install

### Installation

```bash
$(curl -s https://raw.githubusercontent.com/startxfr/sxcm/main/installer)
```

### Configuration

```bash
sxcm setup git https://github.com/startxfr/sxcm-cluster-repo-private.git devel
sxcm switch devel
```

## Cluster config

### Import existing cluster

```bash
sxcm import devel
sxcm info
```

### Deploy cluster

```bash
sxcm deploy
sxcm info
```

### Connection t cluster

```bash
sxcm connect
oc get project
oc get nodes
```

### Destruction of cluster

```bash
sxcm destroy
sxcm delete
```


## Release lifecycle

If you want to have move information about the sxcm relese lifecycle, you can read the [release lifecycle](release-lifecycle.md).

## Release history

If you want to have move information about the various sxcm release and their content, you can read the [release history](release-history.md).
