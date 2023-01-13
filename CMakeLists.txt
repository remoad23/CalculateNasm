cmake_minimum_required(VERSION 3.23)
project(CalculateNasm C)

enable_language(ASM_NASM)
#set(CMAKE_ASM_NASM_FLAGS_DEBUG "-g -F dwarf")

set(CMAKE_ASM_NASM_OBJECT_FORMAT win32)

set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>")

set(CMAKE_C_STANDARD 99)


set (SOURCES main.c ${ASM_SOURCES})


set_source_files_properties(${ASM_SOURCES} PROPERTIES LANGUAGE ASM_NASM)
set (CMAKE_C_FLAGS "-m32")

add_executable(CalculateNasm main.c main.asm)

