$function rift:craft/util/remove_material with storage rift:craft_info items[$(index)]

$scoreboard players set index data $(index)
scoreboard players add index data 1
execute store result storage rift:craft_info index int 1 run scoreboard players get index data

$execute if score index data matches ..$(count) run function rift:craft/util/remove_material_recursive with storage rift:craft_info