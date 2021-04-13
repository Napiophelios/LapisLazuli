screwdriver = screwdriver or {}

if minetest.settings:get_bool("enable_lapis_mod_columns") then
    dofile(minetest.get_modpath("lapislazuli").."/columns.lua")
end

----------
--Nodes
----------

minetest.register_node( "lapislazuli:lapis_block",  {
   description = "Lapis with Calcite",
   tiles = {"lapis_block.png"},
   paramtype = "light",
   is_ground_content = true,
   groups = {cracky = 3},
   drop = {
		max_items = 1,
		items = {
			{items = {'lapislazuli:lapis_stone'}, rarity = 10},
			{items = {'lapislazuli:lapis_cobble'}},
		},
	},
   sounds = default.node_sound_stone_defaults()
})

minetest.register_node( "lapislazuli:lapis_brick",  {
   description = "Lapis Brick",
   tiles = {
   "lapis_brick_top.png",
   "lapis_brick_top.png^[transformFXR90",
   "lapis_brick_side.png",
   "lapis_brick_side.png^[transformFX",
   "lapis_brick.png^[transformFX",
   "lapis_brick.png"
   },
   paramtype = "light",
   paramtype2 = "facedir",
   place_param2 = 0,
   on_rotate = screwdriver.rotate_simple,
   is_ground_content = false,
   groups = {cracky = 3},
   sounds = default.node_sound_stone_defaults()
})

minetest.register_node( "lapislazuli:lapis_cobble",  {
   description = "Cobbled Lapis",
   tiles = {
   "lapis_cobble.png",
   "lapis_cobble.png^[transformFY",
   "lapis_cobble.png^[transformFX",
   "lapis_cobble.png",
   "lapis_cobble.png^[transformFX",
   "lapis_cobble.png"
   },
   paramtype = "light",
   is_ground_content = false,
   groups = {cracky = 3},
   sounds = default.node_sound_stone_defaults()
})

minetest.register_node( "lapislazuli:lazurite_block",  {
   description = "Lazurite",
   tiles = {"lapis_lazurite_block.png"},
   paramtype = "light",
   is_ground_content = true,
   groups = {cracky = 3},
   sounds = default.node_sound_stone_defaults()
})

minetest.register_node( "lapislazuli:lazurite_brick",  {
   description = "Lazurite Brick",
   tiles = {
   "lapis_lazurite_brick_top.png",
   "lapis_lazurite_brick_top.png^[transformFXR90",
   "lapis_lazurite_brick_side.png",
   "lapis_lazurite_brick_side.png^[transformFX",
   "lapis_lazurite_brick.png^[transformFX",
   "lapis_lazurite_brick.png"
   },
   paramtype = "light",
   paramtype2 = "facedir",
   place_param2 = 0,
   on_rotate = screwdriver.rotate_simple,
   is_ground_content = false,
   groups = {cracky = 3},
   sounds = default.node_sound_stone_defaults()
})

minetest.register_node( "lapislazuli:lapis_tile",  {
   description = "Lapis Floor Tile",
   tiles = {"lapis_tile.png" },
   is_ground_content = false,
   paramtype = 'light',
   groups = {cracky = 3},
   sounds = default.node_sound_stone_defaults()
   })

minetest.register_node( "lapislazuli:pyrite_ore",  {
   description = "Pyrite Ore",
   tiles = {"default_stone.png^lapis_mineral_pyrite.png" },
   paramtype = "light",
   is_ground_content = true,
   drop= 'lapislazuli:pyrite_lump 2',
   groups = {cracky = 2},
   sounds = default.node_sound_stone_defaults() ,
})

minetest.register_node( "lapislazuli:pyrite_block",  {
   description = "Pyrite Block",
   tiles = {
   "lapis_pyrite_sacred.png",
   "lapis_pyrite_sacred.png",
   "lapis_pyrite_block.png"
   },
   paramtype = "light",
   paramtype2 = "facedir",
   place_param2 = 0,
   is_ground_content = false,
   groups = {cracky = 2},
   sounds = default.node_sound_metal_defaults({
     footstep = {name = "default_hard_footstep", gain = 0.5},
     place = {name = "default_place_node_hard", gain = 1.0},
   }),
})
--Unused Rosace Stone from Darkage mod
minetest.register_node("lapislazuli:rosace", {
	description = "Rose Stone",
	tiles = {"lapis_rosace_front.png",
	"lapis_rosace_front.png",
	"lapis_rosace_side.png^[transformFX",
	"lapis_rosace_side.png^[transformFYR90",
	"lapis_rosace_side.png^[transformFY",
	"lapis_rosace_side.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

-------------------
--Stairs & Slabs
-------------------
-- Add support for Stairs Plus (in More Blocks), by Worldblender
	if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("lapis", "lapis_block", "lapislazuli:lapis_block", {
	description = ("Lapis with Calcite"),
	tiles = {"lapis_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "lapis_brick", "lapislazuli:lapis_brick", {
	description = ("Lapis Brick"),
	tiles = {"lapis_brick_top.png",
   "lapis_brick_top.png^[transformFXR90",
   "lapis_brick_side.png",
   "lapis_brick_side.png^[transformFX",
   "lapis_brick.png^[transformFX",
   "lapis_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "lapis_cobble", "lapislazuli:lapis_cobble", {
	description = ("Cobbled Lapis"),
	tiles = {"lapis_cobble.png",
   "lapis_cobble.png^[transformFY",
   "lapis_cobble.png^[transformFX",
   "lapis_cobble.png",
   "lapis_cobble.png^[transformFX",
   "lapis_cobble.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "lapis_lazurite_block", "lapislazuli:lazurite_block", {
	description = ("Lazurite"),
	tiles = {"lapis_lazurite_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "lapis_lazurite_brick", "lapislazuli:lazurite_brick", {
	description = ("Lazurite Brick"),
	tiles = {"lapis_lazurite_brick_top.png",
   "lapis_lazurite_brick_top.png^[transformFXR90",
   "lapis_lazurite_brick_side.png",
   "lapis_lazurite_brick_side.png^[transformFX",
   "lapis_lazurite_brick.png^[transformFX",
   "lapis_lazurite_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "lapis_tile", "lapislazuli:lapis_tile", {
	description = ("Lapis Floor Tile"),
	tiles = {"lapis_tile.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("lapis", "pyrite_block", "lapislazuli:pyrite_block", {
	description = ("Pyrite Block"),
	tiles = {"lapis_pyrite_block.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_metal_defaults({
     footstep = {name = "default_hard_footstep", gain = 0.5},
     place = {name = "default_place_node_hard", gain = 1.0}}),
	})

-- Fall back to default stairs if moreblocks is not installed or enabled
	elseif minetest.get_modpath("stairs") then

	stairs.register_stair_and_slab("lapis_block", "lapislazuli:lapis_block",
	{cracky = 3},
	{"lapis_block.png"},
	"Lapis Stair",
	"Lapis Slab",
	default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("lapis_brick", "lapislazuli:lapis_brick",
	{cracky = 3},
	{"lapis_brick.png"},
	"Lapis Brick Stair",
	"Lapis Brick Slab",
	default.node_sound_stone_defaults())
	
	stairs.register_stair_and_slab("lapis_cobble", "lapislazuli:lapis_cobble",
	{cracky = 3},
	{"lapis_cobble.png"},
	"Lapis Cobble Stair",
	"Lapis Cobble Slab",
	default.node_sound_stone_defaults())
	
	stairs.register_stair_and_slab("lazurite", "lapislazuli:lazurite_block",
	{cracky = 3},
	{"lapis_lazurite_block.png"},
	"Lazurite Stair",
	"Lazurite Slab",
	default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("lazurite_brick", "lapislazuli:lazurite_brick",
	{cracky = 3},
	{"lapis_lazurite_brick.png"},
	"Lazurite Brick Stair",
	"Lazurite Brick Slab",
	default.node_sound_stone_defaults())
	end

---------------
-- Crafts Items
---------------

minetest.register_craftitem("lapislazuli:lapis_stone", {
	description = "Lapis Gemstone",
	inventory_image = "lapis_stone.png",
})

minetest.register_craftitem("lapislazuli:pyrite_ingot", {
	description = "Pyrite Ingot",
	inventory_image = "lapis_pyrite_ingot.png",
})

minetest.register_craftitem("lapislazuli:pyrite_lump", {
	description = "Fool's Gold",
	inventory_image = "lapis_pyrite_nugget.png",
})

----------
-- Crafts
----------

minetest.register_craft({
	output = 'lapislazuli:lazurite_block',
	recipe = {
		{'lapislazuli:lapis_stone', 'lapislazuli:lapis_stone', 'lapislazuli:lapis_stone'},
		{'lapislazuli:lapis_stone', 'lapislazuli:pyrite_lump', 'lapislazuli:lapis_stone'},
		{'lapislazuli:lapis_stone', 'lapislazuli:lapis_stone', 'lapislazuli:lapis_stone'},
	}
})

minetest.register_craft({
	output = 'lapislazuli:lapis_stone 9',
	recipe = {
		{'lapislazuli:lapis_block'},
	}
})

minetest.register_craft({
	output = 'lapislazuli:lapis_brick 4',
	recipe = {
		{ 'lapislazuli:lapis_block', 'lapislazuli:lapis_block'},
		{ 'lapislazuli:lapis_block', 'lapislazuli:lapis_block'},
	}
})

minetest.register_craft({
	output = 'lapislazuli:lazurite_brick 4',
	recipe = {
		{ '', 'lapislazuli:lapis_brick', ''},
		{ 'lapislazuli:lapis_brick', 'lapislazuli:pyrite_lump', 'lapislazuli:lapis_brick'},
		{ '', 'lapislazuli:lapis_brick', ''},
	}
})

minetest.register_craft({
	output = 'lapislazuli:lapis_tile 2',
	recipe = {
		{ 'lapislazuli:lazurite_brick'},
	}
})

minetest.register_craft({
	output = 'lapislazuli:pyrite_block',
	recipe = {
		{'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot'},
		{'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot'},
		{'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot', 'lapislazuli:pyrite_ingot'},
	}
})

minetest.register_craft({
	output = 'lapislazuli:pyrite_ingot 6',
	recipe = {
		{'lapislazuli:pyrite_block'},
	}
})

minetest.register_craft({
	output = "lapislazuli:rosace_stone 4",
	recipe = {
		{ "lapislazuli:pyrite_ingot", "lapislazuli:lapis_stone", "lapislazuli:pyrite_ingot" },
		{ "lapislazuli:lapis_stone", "lapislazuli:pyrite_ingot", "lapislazuli:lapis_stone" },
		{ "lapislazuli:pyrite_ingot", "lapislazuli:lapis_stone", "lapislazuli:pyrite_ingot" },
	}
})

minetest.register_craft({
	output = 'dye:blue 2',
	recipe = {
		{'lapislazuli:lapis_stone'},
	}
})

------------
-- Cooking
------------

minetest.register_craft({
	type = 'cooking',
	output = 'lapislazuli:lapis_block',
	recipe = 'lapislazuli:lapis_cobble',
})

minetest.register_craft({
	type = "cooking",
	output = "lapislazuli:pyrite_ingot",
	recipe = "lapislazuli:pyrite_lump",
})

--------------------
-- Ore Generation
--------------------

--lapis
--Sheet ore registration
minetest.register_ore({
		ore_type = "sheet",
		ore = "lapislazuli:lapis_block",
		wherein = "default:stone",
		column_height_min = 1,
		column_height_max = 3,
		column_midpoint_factor = 0.5,
		y_min = -500,
		y_max = 200,
		noise_threshhold = 1.25,
		noise_params = {offset=0, scale=2, spread={x=20, y=20, z=10}, seed= 10 , octaves=2, persist=0.8}
	})

-- pyrite
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lapislazuli:pyrite_ore",
		wherein      = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -50,
		y_max          = -10,
	})

			minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lapislazuli:pyrite_ore",
		wherein        = "default:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -150,
		y_max          = -51,
	})

----------
--Aliases
----------

minetest.register_alias("lapislazuli:lapis_paver", "lapislazuli:lapis_cobble")
minetest.register_alias("lapislazuli:lazurite", "lapislazuli:lapis_block")
minetest.register_alias("lapislazuli:pyrite_sacred","lapislazuli:pyrite_block")
minetest.register_alias("lapislazuli:pyrite_coin","lapislazuli:pyrite_ingot")
minetest.register_alias("lapislazuli:sacred_ore", "lapislazuli:lazurite_block")
