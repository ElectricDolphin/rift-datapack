$data remove storage rift:overworld_items_$(UUID) Inventory
$data remove storage rift:overworld_items_$(UUID) equipment
$data remove storage rift:overworld_items_$(UUID) effects
$data merge storage rift:overworld_items_$(UUID) {effects: []}
$data merge storage rift:overworld_items_$(UUID) {Inventory: $(Inventory), equipment: $(equipment), effects: $(active_effects)}
$data modify storage rift:overworld_items_$(UUID) Health set from entity @s Health
$execute store result storage rift:overworld_items_$(UUID) Level int 1 run xp query @s levels
$execute store result storage rift:overworld_items_$(UUID) XP int 1 run xp query @s points