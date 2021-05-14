# Installation

## Requirements

```bash
# get an updated system
yum update -y && yum clean all
# install system dependencies
yum install ansible yq helm oc -y
```

## Client install

### Installer

If you run on a supported plateform and [meet the requirements](#requirements), you can run the
following command.

```bash
source <(curl -s https://raw.githubusercontent.com/startxfr/sxcm/stable/installer)
```

### Setup

```bash
# setup the sxcm environment (gitops, aws and redhat)
sxcm setup
# setup the sxcm git environment stable release
sxcm setup git https://github.com/startxfr/sxcm-cluster-repo.git stable
# setup the sxcm git environment stable release
sxcm switch stable
```

### Installer

```bash
sxcm setup git https://github.com/startxfr/sxcm-cluster-repo.git stable
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
