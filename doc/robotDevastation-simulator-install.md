## Simulation and Basic Control: Installation from Source Code

First install the dependencies:
- [Install CMake 3.5+](https://github.com/roboticslab-uc3m/installation-guides/blob/master/install-cmake.md)

Additionally, this project depends on YCM to download and build external packages. Although this process is intended to run automatically during the CMake configuration phase, you may still want to install YCM and said packages by yourself. In that respect, refer to [Install YCM](https://github.com/roboticslab-uc3m/installation-guides/blob/master/install-ycm.md) and to the installation guides of any package listed below:

- [asrob-uc3m/yarp-devices](https://github.com/asrob-uc3m/yarp-devices)
- [asrob-uc3m/robotDevastation-openrave-models](https://github.com/asrob-uc3m/robotDevastation-openrave-models)
- [roboticslab-uc3m/openrave-yarp-plugins](https://github.com/roboticslab-uc3m/openrave-yarp-plugins)

### Install the Simulation and Basic Control Software

Our software integrates the previous dependencies. Note that you will be prompted for your password upon using `sudo` a couple of times:

```bash
cd  # go home
mkdir -p repos; cd repos  # make $HOME/repos if it does not exist; then, enter it
git clone https://github.com/asrob-uc3m/robotDevastation-simulator.git  # download source code from the repository
cd robotDevastation-simulator; mkdir build; cd build
cmake ..
make -j$(nproc); sudo make install; cd  # go home
```

For additional options, use `ccmake` instead of `cmake`.
