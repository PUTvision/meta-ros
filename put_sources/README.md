
* `git clone https://github.com/PUTvision/meta-ros project-spec/meta-ros`
* Edit - `vim build/conf/bblayers.conf`
    * add headers:
    ```
    # define the ROS 2 Yocto target release
    ROS_OE_RELEASE_SERIES = "honister"

    # define ROS 2 distro
    ROS_DISTRO = "foxy"
    ```
    * append sources:
    ```
    ${SDKBASEMETAPATH}/../../project-spec/meta-ros/meta-ros2-foxy \
    ${SDKBASEMETAPATH}/../../project-spec/meta-ros/meta-ros2 \
    ${SDKBASEMETAPATH}/../../project-spec/meta-ros/meta-ros-common \
    ```
* `mkdir -p project-spec/meta-user/recipes-images/images`
* `cp project-spec/meta-ros/put_sources/petalinux-image-minimal.bbappend project-spec/meta-user/recipes-images/images/`
