function rift:craft/util/check_materials {items: [{item: "minecraft:oak_log", count: 20, id: "rift_wood"}]}


function rift:craft/util/check_materials {items: [{item: "minecraft:oak_log", count: 12, id: "rift_wood"}, {item: "minecraft:acacia_door", count: 18, id: "test"}]}
# Not inline version:
function rift:craft/util/check_materials {items: [\
    {item: "minecraft:oak_log", count: 12, id: "rift_wood"}, \
    {item: "minecraft:acacia_door", count: 18, id: "test"} \
]}