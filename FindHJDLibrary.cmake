# Set up your library names here
SET(LIBRARY HJDLIBRARY)
SET(LIBRARYNAME HJDLibrary)
FIND_PATH(${LIBRARY}_INCLUDE_DIR HJDLibrary/HJDLibrary.h # insert the header file name here
    PATHS 
    /opt/local/include
    $ENV{HOME}/build/include
    )

FIND_LIBRARY(${LIBRARY}_LIBRARIES 
    NAMES # insert the library name here (without the lib...) 
    HJDLibrary
    PATHS
    $ENV{HOME}/build/lib
    /opt/local/lib
    /usr/lib64
    )



if (${LIBRARY}_INCLUDE_DIR AND ${LIBRARY}_LIBRARIES)
    set (${LIBRARY}_FOUND true)
endif(${LIBRARY}_INCLUDE_DIR AND ${LIBRARY}_LIBRARIES)


if (${LIBRARY}_FOUND)
    if (NOT ${LIBRARY}_FIND_QUIETLY)
        message(STATUS "Found ${LIBRARYNAME}: ${${LIBRARY}_LIBRARIES}")
    endif(NOT ${LIBRARY}_FIND_QUIETLY)
else (${LIBRARY}_FOUND)
   if (${LIBRARY}_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find ${LIBRARYNAME}")
    endif(${LIBRARY}_FIND_REQUIRED)
endif(${LIBRARY}_FOUND) 
