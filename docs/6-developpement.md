# SXCM Developpement

## Developper tools

### development environment

To get a development environment, you should follow theses steps :

1. create a fork of this repository by running the fork option in the `https://github.com/startxfr/sxcm` This
   action must be performed in your github account by visiting the `https://github.com/startxfr/sxcm` account
   and clinking the `fork` button.
2. Clone a local copy of your cloned repository with `git clone https://github.com/yourusername/sxcm ~/sxcm`
3. link shared library with `ln -s ~/sxcm/src /usr/share/sxcm`
4. Create an sxcm local executable with `ln -s ~/sxcm/src/cli /usr/bin/sxcm`
5. Change directory context with `cd  ~/sxcm`

### main files

- Entrypoint of the sxcm command `vi /usr/bin/sxcm`
- Multiple library loaded by the sxcm command with `vi /usr/share/sxcm/*`
- Multiple profiles loaded by the sxcm command with `vi /usr/share/sxcm/profiles/*`
- Multiple resources loaded by the sxcm command with `vi /usr/share/sxcm/resources/*`

## Release lifecycle

### Release convention

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

#### Examples

- major release : `1.8` to `1`
- minor release : `1.8.16` to `1.8`
- patch release : `1.9.3` is unstable, `1.9.4` is stable
- pre-release : `1.9.5` is unstable, prepare stable `1.9.6` with `1.9.6-alpha`
- build release : `1.9.7+20200313144700` or `1.9.7-alpha+20200313144700`

### Release rules

- Major releases defined by startx strategy (driven by technology improvments)
- Minor releases defined by openshift, startx's driven roadmap
- Patch releases defined by technical issues related to services
- pre-release defined as part of major and minor release lifecycle
- build release used only during dev, test, build CI operations
