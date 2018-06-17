include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)
find_or_build_package(COLOR_DEBUG QUIET)

ycm_ep_helper(ASROB_YARP_DEVICES TYPE GIT
              STYLE GITHUB
              REPOSITORY asrob-uc3m/yarp-devices.git
              TAG master
              DEPENDS "YARP;COLOR_DEBUG")
