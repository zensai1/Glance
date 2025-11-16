##>glance:game/phase/phase1
execute as @a at @s run playsound minecraft:entity.wither.spawn record @s
scoreboard players add フェーズ Znsi.Phase 1
team modify Znsi.Phase suffix {"color":"yellow","text":" - 待機中"}
execute as @a[gamemode=adventure] at @s run give @s arrow 3
scoreboard players set 残り時間： Znsi.Timer 120
schedule function glance:game/timer/remove 1s
data modify storage glance: game.State set value "待機中"