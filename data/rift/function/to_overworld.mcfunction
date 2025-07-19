execute unless dimension rift:the_rift run return fail

effect clear
attribute @s fall_damage_multiplier modifier remove rift:rift_fall_resistance
attribute @s oxygen_bonus modifier remove rift:no_drowning

function rift:storage/store_items_setup with entity @s
function rift:storage/store_rift_items with storage rift:store_items_info

execute in minecraft:overworld run tp @s ~ ~ ~

clear
function rift:storage/restore_overworld_items
function rift:storage/restore_effects with storage rift:restore_storage_info

scoreboard players remove # rift_time 1
execute if score # rift_time matches ..0 run schedule clear rift:rift_time/tick_rift_time
title @s actionbar ""
