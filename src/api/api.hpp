#pragma once

#ifdef _WIN32
  #include <windows.h>
  #define MOD_EXPORT extern "c" _declspec(dllexport)
#elif
  // TODO
#endif

#define GLTEST_API_VERSION "0.0.0"

/* GENERAL */
typedef void(_cdecl *function_ptr_t)(void);
typedef function_ptr_t(_cdecl *get_api_function_t)(const char*, const char*, const char*);
typedef void(_cdecl *register_api_function_t)(const char*, const char*, const char*, function_ptr_t);

/* WORLD GEN */
typedef void(_cdecl *generate_chunk_t)(int, int, int, long long, unsigned int***);
typedef void(_cdecl *register_world_generator_t)(const char*, generate_chunk_t);

namespace gltest
{
  namespace api
  {
    get_api_function_t get_api_function;
  }
}