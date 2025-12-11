#>glance:game/timer/shrink
#@execution -> glance:game/timer/

#say shirnk
##ボスバーいろいろ変更
    execute if score *** Znsi.Phase matches 1..5 run scoreboard players set *** Znsi.Timer 30
    execute if score *** Znsi.Phase matches 1..5 run bossbar set znsi.phase color red
    execute if score *** Znsi.Phase matches 1..5 run bossbar set znsi.phase max 30
    execute as @a at @s run playsound entity.wither.spawn record @s


##storage変更
    data modify storage glance: Phase.State set value Shrink


##収縮用
    execute if score *** Znsi.Phase matches 1 positioned 192 36 192 unless data storage glance: Debug run summon marker ~ ~ ~ {Tags:["Area_Center"]}
    execute if score *** Znsi.Phase matches 1 positioned 192 36 192 if data storage glance: Debug run summon armor_stand ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["Area_Center"]}
    execute if score *** Znsi.Phase matches 1 run scoreboard players set @e[tag=Area_Center] Znsi.Integer 600
    execute if score *** Znsi.Phase matches 1 run rotate @e[tag=Area_Center,limit=1] facing entity @e[tag=lottery_area,limit=1]


##エリア縮小
    execute if score *** Znsi.Phase matches 1 run worldborder set 350 30
    execute if score *** Znsi.Phase matches 1 run worldborder damage buffer 40
    execute if score *** Znsi.Phase matches 1 run worldborder damage amount 1
    execute if score *** Znsi.Phase matches 2 run worldborder set 250 30
    execute if score *** Znsi.Phase matches 2 run worldborder damage buffer 20
    execute if score *** Znsi.Phase matches 3 run worldborder set 100 30
    execute if score *** Znsi.Phase matches 3 run worldborder damage buffer 10
    execute if score *** Znsi.Phase matches 4 run worldborder set 50 30
    execute if score *** Znsi.Phase matches 4 run worldborder damage buffer 5
    execute if score *** Znsi.Phase matches 5 run worldborder set 20 30
    execute if score *** Znsi.Phase matches 5 run worldborder damage buffer 3
    execute if score *** Znsi.Phase matches 6 run say 最終フェーズ


##タイマー減らす
    function glance:game/timer/