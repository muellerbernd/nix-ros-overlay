
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, ament-cmake, launch-ros, ament-cmake-gmock, launch, aws-common, rclcpp, ros-monitoring-msgs }:
buildRosPackage {
  pname = "ros-dashing-health-metric-collector";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/dashing/health_metric_collector/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d990ce74d624c58a8cd2be31c27171bb3a867a9aed6449ff1075b1224e940497";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-common aws-ros2-common rclcpp ros-monitoring-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ launch-ros launch aws-common rclcpp ros-monitoring-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for sending health metrics to Cloudwatch Metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
