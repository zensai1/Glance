#>glance:.debug/test
#@execution -> いろいろ

data remove storage glance: LootTable.Supply
data modify storage glance: LootTable.Supply set value {\
  "pools": [\
    {\
      "rolls": 1,\
      "entries": [],\
      "functions": []\
    },\
    {\
      "rolls": 1,\
      "entries": [\
        {\
          "type": "minecraft:loot_table",\
          "value": "glance:recovery_medicine"\
        }\
      ]\
    }\
  ],\
  "functions": []\
}