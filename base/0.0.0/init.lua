gltest.register_block({
    name = "base:grass",
    model = {
      name = "gltest:cube", -- "gltest:cube" is an API-provided model for cubes. Other models could be defined using a specific file format.
      options = {
        side = "base:grass_side.png",
        top = "base:grass_top.png",
        bottom = "base:dirt.png"
      }
    }
  })

gltest.register_block({
    name = "base:dirt",
    model = {
      name = "gltest:cube",
      options = { face = "base:dirt.png" }
    }
  })