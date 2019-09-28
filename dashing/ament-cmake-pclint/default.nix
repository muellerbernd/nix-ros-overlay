
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright, ament-pclint }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pclint";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pclint/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "344d801c5f0153ab1dd025b9440ade08a65e608a1c5e556320070b45f15386dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PCLint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
