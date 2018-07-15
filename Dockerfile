FROM ros:indigo

RUN apt-get update && apt-get install -y ros-$ROS_DISTRO-rosbridge-suite

RUN /bin/bash -c "source /opt/ros/$ROS_DISTRO/setup.bash"

EXPOSE 9090
CMD [ "roslaunch", "rosbridge_server", "rosbridge_tcp.launch" ]