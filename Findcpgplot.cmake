FIND_PATH(CPGPLOT_INCLUDE_DIR cpgplot.h 
    PATHS
    /star/include
    /home/astro/phsaap/software/pgplot
    )

FIND_LIBRARY(CPGPLOT_LIBRARIES_PGPLOT 
    NAMES 
    pgplot 
    PATHS
    /home/astro/phsaap/software/pgplot
    /star/lib /sw/lib/pgplot /usr/X11R6/lib
    )

FIND_LIBRARY(CPGPLOT_LIBRARIES_CPGPLOT 
    NAMES 
    cpgplot 
    PATHS
    /home/astro/phsaap/software/pgplot
    /star/lib /sw/lib/pgplot /usr/X11R6/lib
    )

FIND_LIBRARY(CPGPLOT_LIBRARIES_X11 
    NAMES 
    X11 
    PATHS
    /star/lib /sw/lib/pgplot /usr/X11R6/lib
    )

FIND_LIBRARY(CPGPLOT_LIBRARIES_PNG
    NAMES
    png
    PATHS
    /usr/lib64
    )

set(CPGPLOT_LIBRARIES
    ${CPGPLOT_LIBRARIES_PGPLOT}
    ${CPGPLOT_LIBRARIES_CPGPLOT}
    ${CPGPLOT_LIBRARIES_X11}
    ${CPGPLOT_LIBRARIES_PNG}
    )



if (CPGPLOT_INCLUDE_DIR AND CPGPLOT_LIBRARIES)
    set (CPGPLOT_FOUND true)
endif(CPGPLOT_INCLUDE_DIR AND CPGPLOT_LIBRARIES)

if (CPGPLOT_FOUND)
    if (NOT CPGPLOT_FIND_QUIETLY)
        message(STATUS "Found cpgplot: ${CPGPLOT_LIBRARIES}")
    endif(NOT CPGPLOT_FIND_QUIETLY)
else (CPGPLOT_FOUND)
   if (CPGPLOT_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find cpgplot")
    endif(CPGPLOT_FIND_REQUIRED)
endif(CPGPLOT_FOUND) 
