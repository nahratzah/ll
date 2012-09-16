cmake_minimum_required (VERSION 2.6)
project (LL)

include_directories (include)

#
# Glibc requires all kinds of feature macros to be defined.
# Whatever happened to sane defaults?
#
add_definitions (-D_REENTRANT -D_GNU_SOURCE)

#
# Compiler detection: clang and gcc compilers will generate warnings/errors.
#
if ("${CMAKE_C_COMPILER}" MATCHES "clang$" OR "${CMAKE_C_COMPILER_ID}" STREQUAL "Clang")
	set(CMAKE_COMPILER_IS_CLANG 1)
	unset(CMAKE_COMPILER_IS_GNUCC)
endif ("${CMAKE_C_COMPILER}" MATCHES "clang$" OR "${CMAKE_C_COMPILER_ID}" STREQUAL "Clang")
if ("${CMAKE_CXX_COMPILER}" MATCHES "clang(\\+\\+)?$" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
	set(CMAKE_COMPILER_IS_CLANGXX 1)
	unset(CMAKE_COMPILER_IS_GNUCXX)
endif ("${CMAKE_CXX_COMPILER}" MATCHES "clang(\\+\\+)?$" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")

#
# Try to add std c11 and c++11 flags, to enable atomics.
#
include (CheckCCompilerFlag)
include (CheckCXXCompilerFlag)
check_c_compiler_flag("-std=c11" STD_C11)
check_cxx_compiler_flag("-std=c++11" STD_CXX11)
mark_as_advanced (STD_C11 STD_CXX11)
if (STD_C11)
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11")
endif (STD_C11)
if (STD_CXX11)
	set (CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -std=c++11")
endif (STD_CXX11)

list (APPEND headers
	include/ll.h
	)
list (APPEND srcs
	src/ll.c
	)

if (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_CLANG)
	set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g -fno-omit-frame-pointer")
	set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0 -g -fno-omit-frame-pointer")
	set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wno-missing-noreturn -Wno-unused -Wno-unused-parameter -Wsign-compare -Wuninitialized -Wno-unused-value")
	set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Wextra -Wall -Werror-implicit-function-declaration -Wno-missing-noreturn -Wno-unused-value -Wno-unused-parameter -Wno-unused-label")
	if (NOT USE_EMBEDDED_EV)
		set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Werror")
		set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Werror")
	endif (NOT USE_EMBEDDED_EV)
endif (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_CLANG)
if (CMAKE_COMPILER_IS_CLANG)
	set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wno-tautological-compare")
	set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Wno-tautological-compare")
endif (CMAKE_COMPILER_IS_CLANG)
if (WIN32)
	set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /Zi")
	set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /Zi")
	set (CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG} /DEBUG")
	set (CMAKE_SHARED_LINKER_FLAGS_DEBUG "${CMAKE_SHARED_LINKER_FLAGS} /DEBUG")
	set (CMAKE_MODULE_LINKER_FLAGS_DEBUG "${CMAKE_MODULE_LINKER_FLAGS_DEBUG} /DEBUG")
	# C++ throws exception, C never throws exceptions: /EHsc
	# Use multiple CPUs during compilation
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc /MP")
	# Disable incremental linking
	set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LARGEADDRESSAWARE /NXCOMPAT /INCREMENTAL:NO")
	set (CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /LARGEADDRESSAWARE /NXCOMPAT /INCREMENTAL:NO")
	set (CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /LARGEADDRESSAWARE /NXCOMPAT /INCREMENTAL:NO")
endif (WIN32)

add_library (ll
	${srcs}
	${headers}
	)
set_property (TARGET ll PROPERTY VERSION "0.0")
set_property (TARGET ll PROPERTY SOVERSION "0.0")

install (TARGETS ll
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib)
install (FILES ${headers} DESTINATION include)

option (BUILD_TESTING "Build regression tests." ON)
if (BUILD_TESTING)
	add_subdirectory (test)
	enable_testing ()
endif (BUILD_TESTING)
