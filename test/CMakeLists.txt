include (CTest)

add_executable (init init.c llobj.h)
target_link_libraries (init ll)
add_test (init init)

add_executable (insert insert.c llobj.h)
target_link_libraries (insert ll)
add_test (insert insert)
