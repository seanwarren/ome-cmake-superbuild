# ome-model superbuild

# Source information
ome_source_settings(ome-model
  NAME            "OME Model"
  GIT_NAME        "ome-model"
  GIT_URL         "https://github.com/ome/ome-model.git"
  GIT_HEAD_BRANCH "master"
  RELEASE_URL     "https://downloads.openmicroscopy.org/ome-model/5.5.6/source/ome-model-5.5.6.tar.xz"
  RELEASE_HASH    "SHA512=cdc66cc340defb258919179b16a8a30c5f77e6b93c8f62fda0d0177f85a104fa13979ee9f4e74dcaceedeef7a864b44ff1f74f909303390fde15a44053a17a06")

# Set dependency list
ome_add_dependencies(ome-model
                     DEPENDENCIES ome-common
                     THIRD_PARTY_DEPENDENCIES boost png tiff xerces
                                              xalan py-genshi py-sphinx
                                              gtest)

list(APPEND CONFIGURE_OPTIONS
     "-DBOOST_ROOT=${OME_EP_INSTALL_DIR}"
     -DBoost_NO_BOOST_CMAKE:BOOL=true
     ${SUPERBUILD_OPTIONS})
if(SOURCE_ARCHIVE_DIR)
  list(APPEND CONFIGURE_OPTIONS "-DSOURCE_ARCHIVE_DIR=${SOURCE_ARCHIVE_DIR}")
endif()
string(REPLACE ";" "^^" CONFIGURE_OPTIONS "${CONFIGURE_OPTIONS}")

ExternalProject_Add(${EP_PROJECT}
  ${OME_EP_COMMON_ARGS}
  ${EP_SOURCE_DOWNLOAD}
  SOURCE_DIR ${EP_SOURCE_DIR}
  BINARY_DIR ${EP_BINARY_DIR}
  INSTALL_DIR ""
  CONFIGURE_COMMAND ${CMAKE_COMMAND}
    "-DSOURCE_DIR:PATH=${EP_SOURCE_DIR}"
    "-DBUILD_DIR:PATH=${EP_BINARY_DIR}"
    "-DCONFIGURE_OPTIONS=${CONFIGURE_OPTIONS}"
    "-DCONFIG:INTERNAL=$<CONFIG>"
    "-DEP_SCRIPT_CONFIG:FILEPATH=${EP_SCRIPT_CONFIG}"
    -P "${GENERIC_CMAKE_CONFIGURE}"
  BUILD_COMMAND ${CMAKE_COMMAND}
    "-DSOURCE_DIR:PATH=${EP_SOURCE_DIR}"
    "-DBUILD_DIR:PATH=${EP_BINARY_DIR}"
    "-DCONFIG:INTERNAL=$<CONFIG>"
    "-DEP_SCRIPT_CONFIG:FILEPATH=${EP_SCRIPT_CONFIG}"
    -P "${GENERIC_CMAKE_BUILD}"
  INSTALL_COMMAND ${CMAKE_COMMAND}
    "-DSOURCE_DIR:PATH=${EP_SOURCE_DIR}"
    "-DBUILD_DIR:PATH=${EP_BINARY_DIR}"
    "-DCONFIG:INTERNAL=$<CONFIG>"
    "-DEP_SCRIPT_CONFIG:FILEPATH=${EP_SCRIPT_CONFIG}"
    -P "${GENERIC_CMAKE_INSTALL}"
  TEST_COMMAND ${CMAKE_COMMAND}
    "-DSOURCE_DIR:PATH=${EP_SOURCE_DIR}"
    "-DBUILD_DIR:PATH=${EP_BINARY_DIR}"
    "-DCONFIG:INTERNAL=$<CONFIG>"
    "-DEP_SCRIPT_CONFIG:FILEPATH=${EP_SCRIPT_CONFIG}"
    -P "${GENERIC_CMAKE_TEST}"
  DEPENDS
    ${EP_PROJECT}-prerequisites
  )
