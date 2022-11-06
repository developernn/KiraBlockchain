# settings
cmake_minimum_required(VERSION 3.22)
project(KiraBlockchain VERSION 1.0.0 LANGUAGES CXX)

set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)
set(CXX_EXTENSIONS OFF)


# path 
set(EXEC_DIR "./app")

# includes
include(FetchContent)


# add external libs
FetchContent_Declare(
    spdlog
    GIT_REPOSITORY  "https://github.com/gabime/spdlog"         
    GIT_TAG         "ad0e89cbfb4d0c1ce4d097e134eb7be67baebb36" # v1.11.0
)
FetchContent_Declare(
    fmt
    GIT_REPOSITORY  "https://github.com/fmtlib/fmt"         
    GIT_TAG         "a33701196adfad74917046096bf5a2aa0ab0bb50" # v9.1.0
)
FetchContent_Declare(
    fort
    GIT_REPOSITORY  "https://github.com/seleznevae/libfort"         
    GIT_TAG         "v0.4.2"
)
FetchContent_Declare(
    toml11
    GIT_REPOSITORY  "https://github.com/ToruNiina/toml11"         
    GIT_TAG         "v3.7.1"
)

FetchContent_MakeAvailable(spdlog fmt fort toml11)

find_package(OpenSSL REQUIRED)


# config 
set(CONFIG_FOLDER "config")
file(COPY ${CONFIG_FOLDER} DESTINATION ${CMAKE_CURRENT_BINARY_DIR})   


# subdirs
add_subdirectory(${EXEC_DIR})













