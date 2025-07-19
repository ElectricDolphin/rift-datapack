execute as @n[tag=attacker] store result score @s rift_time run data get entity @s data.RiftTimeDamage
scoreboard players operation @s rift_time -= @n[tag=attacker] rift_time
function rift:rift_time/display_rift_time