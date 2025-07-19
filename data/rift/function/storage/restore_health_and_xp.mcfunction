# effect give @s instant_health 1 255 true
execute store result score temp_num data run attribute @s max_health get
$execute store result score temp_num_2 data run data get storage rift:overworld_items_$(uuid) Health
scoreboard players operation temp_num data -= temp_num_2 data
execute store result storage rift:restore_storage_info Damage int 1 run scoreboard players get temp_num data

scoreboard players operation @s exit_rift_damage = temp_num data


$data modify storage rift:restore_storage_info Level set from storage rift:overworld_items_$(uuid) Level
$data modify storage rift:restore_storage_info XP set from storage rift:overworld_items_$(uuid) XP
function rift:storage/restore_xp with storage rift:restore_storage_info