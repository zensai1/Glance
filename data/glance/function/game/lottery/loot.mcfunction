#>glance:game/lottery/loot
#@execution -> glance:game/lottery/


##Debug
    #tellraw @a "loot"


##仮置きリセット
    data remove storage glance: LootTable.Temp
    data modify storage glance: LootTable.Temp set value {}


##配列をコピー
    $data modify storage glance: Temp_Ability set from storage glance: Ability.Pool[$(Args)]


##最初は固定
    data modify storage glance: LootTable.Temp.type set value "minecraft:loot_table"


##文字によって変化
    execute if data storage glance: {Temp_Ability:"隠遁"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/01_seclusion"
    execute if data storage glance: {Temp_Ability:"疾駆"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/02_dashing"
    execute if data storage glance: {Temp_Ability:"天翔"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/03_tensho"
    execute if data storage glance: {Temp_Ability:"刹那"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/04_reflection"
    execute if data storage glance: {Temp_Ability:"貫通"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/05_penetration"
    execute if data storage glance: {Temp_Ability:"速射"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/06_rapidfire"
    execute if data storage glance: {Temp_Ability:"偵察"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/07_reconnaissance"
    execute if data storage glance: {Temp_Ability:"記憶"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/08_memory"
    execute if data storage glance: {Temp_Ability:"抑制"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/09_restraint"
    execute if data storage glance: {Temp_Ability:"速攻"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/10_haste"
    execute if data storage glance: {Temp_Ability:"堅固"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/11_solid"
    execute if data storage glance: {Temp_Ability:"入替"} run data modify storage glance: LootTable.Temp.value set value "glance:ability/12_replacement"


##LootTableに入れるよ
    data modify storage glance: LootTable.Supply.pools[0].entries append from storage glance: LootTable.Temp


##loop用
    scoreboard players add $Now Znsi.Distance 1
    #tellraw @a {score:{name:"$Now",objective:Znsi.Distance}}
    execute if score $Now Znsi.Distance <= $MAX_Args Znsi.Distance store result storage glance: LootTable.Args int 1 run scoreboard players get $Now Znsi.Distance
    execute if score $Now Znsi.Distance <= $MAX_Args Znsi.Distance run function glance:game/lottery/loot with storage glance: LootTable
