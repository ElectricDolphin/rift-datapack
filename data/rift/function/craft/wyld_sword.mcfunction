function rift:craft/util/check_materials {items: [\
    {item: "#minecraft:logs", count: 12, id: "rift_wood"}, \
    {item: "minecraft:poisonous_potato", count: 3, id: "shy_crux"} \
]}

execute if score return data matches 1 run function rift:give/wyld_sword