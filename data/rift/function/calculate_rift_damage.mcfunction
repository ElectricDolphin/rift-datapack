scoreboard players set @s rift_damage 20

execute if data entity @s SelectedItem.components.minecraft:custom_data.rift_damage store result score rift_damage data run data get entity @s SelectedItem.components.minecraft:custom_data.rift_damage
scoreboard players operation @s rift_damage += rift_damage data