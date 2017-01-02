#include "api/blocks.hpp"

register_block_t gltest::api::register_block;

void gltest::api::load_blocks()
{
  using namespace gltest::api;
  
  register_block = (register_block_t)get_api_function("gltest", GLTEST_API_VERSION, "register_block");
}