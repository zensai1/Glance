#>glance:ability/haste/haste_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..3 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..3 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


#OhMyDat召喚!
    function #oh_my_dat:please


##矢の所持数を一時的に増やす
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Haste.Arrows int 1 run scoreboard players get @s Znsi.MaxArrows
    scoreboard players add @s Znsi.MaxArrows 2


##リロード速度を一時的に早く
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Haste.Reload int 1 run scoreboard players get @s Znsi.MaxReload
    scoreboard players set @s Znsi.Reload 0
    scoreboard players set @s Znsi.MaxReload 40


##内部処理
    tag @s add Haste
    tag @s add Ability_Using
    scoreboard players set @s Znsi.Integer 2
    scoreboard players set @s Znsi.Decimal 0
    effect give @s speed 21 1 true