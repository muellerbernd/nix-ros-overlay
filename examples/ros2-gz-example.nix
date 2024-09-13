{pkgs ? import ../. {}}:
with pkgs;
with rosPackages.jazzy;
  mkShell {
    nativeBuildInputs = [
      (buildEnv {
        paths = [
          # gz-cmake-vendor
          # gz-common-vendor
          # gz-dartsim-vendor
          # gz-fuel-tools-vendor
          # gz-gui-vendor
          # gz-launch-vendor
          # gz-math-vendor
          # gz-msgs-vendor
          # gz-ogre-next-vendor
          # gz-physics-vendor
          # gz-plugin-vendor
          # gz-rendering-vendor
          # gz-sensors-vendor
          # gz-sim-vendor
          # gz-tools-vendor
          # gz-transport-vendor
          # gz-utils-vendor
          ros-gz
          # ros-core
        ];
      })
    ];
    GZ_CONFIG_PATH = "${gz-tools-vendor}/opt/gz_tools_vendor/share/gz:${gz-gui-vendor}/opt/gz_gui_vendor/share/gz\:${gz-cmake-vendor}/opt/gz_cmake_vendor/share/gz\:${gz-fuel-tools-vendor}/opt/gz_fuel_tools_vendor/share/gz\:${gz-launch-vendor}/opt/gz_launch_vendor/share/gz\:${gz-math-vendor}/opt/gz_math_vendor/share/gz\:${gz-msgs-vendor}/opt/gz_msgs_vendor/share/gz\:${gz-physics-vendor}/opt/gz_physics_vendor/share/gz\:${gz-plugin-vendor}/opt/gz_plugin_vendor/share/gz\:${gz-rendering-vendor}/opt/gz_rendering_vendor/share/gz\:${gz-sensors-vendor}/opt/gz_sensors_vendor/share/gz\:${gz-sim-vendor}/opt/gz_sim_vendor/share/gz\:${gz-transport-vendor}/opt/gz_transport_vendor/share/gz\:${gz-utils-vendor}/opt/gz_utils_vendor/share/gz";
    GZ_GUI_PLUGIN_PATH = "${gz-sim-vendor}/opt/gz_sim_vendor/lib64/gz-sim-8/plugins\:${gz-gui-vendor}/opt/gz_gui_vendor/lib64/gz-gui-8/plugins";
  }
