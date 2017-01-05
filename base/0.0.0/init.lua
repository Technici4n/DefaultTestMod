gltest.register_item({
    name = "base:shovel_dirt",
    model = {
      name = "gltest:itemicon",
      options = { texture = "base:shovel_dirt.png" }
    },
    properties = 1,
    max_stack_size = 1,
    block_dig_time = function(itemstack, blockstack)
      return itemstack.get_attribute("shovel_harvestable") and blockstack.hardness * 0.9 or blockstack.hardness end
    on_block_dig = function(itemstack, blockstack)
      itemstack.props[0] = itemstack.props[0] - 1
      if itemstack.props[0] <= 0 then itemstack.clear() end
      return blockstack.get_drops()
    end
  })

gltest.add_item_tooltip("base:shovel_dirt", 8, function(itemstack) return { "[[default:tooltip.uses_left]]\n", itemstack.props[1] } end) -- 8 is the tooltip priority

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
      shovel_harvestable = 1, -- Shovel level necessary to break the block
      hardness = 3.0          -- Hardness units
    },
    get_drops = function(blockstack, toolstack) return "base:dirt" end
  })

gltest.register_block({
    name = "base:dirt",
    model = {
      name = "gltest:cube",
      options = { face = "base:dirt.png" }
    },
    attributes = {
      shovel_harvestable = 1,
      hardness = 3.0
    }
  })