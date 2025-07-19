$data merge storage rift:craft_info {inventory: $(Inventory)}
execute store result score inv_count data run data get entity @s Inventory
execute store result storage rift:craft_info max_index int 1 run scoreboard players add inv_count data 1
data merge storage rift:craft_info {inv_index: 0}