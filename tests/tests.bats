
setup() {
    export SXPATH=../src
    source ../src/cli
}

@test "can run menuVersion to display the sxcm version information" {
  run menuVersion
  [ "$status" -eq 0 ]
}

@test "can run menuCluster to display the cluster menu" {
  run menuCluster
  [ "$status" -eq 0 ]
}

@test "can run menuProfiles to display the profiles sub-menu" {
  run menuProfiles
  [ "$status" -eq 0 ]
}

@test "can run menuResources to display full list of cluster resources" {
  run menuResources
  [ "$status" -eq 0 ]
}

@test "can run menuResource to display the option to manipulate cluster resource for the current cluster {
  run menuResource
  [ "$status" -eq 0 ]
}

@test "can run menuDemo to display the option to manipulate demos for the current cluster {
  run menuDemo
  [ "$status" -eq 0 ]
}

@test "can run menuSetup to display the option available to setup sxcm various configuration informations {
  run menuSetup
  [ "$status" -eq 0 ]
}
