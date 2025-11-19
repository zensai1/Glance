#>glance:game/reset


##全体処理
    data remove storage glance: game.State
    data modify storage glance: State set value "Standby"
    worldborder set 10000000


##スコアボード処理
    scoreboard players reset フェーズ Znsi.Phase
    scoreboard players reset @a Znsi.Arrows
    scoreboard players reset @a Znsi.Ability
    scoreboard players reset @a Znsi.MaxArrows
    scoreboard players reset @a Znsi.MaxMP
    scoreboard players reset @a Znsi.Restraint
    scoreboard players reset @a Znsi.MaxReload
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
    execute as @a at @s run attribute @s generic.scale base reset
