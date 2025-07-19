data merge storage rift:restore_storage_info {dimension: "overworld", index: 0}
execute store result storage rift:restore_storage_info uuid int 1 run data get entity @s UUID[0]
function rift:storage/get_storage_count with storage rift:restore_storage_info

function rift:storage/restore_storage_item_recursive with storage rift:restore_storage_info

function rift:storage/restore_equipment with storage rift:restore_storage_info

function rift:storage/restore_health_and_xp with storage rift:restore_storage_info