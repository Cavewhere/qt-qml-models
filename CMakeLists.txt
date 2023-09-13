cmake_minimum_required(VERSION 3.10)
project(QtQmlModels)

# Add static library
add_library(QtQmlModels STATIC)

set_target_properties(QtQmlModels PROPERTIES
    AUTOMOC ON
    AUTORCC ON
    AUTOUIC ON
)

# Specify source files
target_sources(QtQmlModels PRIVATE
    QQmlObjectListModel.cpp
    QQmlVariantListModel.cpp
    QQmlGadgetListModel.cpp
    QQmlObjectListModel.h
    QQmlVariantListModel.h
    QQmlGadgetListModel.h
    QQmlQListVariantConverter.h
    QtQmlTricksPlugin_SmartDataModels.h
)

# Specify include directories
target_include_directories(QtQmlModels PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Find Qt packages
find_package(Qt5 COMPONENTS Core Qml REQUIRED)

# Add dependencies
target_link_libraries(QtQmlModels PUBLIC
    Qt5::Core Qt5::Qml)
