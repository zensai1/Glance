#>glance:game/timer/shrink
#@execution -> glance:game/timer/

#say shirnk
##ボスバーいろいろ変更
    scoreboard players set *** Znsi.Timer 30
    bossbar set znsi.phase color red
    bossbar set znsi.phase max 30
    execute as @a at @s run playsound entity.wither.spawn record @s


##storage変更
    data modify storage glance: Phase.State set value Shrink


##収縮用
    execute if score *** Znsi.Phase matches 1 positioned 192 36 192 run summon marker ~ ~ ~ {Tags:["Area_Center"]}
    execute if score *** Znsi.Phase matches 1 run scoreboard players set @e[tag=Area_Center] Znsi.Integer 600


##エリア縮小
    execute if score *** Znsi.Phase matches 1 run worldborder set 350 30
    execute if score *** Znsi.Phase matches 1 run worldborder damage buffer 20
    execute if score *** Znsi.Phase matches 2 run worldborder set 250 30
    execute if score *** Znsi.Phase matches 2 run worldborder damage buffer 10
    execute if score *** Znsi.Phase matches 3 run worldborder set 100 30
    execute if score *** Znsi.Phase matches 3 run worldborder damage buffer 5
    execute if score *** Znsi.Phase matches 4 run worldborder set 50 30
    execute if score *** Znsi.Phase matches 4 run worldborder damage buffer 3
    execute if score *** Znsi.Phase matches 5 run worldborder set 20 30
    execute if score *** Znsi.Phase matches 5 run worldborder damage buffer 2
    execute if score *** Znsi.Phase matches 6 run worldborder set 1 30
    execute if score *** Znsi.Phase matches 6 run worldborder damage buffer 1


##タイマー減らす
    function glance:game/timer/