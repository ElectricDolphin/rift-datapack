execute unless items entity @s weapon.offhand poisonous_potato[custom_data={is_rift_menu: 1b}] run item replace entity @s player.cursor from entity @s hotbar.8

execute if items entity @s weapon.offhand poisonous_potato[custom_data={is_rift_menu: 1b}] run item replace entity @s weapon.offhand from entity @s hotbar.8

item replace entity @s hotbar.8 with poisonous_potato[custom_data={is_rift_menu: 1b}, item_model="lilac", item_name="Rift Menu", consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]}, !food]

execute unless items entity @s player.cursor * unless entity @s[tag=entering_rift] run dialog show @s rift:rift_menu

kill @n[type=item,nbt={Item: {components: {"minecraft:custom_data": {is_rift_menu: 1b}}}}]