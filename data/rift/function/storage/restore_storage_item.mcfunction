$execute store result score # slot run data get storage rift:$(dimension)_items_$(uuid) Inventory[$(index)].Slot
$data merge storage rift:restore_items_info {index: $(index)}

execute store result storage rift:restore_items_info slot_num int 1 run scoreboard players get # slot
data merge storage rift:restore_items_info {id: "hotbar"}
execute if score # slot matches 9.. run data merge storage rift:restore_items_info {id: "inventory"}
execute if score # slot matches 9.. run scoreboard players remove # slot 9
execute store result storage rift:restore_items_info slot_num int 1 run scoreboard players get # slot

$data merge storage rift:restore_items_info {index: $(index)}

# Sets the slot
function rift:storage/restore_storage_item_sub1 with storage rift:restore_items_info
# Puts the item into main storage
$function rift:storage/restore_storage_item_sub2 with storage rift:$(dimension)_items_$(uuid) Inventory[$(index)]
# Add components if it has any
$execute if data storage rift:$(dimension)_items_$(uuid) Inventory[$(index)].components run function rift:storage/restore_storage_item_sub3 with storage rift:$(dimension)_items_$(uuid) Inventory[$(index)]

# Finally, add the item to the player's inventory
function rift:storage/restore_inventory_item with storage rift:restore_items_info