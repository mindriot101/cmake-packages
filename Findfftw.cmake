
FIND_PATH(FFTW_INCLUDE_DIR fftw3.h PATHS
    $ENV{HOME}/build/include
    /opt/local/include)

FIND_LIBRARY(FFTW_LIBRARIES fftw3 
    PATHS 
    $ENV{HOME}/lib 
    /opt/local/lib NO_DEFAULT_PATH)

if (FFTW_INCLUDE_DIR AND FFTW_LIBRARIES)
    set (FFTW_FOUND true)
endif(FFTW_INCLUDE_DIR AND FFTW_LIBRARIES)

if (FFTW_FOUND)
    if (NOT FFTW_FIND_QUIETLY)
        message(STATUS "Found fftw: ${FFTW_LIBRARIES}")
    endif(NOT FFTW_FIND_QUIETLY)
else (FFTW_FOUND)
   if (FFTW_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find fftw")
    endif(FFTW_FIND_REQUIRED)
endif(FFTW_FOUND) 
