# Installation

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

### Installer

```bash
source <(curl -s https://raw.githubusercontent.com/startxfr/sxcm/stable/installer)
```

```bash
sxcm setup git https://github.com/startxfr/sxcm-cluster-repo-private.git stable
sxcm switch stable
```

### Test

TO DO

### Configure

#### Gitops repository

TO DO

#### Redhat credentials

TO DO

#### Aws credentials

TO DO
