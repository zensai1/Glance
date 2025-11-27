#glance:game/start
#@execution -> glance:system/waiting


##MAPにてレポートするよ
    worldborder set 450
    tp @a 192 85 192


##プレイヤーに対して実行
    team join Player @a[gamemode=adventure]
    loot replace entity @a[gamemode=adventure] armor.chest loot glance:flight
    effect give @a[gamemode=adventure] invisibility infinite 255 true
    execute as @a[gamemode=adventure] at @s run function glance:system/inv_limit
    scoreboard players set @a[gamemode=adventure] Znsi.MaxArrows 1
    scoreboard players set @a[gamemode=adventure] Znsi.MP 5
    scoreboard players set @a[gamemode=adventure] Znsi.MaxMP 5
    scoreboard players set @a[gamemode=adventure] Znsi.MaxReload 100
    scoreboard players set @a[gamemode=adventure] Znsi.MaxMPRec 100
    scoreboard players set @a[gamemode=adventure] Znsi.Ability 0
    scoreboard players set @a[gamemode=adventure] Znsi.Hit 0
    scoreboard players set @a[gamemode=adventure] Znsi.Kill 0
    execute store result score *** Znsi.Rank if entity @a[gamemode=adventure]
    execute store result score *** Znsi.Temp if entity @a[gamemode=adventure]


##タイマーを動かす
    bossbar set znsi.phase players @a
    bossbar set znsi.phase visible true
    data modify storage glance: Phase.State set value Shrink
    scoreboard players set *** Znsi.Timer 45
    bossbar set znsi.phase max 45
    function glance:game/timer/


##storage
    data modify storage glance: State set value "InGame"