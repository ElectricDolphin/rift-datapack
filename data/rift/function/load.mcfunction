scoreboard objectives add slot dummy
scoreboard objectives add index dummy
scoreboard objectives add rift_time dummy "Rift Time"
scoreboard objectives add rift_time_minutes dummy
scoreboard objectives add rift_time_seconds dummy
scoreboard objectives add rift_damage dummy
scoreboard objectives add data dummy
scoreboard objectives add exit_rift_damage dummy

scoreboard players set 1 data 1
scoreboard players set # rift_time_minutes 60
scoreboard players set 20 data 20

team add rift_neutral
team modify rift_neutral seeFriendlyInvisibles false
team modify rift_neutral friendlyFire false