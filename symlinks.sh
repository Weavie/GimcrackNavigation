#!/bin/bash

# To Run: (from same directory)
# sudo chmod +x symlnks.sh
# ./symlinks.sh

# Symlink info:
# Command Structure: ln -sf <source file (use absolute)> <path-to-symlink>
# Reltive path can be used but it is relative to the resultant symlink

# Project Scripts & Map Filers -> Desktop (For ease of development)
ln -sf /home/orin/GimcrackNavigations/scripts /home/orin/Desktop/ 
ln -sf /home/orin/GimcrackNavigations/maps /home/orin/Desktop/ 

# IS 1.11.2 SDK ROS 2 Implimentation -> Home 
rm -r /home/orin/is_ws
ln -sf /home/orin/GimcrackNavigations/is_ws /home/orin/ 
ln -sf /home/orin/GimcrackNavigations/inertial-sense-sdk /home/orin/ 

# Ros2 & Nav2 Custom Files -> Default Locations
rm -r /opt/ros/humble/share/nav2_collision_monitor/launch
ln -sf /home/orin/GimcrackNavigations/modified/nav2_collision_monitor/launch/ /opt/ros/humble/share/nav2_collision_monitor/
rm -r /opt/ros/humble/share/nav2_collision_monitor/params
ln -sf /home/orin/GimcrackNavigations/modified/nav2_collision_monitor/params/ /opt/ros/humble/share/nav2_collision_monitor/ 

rm -r /opt/ros/humble/share/nav2_bringup/launch
ln -sfn /home/orin/GimcrackNavigations/modified/nav2_bringup/launch/ /opt/ros/humble/share/nav2_bringup/ 
rm -r /opt/ros/humble/share/nav2_bringup/params
ln -sfn /home/orin/GimcrackNavigations/modified/nav2_bringup/params/ /opt/ros/humble/share/nav2_bringup/

ln -sfn /home/orin/GimcrackNavigations/modified/slam_toolbox/launch/localization_launch.py /opt/ros/humble/share/slam_toolbox/launch/localization_launch.py  

rm -r /opt/ros/humble/share/pointcloud_to_laserscan/launch
ln -sfn /home/orin/GimcrackNavigations/modified/pointcloud_to_laserscan/launch /opt/ros/humble/share/pointcloud_to_laserscan/

ln -sfn /home/orin/GimcrackNavigations/modified/rslidar_sdk/config.yaml /home/orin/lidar_ws/src/rslidar_sdk-v.1.5.13/config/config.yaml 

rm -r /home/orin/scout_ws/src/scout_ros2-humble/scout_description/urdf
ln -sfn /home/orin/GimcrackNavigations/modified/scout_description/urdf/ /home/orin/scout_ws/src/scout_ros2-humble/scout_description/ 

