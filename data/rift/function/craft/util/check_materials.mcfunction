data remove storage rift:craft_info items
$data merge storage rift:craft_info {items: $(items), index: 0}
execute store result score count data run data get storage rift:craft_info items
scoreboard players remove count data 1
execute store result storage rift:craft_info count int 1 run scoreboard players get count data

function rift:craft/util/check_material_recursive with storage rift:craft_info

execute if score return data matches 1 run function rift:craft/util/all_materials_owned with storage rift:craft_info

execute if score return data matches 0 run tellraw @s {text: "Insufficient materials!", color: red}
execute if score return data matches 0 at @s run playsound minecraft:entity.enderman.teleport ui @s ~ ~ ~ 1 0.5