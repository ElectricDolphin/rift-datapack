execute summon armor_stand run tag @s add test_armor_stand
execute as @n[type=armor_stand, tag=test_armor_stand] run item replace entity @s armor.head with acacia_boat
item replace entity @s hotbar.8 from entity @n[type=minecraft:armor_stand, tag=test_armor_stand] armor.head
kill @n[type=armor_stand, tag=test_armor_stand]