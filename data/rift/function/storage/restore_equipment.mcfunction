execute summon armor_stand run tag @s add equipment_restore_armor_stand
$execute as @n[type=armor_stand,tag=equipment_restore_armor_stand] run data modify entity @s equipment set from storage rift:$(dimension)_items_$(uuid) equipment
item replace entity @s armor.head from entity @n[type=armor_stand, tag=equipment_restore_armor_stand] armor.head
item replace entity @s armor.chest from entity @n[type=armor_stand, tag=equipment_restore_armor_stand] armor.chest
item replace entity @s armor.legs from entity @n[type=armor_stand, tag=equipment_restore_armor_stand] armor.legs
item replace entity @s armor.feet from entity @n[type=armor_stand, tag=equipment_restore_armor_stand] armor.feet
item replace entity @s weapon.offhand from entity @n[type=armor_stand, tag=equipment_restore_armor_stand] weapon.offhand
kill @n[type=armor_stand, tag=equipment_restore_armor_stand]