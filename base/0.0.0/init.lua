gltest.register_tooltype("shovel", { 3.0 }) -- Tool levels need a default mining speed (hardness units / second)

gltest.register_item({
    name = "base:shovel_dirt",
    model = {
      name = "gltest:itemicon",
      options = { texture = "base:shovel_dirt.png" }
    },
    attributes = {
      properties = 1,         -- Defaults to 0. Properties can store any value and are unique for each itemstack/blockstack
      shovel_tool = 1,        -- Can mine any block with the property "shovel_mineable"
      shovel_speed = 3.0,     -- Useless because it overrides 3.0
      shovel_used =           -- When it is used as a shovel
        function(itemstack, block)
          itemstack.props[1] = itemstack.props[1] - 1
          if itemstack.props[1] <= 0 then
            itemstack.clear()
          end
          return itemstack
        end,
      max_stack_size = 1           -- 64 by default
    }
  })

gltest.add_item_tooltip("base:shovel_dirt", function(itemstack) return gltest.translate("[[default:tooltip.uses_left]]", itemstack.props[1]))

gltest.register_block({
    name = "base:grass",
    model = {
      name = "gltest:cube",  -- "gltest:cube" is an API-provided model for cubes. Other models could be defined using a specific file format.
      options = {
        side = "base:grass_side.png",
        top = "base:grass_top.png",
        bottom = "base:dirt.png"
      }
    },
    attributes = {
      shovel_mineable = 1,   -- Shovel level necessary to break the block
      shovel_hardness = 10.0 -- Hardness units (tool specific)
    },
    drops = function(blockstack, toolstack) return ItemStack("base:dirt") end
  })

gltest.register_block({
    name = "base:dirt",
    model = {
      name = "gltest:cube",
      options = { face = "base:dirt.png" }
    },
    attributes = {
      shovel_mineable = 1,
      shovel_hardness = 10.0
    }
  })