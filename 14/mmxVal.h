#pragma once
#include <cstdint>
#include <stddef.h>

union mmxVal {
    int8_t   i8[8];
    int16_t  i16[4];
    int32_t  i32[2];
    int64_t  i64;

    uint8_t  u8[8];
    uint16_t u16[4];
    uint32_t u32[2];
    uint64_t u64;

    char* toString_i8(char *s,  size_t len);
    char* toString_i16(char *s, size_t len);
    char* toString_i32(char *s, size_t len);
    char* toString_i64(char *s, size_t len);

    char* toString_u8(char *s,  size_t len);
    char* toString_u16(char *s, size_t len);
    char* toString_u32(char *s, size_t len);
    char* toString_u64(char *s, size_t len);

    char* toString_x8(char *s,  size_t len);
    char* toString_x16(char *s, size_t len);
    char* toString_x32(char *s, size_t len);
    char* toString_x64(char *s, size_t len);
};