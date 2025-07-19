summon item ~ ~ ~ {Item: {id: "oak_planks"}, Tags: ["craft_item"]}
$item replace entity @n[type=item, tag=craft_item] contents from entity @s player.crafting.$(slot)
tag @n[type=item, tag=craft_item] remove craft_item