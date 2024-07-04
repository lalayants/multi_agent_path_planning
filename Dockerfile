ARG ROS_DISTRO
FROM ros:${ROS_DISTRO}

RUN apt update && apt upgrade -y
RUN apt install ros-${ROS_DISTRO}-rviz2 -y
RUN apt install ros-${ROS_DISTRO}-foxglove-bridge
WORKDIR /workspace
RUN apt-get update && apt-get install -y --no-install-recommends \
    nlohmann-json3-dev \
    libasio-dev \
    libboost-all-dev \
    libssl-dev \
    libwebsocketpp-dev \
    && rm -rf /var/lib/apt/lists/*


# ARG some_variable_name=some_default_value