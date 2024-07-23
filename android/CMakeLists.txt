cmake_minimum_required(VERSION 3.4.1)  # For example.
set(CMAKE_SYSTEM_NAME ANDROID)
set(CMAKE_CXX_STANDARD 11)

add_library( native_freeze

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             ../ios/Classes/ui_thread_stacktrace.c 
             ../ios/Classes/symbolicate.c
             )
target_include_directories( native_freeze PUBLIC 
    ${CMAKE_SOURCE_DIR}/../ios/Classes
)