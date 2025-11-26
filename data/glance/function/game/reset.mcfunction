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
    scoreboard players reset @a Znsi.Arrows
    scoreboard players reset @a Znsi.Ability
    scoreboard players set @a Znsi.MaxArrows 1
    scoreboard players set @a Znsi.MaxMP 5
    scoreboard players reset @a Znsi.Restraint
    scoreboard players set @a Znsi.MaxReload 100
    scoreboard players reset @a Znsi.Phase
    scoreboard players reset @a Znsi.Reload
    scoreboard players reset @a Znsi.Upgrade


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


##持ち物
    clear @a


##サプライリセット
    execute as @e[type=interaction] at @s run data remove entity @s data.Player
