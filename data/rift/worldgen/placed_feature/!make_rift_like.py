import json
import os

# print(os.listdir("./data/rift/worldgen/biome"))
for k in os.listdir("./data/rift/worldgen/placed_feature"):
    if (not k.endswith(".json")):
        continue
    curFile = open("./data/rift/worldgen/placed_feature/" + k, "r")
    fileJSON = json.load(curFile)
    fileJSON["feature"] = str.replace(fileJSON["feature"], "minecraft:", "rift:")
    curFile.close()
    curFilew = open("./data/rift/worldgen/placed_feature/" + k, "w")
    curFilew.write(json.dumps(fileJSON, indent=4))
    curFilew.close()