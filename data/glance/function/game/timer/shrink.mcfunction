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


##エリア縮小
    execute if score *** Znsi.Phase matches 1 run worldborder set 350 30
    execute if score *** Znsi.Phase matches 2 run worldborder set 250 30
    execute if score *** Znsi.Phase matches 3 run worldborder set 100 30
    execute if score *** Znsi.Phase matches 4 run worldborder set 50 30
    execute if score *** Znsi.Phase matches 5 run worldborder set 20 30
    execute if score *** Znsi.Phase matches 6 run worldborder set 1 30


##タイマー減らす
    function glance:game/timer/