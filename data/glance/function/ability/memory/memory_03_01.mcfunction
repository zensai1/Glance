#>glance:ability/memory/memory_03_01
#@execution -> glance:ability/memory/memory_02


##記憶使用中にFキーを押さなかった時


playsound minecraft:block.vault.deactivate record @s


##内部処理
    tag @s remove Memory
    tag @s remove Ability_Using
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players remove @s Znsi.MP 3