execute summon armor_stand run tag @s add restore_armor_stand
$data merge entity @n[type=armor_stand] {equipment: {head: $(item)}}
$item replace entity @s $(slot) from entity @n[type=minecraft:armor_stand, tag=restore_armor_stand] armor.head
kill @n[type=armor_stand, tag=restore_armor_stand]