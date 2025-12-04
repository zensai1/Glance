#glance:game/start
#@execution -> glance:system/waiting


##MAPにてレポートするよ
    worldborder set 450
    tp @a 192 85 192


#観戦の人
    gamemode spectator @a[gamemode=!adventure]


##プレイヤーに対して実行
    team join Player @a[gamemode=adventure]
    tag @a[gamemode=adventure] add Alive
    loot replace entity @a[gamemode=adventure] armor.chest loot glance:flight
    effect give @a[gamemode=adventure] invisibility infinite 255 true
    execute as @a[gamemode=adventure] at @s run function glance:system/inv_limit
    clear @a bow
    scoreboard players set @a[gamemode=adventure] Znsi.MaxArrows 1
    scoreboard players set @a[gamemode=adventure] Znsi.MP 5
    scoreboard players set @a[gamemode=adventure] Znsi.MaxMP 5
    scoreboard players set @a[gamemode=adventure] Znsi.MaxReload 100
    scoreboard players set @a[gamemode=adventure] Znsi.MaxMPRec 100
    scoreboard players set @a[gamemode=adventure] Znsi.Inv 0
    scoreboard players set @a[gamemode=adventure] Znsi.Ability 0
    scoreboard players set @a[gamemode=adventure] Znsi.Hit 0
    scoreboard players set @a[gamemode=adventure] Znsi.Kill 0
    scoreboard players set @a[gamemode=adventure] Znsi.Upgrade 6
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


##TItle
    execute as @a at @s run title @s title {"bold":true,"color":"gold","text":"GAME START"}
    execute as @a at @s run playsound entity.wither.spawn record


    function glance:system/area/