FIND_PATH(FITSIO_INCLUDE_DIR fitsio.h PATHS 
    /opt/local/include
    $ENV{HOME}/build/include
    /usr/local/cfitsio-thread # for wasphead
    )

FIND_LIBRARY(FITSIO_LIBRARIES NAMES cfitsio PATHS
    /opt/local/lib
    $ENV{HOME}/build/lib
    /usr/local/cfitsio-thread # for wasphead
    #/sw/lib
    )

if (FITSIO_INCLUDE_DIR AND FITSIO_LIBRARIES)
    set (FITSIO_FOUND true)
endif(FITSIO_INCLUDE_DIR AND FITSIO_LIBRARIES)

if (FITSIO_FOUND)
    if (NOT FITSIO_FIND_QUIETLY)
        message(STATUS "Found fitsio: ${FITSIO_LIBRARIES}")
    endif(NOT FITSIO_FIND_QUIETLY)
else (FITSIO_FOUND)
   if (FITSIO_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find fitsio")
    endif(FITSIO_FIND_REQUIRED)
endif(FITSIO_FOUND) 
