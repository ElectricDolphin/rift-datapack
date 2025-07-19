import json
import os

# print(os.listdir("./data/rift/worldgen/biome"))
for k in os.listdir("./data/rift/worldgen/biome"):
    if (not k.endswith(".json")):
        continue
    curFile = open("./data/rift/worldgen/biome/" + k, "r")
    fileJSON = json.load(curFile)
    fileJSON["downfall"] = 0.5
    fileJSON["has_precipitation"] = False
    fileJSON["effects"]["sky_color"] = 0
    fileJSON["effects"]["fog_color"] = 10518688
    fileJSON["effects"]["water_color"] = 4159204
    fileJSON["effects"]["water_fog_color"] = 329011
    if "foliage_color" in fileJSON["effects"].keys():
        print(k)
    fileJSON["effects"]["music"] = [
        {
            "data": {
                "sound": "minecraft:music.end",
                "min_delay": 0,
                "max_delay": 0,
                "replace_current_music": False
            },
            "weight": 1
        }
    ]
    fileJSON["spawners"] = {
        "ambient": [],
        "axolotls": [],
        "creature": [],
        "misc": [],
        "monster": [],
        "underground_water_creature": [],
        "water_ambient": [],
        "water_creature": []
    }
    for i in fileJSON["features"]:
        for j in range(len(i)):
            i[j] = str.replace(i[j], "minecraft:", "rift:")
    curFile.close()
    curFilew = open("./data/rift/worldgen/biome/" + k, "w")
    curFilew.write(json.dumps(fileJSON, indent=4))
    curFilew.close()