# startx cluster manager (sxcm)

![sxcm](https://img.shields.io/badge/latest-v0.1.3-blue.svg) [![last commit](https://img.shields.io/github/last-commit/startxfr/sxcm.svg)](https://github.com/startxfr/sxcm) [![Doc](https://readthedocs.org/projects/sxcm/badge)](https://sxcm.readthedocs.io)

STARTX Openshift installer for various infrastructure configuration deployed under an AWS account.

## Purpose

The main goal of this tool is to help you build gickly and efficiently a cloud infrastructure that ca drive your containerized workloads. 
If you have a good knowledge in Openshift structucture and how helm chart are managed by ArgoCD infrastructure, you should easilly perform
the addaptations required to addapt this toold to your needs.

## Principles

- `sxcm` exist to perform days one and day two operation, no more. Cluster lifecycle and operationnal task are out of it scope
- `sxcm` is only build and supported for AWS infrstructure backend. Even if experienced user can build it install-openshift,yaml file on top of another infrstructure provider (kvm, openstack, azure, gcp, vmware), only AWS backend are supported at this time.
- `sxcm` use extensivly the [startx helm-repository](https://helm-repository.readthedocs.io) resources. Read more in theses resources and how 
  argoCD use it to know how to addapt this tools.
- All `sxcm` components (with exception of the argocd-xxx cluster resources), are managed using argoCD `Application` resource deployed under the `startx-argocd` namespace. You can follow the sxcm configuration applyed by running `oc get application -n startx-argocd`

## Architecture

TO DO

## Terminology

### Profile

A **profile** is a cluster configuration with the following characteristics :

- A datacenter (e.g. _eu-west-3_)
- A master and worker compute number of replicas (e.g. _3_)
- A master and worker compute profile (e.g. _t3a.large_)
- A master and worker storage profile (e.g. _50Go gp2_)
- A series of AWS labels to apply to nodes (e.g. _profile, environment, projectOwner, ..._)
- _pullSecret, sshKey and clustername_ will be dymamycally pushed by `sxcm` command
- A list of cluser resource to apply to the instanciated cluster

### Cluster

A **cluster** or **cluster instance** is a named cluster based on a profile (created with the `sxcm create`) and ready to be (or already),
deployed using the `sxcm deploy` command.
When creating a cluster, a dedicated branch is created under the gitops repository to store the cluster state. All files describing the targeted cluster are recorded and change tracked.
When you deploy the cluster, state change are reflected into the files, and all this content will be versionned and pushed into your remote gitops repository.
If you enable or disable cluster resource on your cluster, change are reflected under your configurations files and will be stored into your gitops respository.

### Infrastructure

TO DO

### Cluster resource

TO DO

### Gitops repository

TO DO

### Kubernetes resource

TO DO

### Active cluster

TO DO

## What to do next

- You must follow the [system requirements and client install documentation](1-installation.md) to get and install the sxcm cli.
- After this basic installation, you can [follow the configuration guide](2-configure.md).
- If you want to have move information about the sxcm relese lifecycle, you can read the [release lifecycle](6-developpement.md#release-lifecycle).
- If you want to have move information about the various sxcm release and their content, you can read the [release history](5-release-history.md).
