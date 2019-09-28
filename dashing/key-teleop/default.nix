
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, ament-copyright, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-key-teleop";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/key_teleop/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "801499b37a29a2ff26955ecfa912aa902db98a6ffb5df9166e1e6710ea0274d7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy geometry-msgs ];

  meta = {
    description = ''A text-based interface to send a robot movement commands.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
