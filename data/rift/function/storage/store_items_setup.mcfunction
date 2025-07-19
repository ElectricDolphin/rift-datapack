execute store result storage rift:store_items_info UUID int 1 run data get entity @s UUID[0]
data remove storage rift:store_items_info Inventory
data remove storage rift:store_items_info equipment
data remove storage rift:store_items_info active_effects
$data merge storage rift:store_items_info {Inventory: $(Inventory)}
execute if data entity @s equipment run function rift:storage/store_equipment with entity @s
execute unless data entity @s equipment run data merge storage rift:store_items_info {equipment: {}}
execute if data entity @s active_effects run data modify storage rift:store_items_info active_effects set from entity @s active_effects
execute unless data entity @s active_effects run data merge storage rift:store_items_info {active_effects: []}