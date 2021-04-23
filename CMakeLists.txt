cmake_minimum_required(VERSION 2.8.12)
project(spatialite LANGUAGES C)

find_package(Qt5 COMPONENTS Core REQUIRED)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

file(GLOB CPPSources *.cpp)
file(GLOB HSources *.h)

add_library(qt-qml-models STATIC ${CPPSources} ${HSources})
target_include_directories(qt-qml-models PUBLIC ./)
target_link_libraries(qt-qml-models PRIVATE Qt5::Core)
