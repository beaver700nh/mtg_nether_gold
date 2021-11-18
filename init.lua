local NETHER_CEILING = tonumber(minetest.settings:get("nether_depth_ymax") or  -5000)
local NETHER_FLOOR   = tonumber(minetest.settings:get("nether_depth_ymin") or -11000)

local ORE_CEILING = NETHER_CEILING - 128
local ORE_FLOOR   = NETHER_FLOOR   + 128

minetest.register_node(
  "mtg_nether_gold:gold_ore",
  {
    description = "Nether Gold Ore",
    tiles = {"nether_rack.png^mtg_nether_gold_gold_ore.png"},
    groups = {cracky = 2},
    drop = {
      max_items = 1,
      items = {
        {items = {"default:gold_lump 3"}, rarity = 6},
        {items = {"default:gold_lump 2"}, rarity = 3},
        {items = {"default:gold_lump 1"}, rarity = 0},
      },
    },
    sounds = default.node_sound_stone_defaults(),
  }
)

minetest.register_ore(
  {
    ore_type       = "scatter",
    ore            = "mtg_nether_gold:gold_ore",
    wherein        = "nether:rack",
    clust_scarcity = 11 * 11 * 11,
    clust_num_ores = 6,
    clust_size     = 2,
    y_max          = ORE_CEILING,
    y_min          = ORE_FLOOR,
  }
)

minetest.register_node(
  "mtg_nether_gold:gold_ore_deep",
  {
    description = "Deep Nether Gold Ore",
    tiles = {"nether_rack_deep.png^mtg_nether_gold_gold_ore.png"},
    groups = {cracky = 2},
    drop = {
      max_items = 1,
      items = {
        {items = {"default:gold_ingot 2"}, rarity = 6},
        {items = {"default:gold_lump 3"},  rarity = 3},
        {items = {"default:gold_lump 1"},  rarity = 0},
      },
    },
    sounds = default.node_sound_stone_defaults(),
  }
)

minetest.register_ore(
  {
    ore_type       = "scatter",
    ore            = "mtg_nether_gold:gold_ore_deep",
    wherein        = "nether:rack_deep",
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 6,
    clust_size     = 2,
    y_max          = ORE_CEILING,
    y_min          = ORE_FLOOR,
  }
)
