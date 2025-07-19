scoreboard players remove @s rift_time 1
scoreboard players operation @s rift_time_minutes = @s rift_time
scoreboard players operation @s rift_time_minutes /= # rift_time_minutes
scoreboard players operation @s rift_time_seconds = @s rift_time
scoreboard players operation @s rift_time_minutes *= # rift_time_minutes
scoreboard players operation @s rift_time_seconds -= @s rift_time_minutes
scoreboard players operation @s rift_time_minutes /= # rift_time_minutes

execute if score @s rift_time matches ..-1 at @s run function rift:to_overworld
# execute if score @s rift_time matches ..-1 run return run say 1

function rift:rift_time/display_rift_time