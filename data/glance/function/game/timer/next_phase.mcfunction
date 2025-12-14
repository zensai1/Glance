#>glance:game/timer/next_phase
#@execution -> glance:game/timer/

#say next_phase
##Phase0の時だけ
    execute if score *** Znsi.Phase matches 0 run function glance:system/area/
    execute if score *** Znsi.Phase matches 0 run effect clear @a[gamemode=adventure,tag=!Seclusion] resistance
    execute if score *** Znsi.Phase matches 0 run effect clear @a[gamemode=adventure,tag=!Seclusion] invisibility
    execute if score *** Znsi.Phase matches 0 run loot replace entity @a[gamemode=adventure] hotbar.0 loot glance:bow
    execute if score *** Znsi.Phase matches 0 run scoreboard players set @a[gamemode=adventure] Znsi.Reload 99
    


##回復薬入手
    loot give @a[gamemode=adventure] loot glance:recovery_medicine

    
##Phaseを進める
    scoreboard players add *** Znsi.Phase 1
    execute as @a at @s run playsound minecraft:entity.player.levelup record @s


##Bossbar
    execute if score *** Znsi.Phase matches 1..5 run scoreboard players set *** Znsi.Timer 120
    execute if score *** Znsi.Phase matches 1..5 run bossbar set znsi.phase color blue
    execute if score *** Znsi.Phase matches 1..5 run bossbar set znsi.phase max 120
    execute if score *** Znsi.Phase matches 6 run scoreboard players set *** Znsi.Timer 20
    execute if score *** Znsi.Phase matches 6 run bossbar set znsi.phase color red
    execute if score *** Znsi.Phase matches 6 run bossbar set znsi.phase max 20



##Storage
    data remove storage glance: Phase.State


##タイマー減らす
    function glance:game/timer/