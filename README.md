# sxcm
STARTX Openshift OCP installer


# sxcm ![sxapi](https://img.shields.io/badge/latest-v0.3.203-blue.svg) [![last commit](https://img.shields.io/github/last-commit/startxfr/sxcm.svg)](https://github.com/startxfr/sxcm) [![Doc](https://readthedocs.org/projects/sxcm/badge)](https://sxcm.readthedocs.io)

STARTX Openshift installer for various infrastructure configuration deployed under an AWS account.
For more informations and install this cluster manager, you can visit the [startx sxcm homepage](https://startxfr.github.io/sxcm) or the [startx sxcm documentation](https://sxcm.readthedocs.io).

## Install this cluster manager (local install)

### 1. System install (operating-system)

#### 1.1. Requirements

#### 1.2. Install & config

#### 1.3. Access & usage

### 2. Container install (container-runtime)

#### 2.1. Requirements

#### 2.2. Install & config

#### 2.3. Access & usage

## Install this cluster manager (cluster install)

### 1. Requirements

### 2. Install sxcm

#### 2.1. Kubernetes

#### 2.2.Openshift

## manage cluster

## Release convention

- MAJOR version for major sxcm structural changes that lead to break the compatibility with previous version (ex: X.0.0)
- MINOR version for major functionality ehancement added in a backwards compatible manner (ex: 0.X.0)
- PATCH version for bug, security and functionnals updates, backwards compatible for continous delivery (ex: 0.0.X)
- PRE-RELEASE version for an unstable release that might not satisfy the intended compatibility requirements (ex: 0.0.0-beta)
- BUILD version to identify to differents build during release preparation (ex: 0.0.0-tag)

Major are based on the latest related minor release.
Minor are based on the latest related patch release with an **odd number** are used for **stable** and releasable version.
A **even** minor or patch number indicate a release **not stable** and releasable.

The CI chain will run integration test suite and promote to a stable release number the code if
test are OK.

### Examples

- major release : `1.8` to `1`
- minor release : `1.8.16` to `1.8`
- patch release : `1.9.3` is unstable, `1.9.4` is stable
- pre-release : `1.9.5` is unstable, prepare stable `1.9.6` with `1.9.6-alpha`
- build release : `1.9.7+20200313144700` or `1.9.7-alpha+20200313144700`

## Release rules

- Major releases defined by startx strategy (driven by technology improvments)
- Minor releases defined by openshift, startx's driven roadmap
- Patch releases defined by technical issues related to services
- pre-release defined as part of major and minor release lifecycle
- build release used only during dev, test, build CI operations

## Release history

### version 0.1.x (seilhac)

| Release | Date     | Description              |
| ------- | -------- | ------------------------ |
| 0.1.0   | 21-04-04 | Stable for openshift 4.7 |

### version 0.0.x (chanteix)

| Release | Date     | Description                    |
| ------- | -------- | ------------------------------ |
| 0.0.4   | 21-04-03 | release sxcm for openshift 4.6 |
| 0.0.3   | 21-04-03 | stable cli basic functions     |
| 0.0.2   | 21-04-03 | stable initial li              |
| 0.0.1   | 21-04-03 | Initial commit                 |
