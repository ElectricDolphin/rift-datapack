# Compare strings, if the second command fails, both ids are the same
data modify storage rift:data test_string set from storage rift:craft_info reference_item.id
execute store success storage rift:craft_info doesnt_have_item byte 1 run data modify storage rift:data test_string set from storage rift:craft_info cur_item.id

# Add to count
execute store result score result data run data get storage rift:craft_info doesnt_have_item
$execute if score result data matches 0 run scoreboard players add itemsFound data $(count)


# tellraw @a {score: {name: result, objective: data}}
# tellraw @a {score: {name: itemsFound, objective: data}}