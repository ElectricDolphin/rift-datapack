execute if dimension rift:the_rift run return fail

tag @s add entering_rift

function rift:storage/store_items_setup with entity @s
function rift:storage/store_overworld_items with storage rift:store_items_info

execute in rift:the_rift run tp @s ~ ~ ~

clear
function rift:storage/restore_rift_items

scoreboard players set @s rift_time 480
# Amount of players in the rift
scoreboard players add # rift_time 1
execute if score # rift_time matches 1 run schedule function rift:rift_time/tick_rift_time 1s

team join rift_neutral

function rift:add_rift_time_from_armor

effect clear
effect give @s saturation infinite 0 true
effect give @s resistance infinite 5 true
effect give @s regeneration 1 255 true
attribute @s fall_damage_multiplier modifier add rift:rift_fall_resistance -1 add_multiplied_total
attribute @s minecraft:oxygen_bonus modifier add rift:no_drowning 99999 add_value

xp set @s 0 points
xp set @s 0 levels

execute unless items entity @s hotbar.8 poisonous_potato[custom_data={is_rift_menu: 1}] run function rift:rift_menu/item/replace_menu

tag @s remove entering_rift