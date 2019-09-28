
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, nav-2d-utils, rclcpp-action, rclcpp, std-msgs, ament-lint-auto, dwb-core, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-dashing-dwb-controller";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_controller/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "2829e168f0733d9b147231f1b30e99dcf328541d3b230ed38f443c7682e6f8f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-msgs nav2-util nav2-common nav-2d-utils rclcpp-action rclcpp std-msgs dwb-core nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-msgs nav2-util nav-2d-utils rclcpp-action rclcpp std-msgs dwb-core nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
