# CopyPolicy: released under the terms of the LGPLv2.1, see LICENSE at project root.
# URL: https://github.com/asrob-uc3m/robotDevastation-simulator

cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(RD_SIMULATOR LANGUAGES NONE)

# Pick up our CMake modules.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake
                              ${CMAKE_SOURCE_DIR}/cmake/ycm-modules)

# Find this YCM version on system, bootstrap it if not available.
set(YCM_MINIMUM_VERSION 0.10)

#Uses YCM's unmerged ExternalProject.cmake module.
set(YCM_USE_CMAKE_PROPOSED ON)

# Bootstrap YCM. Keep YCM compatible with cmake_minimum_required().
include(YCMBootstrap)

# Superbuild phase.
include(FindOrBuildPackage)

# Pull remote packages if not found on system.
find_or_build_package(ASROB_YARP_DEVICES)
find_or_build_package(RD_OPENRAVE_MODELS)
find_or_build_package(ROBOTICSLAB_OPENRAVE_YARP_PLUGINS)

include(GNUInstallDirs)
install(PROGRAMS scripts/python/rdSim DESTINATION ${CMAKE_INSTALL_BINDIR})

# Configure and create uninstall target.
include(AddUninstallTarget)
