require ${COREBASE}/../meta-petalinux/recipes-core/images/petalinux-image-minimal.bb

SUMMARY = "A image including a bare-minimum installation of ROS 2 and including some basic pub/sub examples. It includes two DDS middleware implementations, FastDDS and Cyclone DDS"
DESCRIPTION = "${SUMMARY}"

inherit ros_distro_${ROS_DISTRO}
inherit ${ROS_DISTRO_TYPE}_image
inherit ros_ament_cmake

ROS_SYSROOT_BUILD_DEPENDENCIES = " \
    ament-lint-auto \
    ament-cmake-auto \
    ament-cmake-core \
    ament-cmake-cppcheck \
    ament-cmake-cpplint \
    ament-cmake-export-definitions \
    ament-cmake-export-dependencies \
    ament-cmake-export-include-directories \
    ament-cmake-export-interfaces \
    ament-cmake-export-libraries \
    ament-cmake-export-link-flags \
    ament-cmake-export-targets \
    ament-cmake-gmock \
    ament-cmake-gtest \
    ament-cmake-include-directories \
    ament-cmake-libraries \
    ament-cmake \
    ament-cmake-pytest \
    ament-cmake-python \
    ament-cmake-ros \
    ament-cmake-target-dependencies \
    ament-cmake-test \
    ament-cmake-version \
    ament-cmake-uncrustify \
    ament-cmake-flake8 \
    ament-cmake-pep257 \
    ament-copyright \
    ament-cpplint \
    ament-flake8 \
    ament-index-python \
    ament-lint-cmake \
    ament-mypy \
    ament-package \
    ament-pclint \
    ament-pep257 \
    ament-pycodestyle \
    ament-pyflakes \
    ament-uncrustify \
    ament-xmllint \
    cmake \
    eigen3-cmake-module \
    fastcdr \
    fastrtps-cmake-module \
    fastrtps \
    git \
    gmock-vendor \
    gtest-vendor \
    pkgconfig \
    python-cmake-module \
    python3-catkin-pkg \
    python3-empy \
    python3 \
    python3-nose \
    python3-pytest \
    rcutils \
    rmw-implementation-cmake \
    rosidl-cmake \
    rosidl-default-generators \
    rosidl-generator-c \
    rosidl-generator-cpp \
    rosidl-generator-dds-idl \
    rosidl-generator-py \
    rosidl-parser \
    rosidl-runtime-c \
    rosidl-runtime-cpp \
    rosidl-typesupport-c \
    rosidl-typesupport-cpp \
    rosidl-typesupport-fastrtps-cpp \
    rosidl-typesupport-interface \
    rosidl-typesupport-introspection-c \
    rosidl-typesupport-introspection-cpp \
    foonathan-memory-vendor \
    libyaml-vendor \
"

XSENSE_PACKAGES = " \
    xsens \
"

DEPTHAI_PACKAGES = " \
    depthai-core \
    depthai-ros-examples \
"

HUSKY_PACKAGES = " \
    robot-localization \
    controller-manager \
    robot-upstart \
    joy \
    interactive-marker-twist-server \
    twist-mux \
    teleop-twist-joy \
    husky-base \
    husky-bringup \
    husky-control \
    husky-description \
    ros2-control \
    ros2-controllers \
    imu-filter-madgwick \
    imu-complementary-filter \
    "

PUT_PACKAGES = " \
    packagegroup-core-buildessential \
    python3-opencv \
    python3-rosdep \
    python3-rospkg \
    python3-pip \
    python3-colcon-common-extensions \
    ${HUSKY_PACKAGES} \
    ${DEPTHAI_PACKAGES} \
    ${XSENSE_PACKAGES} \
    depthai-cognition \
    put-husky-description \
    bashrc \
"

IMAGE_INSTALL:append = " \
    bash \
    ros-base \
    cyclonedds \
    rmw-cyclonedds-cpp \
    tmux \
    byobu \
    python3-argcomplete \
    glibc-utils \
    localedef \
    rt-tests \
    stress \
    xrt-dev \
    xrt \
    zocl \
    opencl-headers-dev \
    opencl-clhpp-dev \
    ${ROS_SYSROOT_BUILD_DEPENDENCIES} \
    ${PUT_PACKAGES} \
"

IMAGE_LINGUAS = "en-us"
GLIBC_GENERATE_LOCALES = "en_US.UTF-8"
