FIND_PATH(GA_INCLUDE_DIR ga/ga.h PATHS 
    $ENV{HOME}/build/include
    /opt/local/include
    )

FIND_LIBRARY(GA_LIBRARIES NAMES ga PATHS
    $ENV{HOME}/build/lib
    /opt/local/lib
    )

if (GA_INCLUDE_DIR AND GA_LIBRARIES)
    set (GA_FOUND true)
endif (GA_INCLUDE_DIR AND GA_LIBRARIES)

if (GA_FOUND)
    if (NOT GA_FIND_QUIETLY)
        message(STATUS "Found ga: ${GA_LIBRARIES}")
    endif(NOT GA_FIND_QUIETLY)
else (GA_FOUND)
   if (GA_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find ga")
    endif(GA_FIND_REQUIRED)
endif(GA_FOUND) 
