#>glance:ability/dashing_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..4 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..4 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


##内部処理
    tag @s add Dashing
    tag @s add Ability_Using
    scoreboard players set @s Znsi.Integer 1
    scoreboard players set @s Znsi.Decimal 0
    effect give @s speed 11 2 true
    playsound entity.wither.shoot record @s ~ ~ ~ 1 1.2