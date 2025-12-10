#>glance:ability/replacement/replacement_02
#@execution -> glance:system/ability


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


##だれにもあててなかったら中止
    execute unless score @s Znsi.Replacement matches 1.. run tellraw @s {"color":"red","text":"入れ替える相手がいない..."}
    execute unless score @s Znsi.Replacement matches 1.. run return 0


##対象が死んでたら中止
    $execute if entity @a[scores={Znsi.ID=$(Replacement)},tag=!Alive,gamemode=spectator] run tellraw @s {color:red,text:"対象が死亡している..."}
    $execute if entity @a[scores={Znsi.ID=$(Replacement)},tag=!Alive,gamemode=spectator] run return 0


##自分の位置にマーカー
    summon marker ~ ~ ~ {Tags:["MyPos","Replacement"]}


##相手の位置にマーカー
    $execute as @a[scores={Znsi.ID=$(Replacement)}] at @s run summon marker ~ ~ ~ {Tags:["TargetPos","Replacement"]}


##まず自分から
    tp @s @e[type=marker,tag=TargetPos,limit=1]


##次に矢を
    $tp @a[scores={Znsi.ID=$(Replacement)}] @e[type=marker,tag=MyPos,limit=1]


##マーカーを消す
    kill @e[tag=Replacement]


##内部処理
    execute positioned as @s run playsound block.respawn_anchor.deplete record @s
    scoreboard players remove @s Znsi.MP 3
    scoreboard players reset @s Znsi.Replacement