# startx cluster manager (sxcm)

![sxcm](https://img.shields.io/badge/latest-v0.8.13-blue.svg) [![last commit](https://img.shields.io/github/last-commit/startxfr/sxcm.svg)](https://github.com/startxfr/sxcm) [![Doc](https://readthedocs.org/projects/sxcm/badge)](https://sxcm.readthedocs.io)

STARTX Openshift installer for various infrastructure configuration deployed under an AWS account.

## Purpose

The main goal of this tool is to help you build gickly and efficiently a cloud infrastructure that can run your containerized workloads. 
If you have a good knowledge in Openshift structucture and how helm chart are managed by ArgoCD infrastructure, you should easily perform the changes required to addapt this tool to your needs.

## Principles

- `sxcm` exist to perform days one and day two operation, no more. Cluster lifecycle and operationnal task are out of it scope
- `sxcm` is only build and supported for AWS infrstructure backend. Even if experienced user can build it install-openshift,yaml file on top of another infrstructure provider (kvm, openstack, azure, gcp, vmware), only AWS backend are supported at this time.
- `sxcm` use extensivly the [startx helm-repository](https://helm-repository.readthedocs.io) resources. Read more in theses resources and how 
  argoCD use it to know how to addapt this tools.
- All `sxcm` components (with exception of the argocd-xxx cluster resources), are managed using argoCD `Application` resource deployed under the `startx-argocd` namespace. You can follow the sxcm configuration applyed by running `oc get application -n startx-argocd`

## Architecture

![sxcm architecture](https://raw.githubusercontent.com/startxfr/sxcm/main/docs/img/architecture.svg)

## Terminology

### Profile

A **profile** is a cluster configuration with the following characteristics :

- A **datacenter** (e.g. _eu-west-3_)
- A **master** and **worker** compute number of **replicas** (e.g. _3_)
- A master and worker **compute profile** (e.g. _t3a.large_)
- A master and worker **storage profile** (e.g. _50Go gp2_)
- A series of **AWS labels** to apply to nodes (e.g. _profile, environment, projectOwner, ..._)
- _pullSecret, sshKey and clustername_ will be dymamically pushed by `sxcm` command
- A list of **cluster resource** to apply to the instanciated cluster

### Cluster instance

A **cluster instance** is a named cluster based on a profile (created with the `sxcm create`) and ready to be (or already),
deployed using the `sxcm deploy` command.

When creating a cluster, a dedicated branch is created under the **gitops repository** to store the cluster state. A new `install-openshift.yaml` file is created and all files describing the targeted cluster are recorded and change tracked.

When importing a cluster, a branch recorded under the **gitops repository** is imported to the **cluster stack**. All cluster stated are locally imported and you can manage the cluster from your `sxcm` environment.

When clonning a cluster, a new branch is created under the **gitops repository** to store the cluster state. A copy of the source **cluster instance** is performed and reverted to a configured state.

When you change the cluster state (deploy, destroy, enable, disable, edit), state change are reflected into the files, and all this content will be versionned and pushed into your remote **gitops repository**. Change will be applyed to the **running cluster** if command is intrusive (e.g. deploy, destroy, enable).
If you enable or disable cluster resource on your cluster, change are reflected under your configurations files, recorded into the **gitops respository** and applyed to the **running cluster**.

### Cluster stack

The **cluster stack** is the local clusters list configured into your local `sxcm` host. Each host user have it own cluster stack witch store **cluster instance** created, imported or cloned into its environement.

When creating, clonning or importing a cluster, a local copy of all the **gitops repository** content is stored. All files describing the targeted cluster state are available and shared among users.

Cluster stack is  local (each host have it own `sxcm` installation) and personnal (each user have it own cluster stack). When **cluster instance** declared into a **cluster stack** are imported, the **cluster state** is shared among multiple users by the **gitOps repository** and multiple git users can manage the same cluster.

### Cluster infrastructure

Each **cluster instance** represent a deployable (or deployed) openshift cluster running under the AWS public infrastructure. The **cluster infrastructure** is the bunch of cloud ressources required to instanciate the **cluster instance** and make it live.

Only **cluster instance** in the **deployed state** have a **cluster infrastructure** associated to it state.

### Cluster resource

A **cluster ressource** is a kubernetes list of ressource used to configure the cluster and services running into it. Appart the `argocd-project` and `argocd-deploy` all cluster resources are based on **openshift template** deploying **argocd application** or
**bash script** executing `oc` or `kubectl` commands.

These argoCD applications applyed various cluster configuration or deploy new cluster resources (mostly with operators). The sxcm cluster resource use extensively the [startx helm-repository](https://helm-repository.readthedocs.io) wrapped using various argoCD application acting as an intermediate between the cluster state and this helm chart.

**cluster resource** could be **shared**, meaning stored into the `/usr/share/sxcm/resources` directory, or **local** meaning stored into the `~/.sxcm/resources` directory.

More information about **cluster resource** can be found by reading the [cluster resource manual](../../4-cluster-resources) witch provide so good example on how to use cluster resources.

### Gitops repository

A **gitops repository** is a git repository linked to the **cluster instance** declared in your **cluster stack** and tracking all change to you cluster state. This state could be shared among various git user and `sxcm` installation if you used `sxcm import` on a deployed cluster.

The gitops repository is here to share, track changes and act as a reference for all change relative to a given **cluster instance**. Each cluster instance must belong to a **gitops repository branch** whatever the command used for construction (clone, import or create).

### ArgoCD or Kubernetes resource

**cluster resource**, with exception of the `argocd-project` and `argocd-deploy`, are based on **openshift template** deploying **argocd application** or **bash script** executing `oc` or `kubectl` commands.

All these commands produce creation of multiple kubernetes resource that you can monitor globally with :

- `oc get application -n startx-argocd` to get all application
- go to `https://startx-server-startx-argocd.apps.<mycluster>.startx.fr`
- `oc get pod --all-namespaces` to see what is deployed into your cluster

### Active cluster

The **cluster stack** store the local clusters list. **active cluster** is the currently active cluster defined in the cluster stack. There is only one active cluster per system user.

Each time you create, clone, import or switch a cluster, a change is done to the currently active cluster, and context is change to this new active cluster.

The active cluster state is used every time a cluster name is required but not provided.

## What to do next

![sxcm verbs](https://raw.githubusercontent.com/startxfr/sxcm/main/docs/img/verbs-all.svg)

- You must follow the [system requirements and client install documentation](1-installation.md) to get and install the sxcm cli.
- After this basic installation, you can [follow the configuration guide](2-configure.md).
- If you want to have move information about the sxcm relese lifecycle, you can read the [release lifecycle](6-developpement.md#release-lifecycle).
- If you want to have move information about the various sxcm release and their content, you can read the [release history](7-release-history.md).
