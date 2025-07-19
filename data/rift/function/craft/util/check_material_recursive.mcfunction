$data modify storage rift:craft_info reference_item set from storage rift:craft_info items[$(index)]
$function rift:craft/util/check_material with storage rift:craft_info items[$(index)]
execute if score return data matches 0 run return fail
$scoreboard players set index data $(index)
scoreboard players add index data 1
execute store result storage rift:craft_info index int 1 run scoreboard players get index data

scoreboard players set return data 1
$execute if score index data matches ..$(count) run function rift:craft/util/check_material_recursive with storage rift:craft_info