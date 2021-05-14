# 3scale

Deploy cluster-wide resources to enable 3Scale registry support according to sxcm definitions

## Description

|              |                                    |
| ------------ | ---------------------------------- |
| **Name**     | STARTX cluster 3Scale (admin)      |
| **tags**     | startx,cluster,config,admin,3scale |
| **provider** | STARTX                             |




```bash
yum update -y
```

## library

```bash
yum install ansible yq helm oc
```

# Client install

## Installation

```bash
source <(curl -s https://raw.githubusercontent.com/startxfr/sxcm/stable/installer)
```
