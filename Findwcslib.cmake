FIND_PATH(WCSLIB_INCLUDE_DIR wcslib/wcs.h  wcslib/wcshdr.h
    $ENV{HOME}/build/include
    /usr/local/include
    )

FIND_LIBRARY(WCSLIB_LIBRARIES 
    NAMES 
    wcs 
    PATHS 
    /usr/local/lib
    $ENV{HOME}/build/lib64 
    NO_DEFAULT_PATH
    )

if (WCSLIB_INCLUDE_DIR AND WCSLIB_LIBRARIES)
    set (WCSLIB_FOUND true)
endif(WCSLIB_INCLUDE_DIR AND WCSLIB_LIBRARIES)



if (WCSLIB_FOUND)
    if (NOT WCSLIB_FIND_QUIETLY)
        message(STATUS "Found wcslib : ${WCSLIB_LIBRARIES}")
    endif(NOT WCSLIB_FIND_QUIETLY)
else (WCSLIB_FOUND)
   if (WCSLIB_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find wcslib")
    endif(WCSLIB_FIND_REQUIRED)
endif(WCSLIB_FOUND) 

