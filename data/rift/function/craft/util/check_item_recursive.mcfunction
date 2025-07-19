$execute if score inv_index data matches $(max_index).. run return fail

$function rift:craft/util/store_item with storage rift:craft_info inventory[$(inv_index)]
$execute if data storage rift:craft_info inventory[$(inv_index)].components.minecraft:custom_data.id run function rift:craft/util/store_item_id with storage rift:craft_info inventory[$(inv_index)].components.minecraft:custom_data

execute if data storage rift:craft_info cur_item.id run function rift:craft/util/check_item_recursive_2 with storage rift:craft_info cur_item

execute store result storage rift:craft_info inv_index int 1 run scoreboard players add inv_index data 1
function rift:craft/util/check_item_recursive with storage rift:craft_info