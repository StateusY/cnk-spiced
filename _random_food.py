import os
import json

# get directory
directory = os.path.dirname(os.path.abspath(__file__))

# base loot table
data = {
    "pools": [
        {
            "rolls": 1,
            "entries": []
        }
    ]
}

# loop
for filename in os.listdir(directory):
    filepath = os.path.join(directory, filename)

    # get file names
    if os.path.isfile(filepath) and filename != "loot_table.json":
        # format and add to object
        name = os.path.splitext(filename)[0]

        data["pools"][0]["entries"].append({
            "type": "minecraft:loot_table",
            "value": f"spiced:food/{name}"
        })

# write
with open(os.path.join(directory, "loot_table.json"), "w", encoding="utf-8") as file:
    json.dump(data, file, indent=2)

print(f"Generated loot_table.json with {len(data['pools'][0]['entries'])} entries.")