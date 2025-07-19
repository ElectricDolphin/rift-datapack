$damage @s $(Damage) generic_kill
execute unless entity @s[nbt={Health: 20f}] run scoreboard players set @s exit_rift_damage 0
execute if score @s exit_rift_damage matches 0 run scoreboard players set @s exit_rift_damage 0