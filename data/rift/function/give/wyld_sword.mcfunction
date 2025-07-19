give @s wooden_pickaxe[\
    tooltip_display={hidden_components:["attribute_modifiers", "unbreakable"]},\
    lore=[\
        " ",\
        {"color":"gray","italic":false,"translate":"item.modifiers.mainhand"},\
        [{"color":"blue","italic":false,"text":"+2 "}, {translate: "attribute.name.attack_damage"}]\
    ],\
    custom_data={rift_damage: 2, id: "wyld_sword"},\
    attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"}],\
    item_name="Wyld Sword",\
    item_model="minecraft:wooden_sword",\
    tool={\
        can_destroy_blocks_in_creative:false,\
        rules:[\
            {correct_for_drops:true, speed: 1.5, blocks:"#sword_efficient"},\
            {correct_for_drops:true, speed: 200, blocks:"#sword_instantly_mines"},\
            {correct_for_drops:true, speed: 50, blocks:"cobweb"}\
        ]\
    },\
    unbreakable={}\
] 1