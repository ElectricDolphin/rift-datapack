$scoreboard players set # index $(index)
# If we got all items, exit recursive function
$execute if score # index matches $(item_count).. run return fail

function rift:storage/restore_storage_item with storage rift:restore_storage_info

# Increase index and run the function again
execute store result storage rift:restore_storage_info index int 1 run scoreboard players add # index 1
function rift:storage/restore_storage_item_recursive with storage rift:restore_storage_info