function rift:craft/util/check_materials {items: [\
    {count: 6, id: "nullified_metal"}, \
    {count: 24, id: "wilted_berberis"}, \
    {count: 1, id: "leech_sword"} \
]}

execute if score return data matches 1 run function rift:give/recursive_pickaxe