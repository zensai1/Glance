#>glance:game/reset


##schedule clear
    schedule clear glance:game/timer/


##全体処理
    data remove storage glance: game.State
    data modify storage glance: State set value "Standby"
    data remove storage glance: Phase.State
    worldborder set 10000000


##スコアボード処理
    scoreboard players set *** Znsi.Phase 0
    scoreboard players set @a Znsi.MaxArrows 1
    scoreboard players set @a Znsi.MaxMP 5
    scoreboard players set @a Znsi.MaxReload 100
    scoreboard players set @a Znsi.Inv 0
    scoreboard players reset @a Znsi.Restraint
    scoreboard players reset @a Znsi.Arrows
    scoreboard players reset @a Znsi.Ability
    scoreboard players reset @a Znsi.Phase
    scoreboard players reset @a Znsi.Reload
    scoreboard players reset @a Znsi.Upgrade
    scoreboard players reset @a Znsi.Rank
    scoreboard players reset @a Znsi.Kill
    scoreboard players reset @a Znsi.Hit
    scoreboard players reset @a Znsi.Deathcount


##Tag処理
    tag @a remove Ability_Using
    tag @a remove Dashing
    tag @a remove Memory
    tag @a remove Reconnaissance
    tag @a remove Reflection
    tag @a remove Seclusion
    tag @a remove Restraint


##attribute処理
    execute as @a at @s run attribute @s scale base reset


##Bossbar
    bossbar set znsi.phase color blue
    bossbar set znsi.phase max 25
    bossbar set znsi.phase visible false


##プレイヤー
    clear @a
    effect clear @a
    effect give @a instant_health 10 240 true
    kill @e[type=happy_ghast]
    advancement revoke @a only glance:ekp


##サプライリセット
    execute as @e[type=interaction] at @s run data remove entity @s data.Player


##GUI
    execute as @a[tag=op] at @s run function glance:gui/
