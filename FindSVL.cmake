FIND_PATH(SVL_INCLUDE_DIR SVL.h
    PATHS 
    /opt/local/include
    $ENV{HOME}/build/include
    /usr/local/include
    PATH_SUFFIXES
    svl
    )

FIND_LIBRARY(SVL_LIBRARIES NAMES svl PATHS
    $ENV{HOME}/build/lib/mysql
    /opt/local/lib
    /opt/local/lib/mysql5/mysql
    /usr/lib64
    /usr/local/lib
    NO_DEFAULT_PATH
    )



if (SVL_INCLUDE_DIR AND SVL_LIBRARIES)
    set (SVL_FOUND true)
endif(SVL_INCLUDE_DIR AND SVL_LIBRARIES)


if (SVL_FOUND)
    if (NOT SVL_FIND_QUIETLY)
        message(STATUS "Found SVL: ${SVL_LIBRARIES}")
    endif(NOT SVL_FIND_QUIETLY)
else (SVL_FOUND)
   if (SVL_FIND_REQUIRED)
       message(FATAL_ERROR "Could not find SVL")
    endif(SVL_FIND_REQUIRED)
endif(SVL_FOUND) 
