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

Command used to configure the sxcm environment. Will be setup one time for new sxcm users.

```bash
# setup the sxcm environment (gitops, aws and redhat)
sxcm setup
```

#### Gitops repository

Gitops setup is a fundamental step when configuring sxcm enviroment. It allow you to personnalize the
credentials and backend (gitops) used for cluster management.

```bash
# setup the sxcm git environment (interactive)
sxcm setup git
# setup the sxcm git environment stable release (static)
sxcm setup git https://github.com/startxfr/sxcm-cluster-repo-private.git stable username password
```

#### Redhat credentials

Redhat setup is a fundamental step when configuring sxcm enviroment. It allow you to personnalize the
credentials and backend (redhat) used for cluster management.

```bash
# setup the sxcm redhat environment (interactive)
sxcm setup redhat
# setup the sxcm redhat environment (static)
sxcm setup redhat username password email pullSecret
```

#### Aws credentials

AWS setup is a fundamental step when configuring sxcm enviroment. It allow you to personnalize the
credentials and backend (AWS) used for cluster management.

```bash
# setup the sxcm redhat environment (interactive)
sxcm setup aws
# setup the sxcm redhat environment (static)
sxcm setup aws accessId accessKey dcName
```

### Test

Check to see if your sxcm environment is properly defined.

```bash
# get the list of the defined cluster
sxcm list
```
