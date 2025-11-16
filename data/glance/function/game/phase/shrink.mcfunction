##>glance:game/phase/shrink
team modify Znsi.Phase suffix {"color":"yellow","text":" - 縮小中"}
execute as @a at @s run playsound entity.wither.spawn record @s

#範囲縮小
    execute if score フェーズ Znsi.Phase matches 1 run worldborder set 300 60
    execute if score フェーズ Znsi.Phase matches 2 run worldborder set 150 60
    execute if score フェーズ Znsi.Phase matches 3 run worldborder set 75 60
    execute if score フェーズ Znsi.Phase matches 4 run worldborder set 30 60
    execute if score フェーズ Znsi.Phase matches 5 run worldborder set 15 60

scoreboard players set 残り時間： Znsi.Timer 60
schedule function glance:game/timer/remove 1s
data remove storage glance: game.State