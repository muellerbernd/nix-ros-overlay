
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-shared-queues-vendor";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/shared_queues_vendor/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "5080c7f39187919749e8dc681a3e24be89fc02b22362baf3d79a2004c6f42142";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
