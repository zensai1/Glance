##>glance:game/phase/phase

#フェーズ0のみ実行
    execute if score フェーズ Znsi.Phase matches 0 run effect clear @a invisibility
    execute if score フェーズ Znsi.Phase matches 0 as @a[gamemode=adventure] at @s run loot give @s loot glance:bow


execute as @a at @s run playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 0.5
scoreboard players add フェーズ Znsi.Phase 1
team modify Znsi.Phase suffix {"color":"yellow","text":" - 待機中"}
execute as @a[gamemode=adventure] at @s run give @s arrow 3
scoreboard players set 残り時間： Znsi.Timer 120
schedule function glance:game/timer/remove 1s
data modify storage glance: game.State set value "待機中"