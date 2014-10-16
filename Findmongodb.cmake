FIND_PATH(MONGODB_INCLUDE_DIR mongo/client/dbclient.h
    PATHS
    /opt/local/include
    $ENV{HOME}/build/include
    )

FIND_LIBRARY(MONGODB_LIBRARIES NAMES mongoclient PATHS
    $ENV{HOME}/build/lib
    /opt/local/lib
    NO_DEFAULT_PATH
    )

FIND_PACKAGE(Boost 1.36.0 COMPONENTS thread filesystem program_options system)

if (Boost_FOUND)
    set(MONGODB_LIBRARIES ${Boost_LIBRARIES} ${MONGODB_LIBRARIES})
endif()



if (MONGODB_INCLUDE_DIR AND MONGODB_LIBRARIES)
    set (MONGODB_FOUND true)
endif(MONGODB_INCLUDE_DIR AND MONGODB_LIBRARIES)


if (MONGODB_FOUND)
    if (NOT MONGODB_FIND_QUIETLY)
        message(STATUS "Found mongodb: ${MONGODB_LIBRARIES}")
    endif(NOT MONGODB_FIND_QUIETLY)
else (MONGODB_FOUND)
   if (MONGODB_FIND_REQUIRED)
       message(FATAL_ERROR "Could not find mongodb")
    endif(MONGODB_FIND_REQUIRED)
endif(MONGODB_FOUND)
