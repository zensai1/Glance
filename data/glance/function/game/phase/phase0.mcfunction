##>glance:game/phase/phase0
execute as @a at @s run playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 0.5
scoreboard players set フェーズ Znsi.Phase 1
team modify Znsi.Phase suffix {"color":"yellow","text":" - 待機中"}
effect clear @a invisibility
execute as @a[gamemode=adventure] at @s run loot give @s loot glance:bow
execute as @a[gamemode=adventure] at @s run give @s arrow 3
scoreboard players set 残り時間： Znsi.Timer 120
schedule function glance:game/timer/remove 1s
data modify storage glance: game.State set value "待機中"