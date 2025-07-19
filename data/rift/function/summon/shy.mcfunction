summon zombie ~ ~ ~ {\
    Silent:1b,\
    equipment:{\
        head:{\
            id:"minecraft:player_head",\
            count:1,\
            components:{\
                "minecraft:profile":{\
                    properties:[\
                        {\
                            name:"textures",\
                            value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2FjOWFkY2Q5NzVhOTE2OTE0YjVkMjlhZGFjZjVmNTJlNzk1MTQ3ODU4MzQ3NjU1MmE0ZjZmZThkOTRmNDhjMmEifX19"\
                        }\
                    ]\
                }\
            }\
        },\
        mainhand:{\
            id:"minecraft:acacia_boat",\
            count:1,\
            components:{\
                "minecraft:enchantments":{\
                    "rift:rift_enemy_enchant":1\
                },\
                "minecraft:item_model":"minecraft:air"\
            }\
        }\
    },\
    drop_chances:{\
        head:0,\
        mainhand:0\
    },\
    active_effects:[\
        {\
            id:"minecraft:invisibility",\
            amplifier:1,\
            duration:-1,\
            show_particles:0b\
        }\
    ],\
    attributes:[\
        {\
            id:"minecraft:attack_damage",\
            base:0.0001\
        },\
        {\
            id:"minecraft:max_health",\
            base: 110\
        }\
    ],\
    IsBaby: 1b,\
    data: {\
        RiftTimeDamage: 5\
    },\
    Health: 110,\
    DeathLootTable: "rift:shy"\
}