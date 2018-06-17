include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)

ycm_ep_helper(RD_OPENRAVE_MODELS TYPE GIT
              STYLE GITHUB
              REPOSITORY asrob-uc3m/robotDevastation-openrave-models.git
              TAG master
              DEPENDS YARP)
