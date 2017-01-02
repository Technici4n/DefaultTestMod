#pragma once

#include "api/api.hpp"

/* BLOCKS */
typedef unsigned int(_cdecl *register_block_t)(const char*);

namespace gltest
{
  namespace api
  {
    void load_blocks();
    
    register_block_t register_block;
  }
}
