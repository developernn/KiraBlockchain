set(SOURCE_FILES "main.cpp")
set(COMPILER_FLAGS -Wall -Wextra -Wpedantic -Werror -Wconversion -O2)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} spdlog fmt OpenSSL::SSL fort toml11)

target_compile_options(${PROJECT_NAME} PRIVATE ${COMPILER_FLAGS})


