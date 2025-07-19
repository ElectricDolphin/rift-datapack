execute as @a[nbt={Dimension: "rift:the_rift"}] run function rift:inventory/check_crafting_grid

execute as @a[scores={exit_rift_damage=1..}] run function rift:storage/set_damage

execute if entity @a[nbt={Dimension: "rift:the_rift"}] in rift:the_rift run function rift:tick_rift