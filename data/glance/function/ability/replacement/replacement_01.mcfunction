#>glance:ability/replacement/replacement_01
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


##矢が存在し無かったら中止
    $execute unless entity @e[type=arrow,nbt={Owner:$(UUID)}] run return 0


##自分の位置にマーカー
    summon marker ~ ~ ~ {Tags:["MyPos","Replacement"]}


##矢の位置にマーカー
    $execute as @e[type=arrow,nbt={Owner:$(UUID)}] at @s run summon marker ~ ~ ~ {Tags:["ArrowPos","Replacement"]}


##まず自分から
    tp @s @e[type=marker,tag=ArrowPos,limit=1]


##次に矢を
    $tp @e[type=arrow,nbt={Owner:$(UUID)},limit=1] @e[type=marker,tag=MyPos,limit=1]


##マーカーを消す
    kill @e[tag=Replacement]


##内部処理
    execute positioned as @s run playsound block.respawn_anchor.deplete record @s
    scoreboard players remove @s Znsi.MP 3

