#>glance:ability/memory/memory_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..2 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..2 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


#OhMyDat召喚!
    function #oh_my_dat:please
    playsound minecraft:block.vault.activate record @s ~ ~ ~ 1


#今の座標を代入
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Memory.X int 1 run data get entity @s Pos[0]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Memory.Y int 1 run data get entity @s Pos[1]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Memory.Z int 1 run data get entity @s Pos[2]


##内部処理
    tag @s add Memory
    tag @s add Ability_Using
    scoreboard players set @s Znsi.Integer 1
    scoreboard players set @s Znsi.Decimal 5