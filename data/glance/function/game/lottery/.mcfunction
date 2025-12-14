#>glance:lottery/
#@execution -> glance:lottery/get

##Debug
    #tellraw @a "/."


##配列に長さを取得
    execute store result score $MAX_Args Znsi.Distance run data get storage glance: Ability.Pool
    scoreboard players remove $MAX_Args Znsi.Distance 1


##配列[0]から開始
    scoreboard players set $Now Znsi.Distance 0
    execute store result storage glance: LootTable.Args int 1 run scoreboard players get $Now Znsi.Distance
    function glance:game/lottery/loot with storage glance: LootTable