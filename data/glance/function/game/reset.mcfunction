#>glance:game/reset


##schedule clear
    schedule clear glance:game/timer/


##Storage
    data remove storage glance: game.State
    data modify storage glance: State set value "Standby"
    data remove storage glance: LootTable.Supply
    data remove storage glance: Phase.State
    data remove storage glance: Result
    data remove storage glance: Ability.Pool
    data remove storage glance: Pool


##全体処理
    worldborder set 10000000 0
    worldborder center 192.90 192.43

##スコアボード処理
    scoreboard players set *** Znsi.Phase 0
    scoreboard players set @a Znsi.Integer 0
    scoreboard players set @a Znsi.Decimal 0
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
    scoreboard players reset @a Znsi.UpgradeTimer
    scoreboard players reset @a Znsi.Replacement


##Tag処理
    tag @a remove Alive
    tag @a remove Haste
    tag @a remove Ability_Using
    tag @a remove Dashing
    tag @a remove Memory
    tag @a remove Reconnaissance
    tag @a remove Reflection
    tag @a remove Seclusion
    tag @a remove Restraint
    tag @a remove UPGR_inv
    tag @a remove Upgrading
    tag @a remove UPGR_arrow
    tag @a remove UPGR_mp
    tag @a remove UPGR_mp_rec
    tag @a remove UPGR_reload



##attribute処理
    execute as @a at @s run attribute @s scale base reset
    execute as @a at @s run attribute @s movement_speed base reset
    execute as @a at @s run attribute @s jump_strength base reset


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


##area
    kill @e[type=item]
    kill @e[tag=InArea]
    kill @e[tag=Temp_Area]
    kill @e[tag=Area_Center]
    kill @e[tag=lottery_area]
    kill @e[type=arrow]
    kill @e[type=marker]


##Settingとか
    data remove storage glance: Debug