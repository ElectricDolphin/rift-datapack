execute as @p at @s run item replace entity @n[type=zombie] armor.head from entity @p player.cursor
execute if items entity @p player.cursor * run say "Replaced item!"
# item replace entity @p player.cursor with acacia_boat 1