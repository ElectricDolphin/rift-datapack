function rift:craft/util/check_materials {items: [\
    {item: "#minecraft:logs", count: 12, id: "rift_wood"}, \
    {item: "minecraft:poisonous_potato", count: 3, id: "rift_wood"} \
]}

execute if score return data matches 1 run function rift:craft/wyld_sword/do_craft
execute if score return data matches 0 run tellraw @s {text: "Insufficient materials!", color: red}

dialog clear @s