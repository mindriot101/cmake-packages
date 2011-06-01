FIND_PATH(NR3_INCLUDE_DIR nr/nr3.h 
    $ENV{HOME}/build/include
    )


if (NR3_INCLUDE_DIR)
    set (NR3_FOUND true)
endif(NR3_INCLUDE_DIR)

if (NR3_FOUND)
    if (NOT NR3_FIND_QUIETLY)
        message(STATUS "Found nr3: ${NR3_INCLUDE_DIR}")
    endif(NOT NR3_FIND_QUIETLY)
else (NR3_FOUND)
   if (NR3_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find nr3")
    endif(NR3_FIND_REQUIRED)
endif(NR3_FOUND) 

