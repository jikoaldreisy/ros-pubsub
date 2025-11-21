FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8

# --------------------------------------------------------
# 1. Locale
# --------------------------------------------------------
RUN apt-get update \ 
    && apt-get install -y locales \
    && locale-gen en_US.UTF-8 \
    && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

# --------------------------------------------------------
# 2. ROS2 Tools and Repositories needed
# --------------------------------------------------------
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    lsb-release \
    vim \
    iputils-ping \
    build-essential \
    software-properties-common \
    && add-apt-repository universe \
    && export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F\" '{print $4}') \
    && curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb" \
    && dpkg -i /tmp/ros2-apt-source.deb

# --------------------------------------------------------
# 3. Install development tools (optional)
# --------------------------------------------------------
RUN apt-get update && apt-get install ros-dev-tools -y

# --------------------------------------------------------
# 4. Install ROS 2
# --------------------------------------------------------
RUN apt-get update && apt-get upgrade \
    && apt-get install ros-kilted-ros-base -y

# --------------------------------------------------------
# 5. Setup environment
# --------------------------------------------------------
SHELL ["/bin/bash", "-c"]
RUN echo "source /opt/ros/kilted/setup.bash" >> ~/.bashrc

WORKDIR /mnt/app

CMD ["bash"]
