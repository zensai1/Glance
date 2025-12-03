#>glance:ability/penetration_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow
    scoreboard players reset @s Znsi.Use.Bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..1 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..1 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


##貫通する弾を呼び出す
    execute at @s anchored eyes summon marker run function glance:ability/penetration_02
    playsound minecraft:entity.generic.explode record @s ~ ~ ~ 1 1.5


##kill
    execute at @s run kill @e[type=arrow,limit=1,sort=nearest]


##MPを減らす
    scoreboard players remove @s Znsi.MP 2