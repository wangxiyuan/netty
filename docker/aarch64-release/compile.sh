#!/bin/sh

CMD="$1"

if [ "${CMD}" == "--help" ]; then
    echo "Usage: docker run <image> -ti release"
    exit 0
elif [ "${CMD}" == "release" ]; then
  echo "Release transport-native-epoll and transport-native-unix-common for aarch64 platform"
  # Update code
  pushd netty
  git pull
  popd

  # Cross compile for aarch64 platform
  pushd netty/transport-native-unix-common
  mvn clean install -Plinux-aarch64
  popd
  pushd netty/transport-native-epoll
  mvn clean install -Plinux-aarch64 -DskipTests
  popd

  # TODO： Release the package to Maven center.
else
  $CMD
fi
