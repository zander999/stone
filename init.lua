

minetest.register_node("stone:stone", {
	description = "small bit of stone",
	tiles = {
		"default_stone.png",
		"default_stone.png",
		"default_furnace_bottom.png",
		"default_furnace_bottom.png",
		"default_furnace_bottom.png",
		"default_furnace_bottom.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.125, -0.1875, 0.125},
		}
	}
})

minetest.register_craft({
	output = "stone:stone 20",
	recipe = {
		{"", "default:stone",""},
		{"default:stone", "default:stone", "default:stone"},
		{"", "default:stone", ""},
	}
})
minetest.register_craft({
	output = "default:stone",
	recipe = {
		{"stone:stone", "stone:stone","stone:stone"},
		{"stone:stone", "stone:stone", "stone:stone"},
		{"stone:stone", "stone:stone", "stone:stone"},
	}
})