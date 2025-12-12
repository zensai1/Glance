#>glance:ability/solid_01
#@execution -> glance:system/ability


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP < @s Znsi.MaxMP run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP < @s Znsi.MaxMP run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0


##アトリビュートリセ
    attribute @s max_absorption base reset


##MPを衝撃吸収に
    scoreboard players operation @s Znsi.Absorption = @s Znsi.MP
    scoreboard players operation @s Znsi.Absorption /= #2 Znsi.Health


##端数があるかどうか
    scoreboard players operation #TEMP Znsi.Absorption = @s Znsi.Absorption
    scoreboard players operation #TEMP Znsi.Absorption %= #2 Znsi.Health
    execute if score #TEMP Znsi.Absorption matches 1 run scoreboard players remove @s Znsi.Absorption 1


##Storageに入れる
    execute store result storage glance: Ability.Solid int 1 run scoreboard players get @s Znsi.Absorption


##衝撃吸収をつける
    playsound minecraft:block.anvil.use record @s ~ ~ ~ 1 0.5
    effect give @s absorption 1 20 true
    function glance:ability/solid/solid_02 with storage glance: Ability