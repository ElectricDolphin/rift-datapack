$data remove storage rift:rift_items_$(UUID) Inventory
$data remove storage rift:rift_items_$(UUID) equipment
$data merge storage rift:rift_items_$(UUID) {Inventory: $(Inventory), equipment: $(equipment)}