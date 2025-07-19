give @s wooden_pickaxe[\
    tooltip_display={hidden_components:["attribute_modifiers", "unbreakable"]},\
    lore=[\
        " ",\
        {"color":"gray","italic":false,"translate":"item.modifiers.mainhand"},\
        [{"color":"blue","italic":false,"text":"+5 "}, {translate: "attribute.name.attack_damage"}]\
    ],\
    custom_data={rift_damage: 5, id: "anti_sentient_pickaxe"},\
    attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"}],\
    item_name="Anti-Sentient Pickaxe",\
    tool={\
        rules:[\
            {correct_for_drops:true, speed: 1.5, blocks:"#sword_efficient"},\
            {correct_for_drops:true, speed: 200, blocks:"#sword_instantly_mines"},\
            {correct_for_drops:true, speed: 50, blocks:"cobweb"},\
            {correct_for_drops:true, speed: 8, blocks:"#mineable/pickaxe"}\
        ]\
    },\
    unbreakable={}\
] 1