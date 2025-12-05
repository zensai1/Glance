#>glance:ability/rapidfire/rapidfire_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow
    scoreboard players reset @s Znsi.Use.Bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..2 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..2 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


##矢を確認
    execute if score @s Znsi.Arrows matches 0 run tellraw @s {"color":"red","text":"矢がありません"}
    execute if score @s Znsi.Arrows matches 0 run return 0


##Motionを計算する
    execute store result storage glance: Ability.Rapidfire.Score int 1.0 run scoreboard players get @s Znsi.ID
    execute at @s summon marker run function glance:ability/rapidfire/rapidfire_02


##UUID取得
    data modify storage glance: Ability.Rapidfire.UUID set from entity @s UUID


##矢を発射
    function glance:ability/rapidfire/rapidfire_03 with storage glance: Ability.Rapidfire


##矢を消す
    clear @s arrow 1


##内部処理
    scoreboard players remove @s Znsi.MP 3