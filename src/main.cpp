#include "main.hpp"
#include "api/api.hpp"
#include "api/blocks.hpp"

MOD_EXPORT void _cdecl initialize(get_api_function_t get_api_function, register_api_function_t register_api_function)
{
  gltest::api::load_blocks();
  
  unsigned int grass = gltest::api::register_block("default:grass");
  unsigned int dirt = gltest::api::register_block("default:dirt");
  // gltest::api::set_block_texture etc...
}