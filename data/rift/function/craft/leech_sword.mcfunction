function rift:craft/util/check_materials {items: [\
    {item: "minecraft:arrow", count: 12, id: "deadgehog_spine"}, \
    {item: "minecraft:poisonous_potato", count: 4, id: "leech_fragment"}, \
    {item: "minecraft:wooden_pickaxe", count: 1, id: "wyld_sword"} \
]}

execute if score return data matches 1 run function rift:give/leech_sword