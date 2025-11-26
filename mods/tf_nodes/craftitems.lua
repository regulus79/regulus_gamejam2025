




for i = 1, 4 do
	core.register_craftitem("tf_nodes:stick" .. i, {
		description = "Stick",
		inventory_image = "tf_stick" .. i .. ".png",
		groups = {stick = 1},
	})
end


for i = 1, 5 do
	core.register_craftitem("tf_nodes:stones" .. i, {
		description = "Stones",
		inventory_image = "tf_stones" .. i .. ".png",
		groups = {stone = 1},
		on_place = function(itemstack, placer, pointed_thing)
			itemstack:take_item()
			core.item_place(ItemStack("tf_nodes:stone" .. i .. "_boulder" .. math.random(1, tf_nodes.num_boulders)), placer, pointed_thing)
			return itemstack
		end
	})
	core.register_craft({
		type = "shapeless",
		output = "tf_nodes:stone" .. i,
		recipe = {"tf_nodes:stones" .. i, "tf_nodes:stones" .. i, "tf_nodes:stones" .. i, "tf_nodes:stones" .. i},
	})
end



