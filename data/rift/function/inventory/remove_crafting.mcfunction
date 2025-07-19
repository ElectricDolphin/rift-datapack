execute if items entity @s player.crafting.0 * run function rift:inventory/spawn_item_from_craft_grid {slot: 0}
execute if items entity @s player.crafting.1 * run function rift:inventory/spawn_item_from_craft_grid {slot: 1}
execute if items entity @s player.crafting.2 * run function rift:inventory/spawn_item_from_craft_grid {slot: 2}
execute if items entity @s player.crafting.3 * run function rift:inventory/spawn_item_from_craft_grid {slot: 3}

item replace entity @s player.crafting.0 with air
item replace entity @s player.crafting.1 with air
item replace entity @s player.crafting.2 with air
item replace entity @s player.crafting.3 with air