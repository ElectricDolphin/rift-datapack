execute unless data storage rift:restore_storage_info effects[0] run return fail

execute store result score temp_num data run data get storage rift:restore_storage_info effects[0].duration
execute store result storage rift:restore_storage_info effects[0].duration int 1 run scoreboard players operation temp_num data /= 20 data
execute if score temp_num data matches -1 run data modify storage rift:restore_storage_info effects[0].duration set value "infinite"
execute unless data storage rift:restore_storage_info effects[0].amplifier run data modify storage rift:restore_storage_info effects[0].amplifier set value 0

execute unless data storage rift:restore_storage_info effects[0].ambient run function rift:storage/restore_effect with storage rift:restore_storage_info effects[0]

data remove storage rift:restore_storage_info effects[0]
function rift:storage/restore_effects_recursive