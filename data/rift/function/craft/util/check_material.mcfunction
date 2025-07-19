scoreboard players set return data 0
scoreboard players set itemsFound data 0

function rift:craft/util/store_player_inventory with entity @s

execute store result score inv_index data run data get storage rift:craft_info inv_index
function rift:craft/util/check_item_recursive with storage rift:craft_info

$execute if score itemsFound data matches $(count).. run scoreboard players set return data 1

# $execute if items entity @s inventory.* $(item)[count~{min:$(count)}, $(components)] run scoreboard players set return data 1
# $execute if items entity @s hotbar.* $(item)[count~{min:$(count)}, $(components)] run scoreboard players set return data 1
# $execute if items entity @s weapon.offhand $(item)[count~{min:$(count)}, $(components)] run scoreboard players set return data 1