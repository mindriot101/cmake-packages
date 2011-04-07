FIND_PATH(FFTWF_INCLUDE_DIR fftw3.h PATHS
    $ENV{HOME}/build/include
    /opt/local/include
    )

FIND_LIBRARY(FFTWF_LIBRARIES fftw3f PATHS 
    $ENV{HOME}/build/lib
    /opt/local/lib
    NO_DEFAULT_PATH
    NO_SYSTEM_ENVIRONMENT_PATH
    )

if (FFTWF_INCLUDE_DIR AND FFTWF_LIBRARIES)
    set (FFTWF_FOUND true)
endif(FFTWF_INCLUDE_DIR AND FFTWF_LIBRARIES)

if (FFTWF_FOUND)
    if (NOT FFTWF_FIND_QUIETLY)
        message(STATUS "Found fftwf: ${FFTWF_LIBRARIES}")
    endif(NOT FFTWF_FIND_QUIETLY)
else (FFTWF_FOUND)
   if (FFTWF_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find fftw")
    endif(FFTWF_FIND_REQUIRED)
endif(FFTWF_FOUND) 
