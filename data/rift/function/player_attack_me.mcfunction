execute as @p[tag=attacker] run function rift:calculate_rift_damage
execute store result storage rift:data rift_damage int 1 run scoreboard players get @p[tag=attacker] rift_damage
function rift:apply_rift_damage with storage rift:data
team leave @s