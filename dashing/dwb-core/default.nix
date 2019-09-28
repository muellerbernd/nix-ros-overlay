
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, nav-2d-msgs, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, tf2-ros, nav-2d-utils, nav-msgs, std-msgs, visualization-msgs, pluginlib, ament-lint-common, launch-testing, sensor-msgs, dwb-msgs, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dwb-core";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_core/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "83c7038cc384caad35bdca6b2a1e43288fd7b2634c6132ef3bfce811d105aa8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib sensor-msgs nav2-util tf2-ros nav2-common nav-2d-utils nav-msgs dwb-msgs nav2-costmap-2d rclcpp std-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ pluginlib nav2-util tf2-ros nav-2d-utils nav-msgs dwb-msgs nav2-costmap-2d rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
