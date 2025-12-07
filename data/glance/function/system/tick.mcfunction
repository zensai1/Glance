#glance:system/tick
#@execution -> minecraft:tick


##初めてログインした人に初期設定を施すよ
    execute if entity @a[tag=!firstlogin] as @a[tag=!firstlogin] at @s run function glance:system/firstlogin


##storageに代入するよ
    execute store result storage glance: Game.Info.Phase int 1.0 run scoreboard players get フェーズ Znsi.Phase
    execute store result storage glance: Game.Info.Remaining int 1.0 if entity @a[gamemode=adventure]


##Stateだよ
    function glance:system/ability
    execute if data storage glance: {State:"Standby"} run function glance:system/waiting
    execute if data storage glance: {State:"InGame"} run function glance:system/game with storage glance: Game.Info

##矢のnbtを変更
    execute if entity @e[type=arrow] as @e[type=arrow] at @s run data modify entity @s PierceLevel set value 127b
    execute if entity @e[type=arrow] as @e[type=arrow] at @s run data modify entity @s crit set value 0b
    execute if entity @e[type=arrow] as @e[type=arrow] at @s run data modify entity @s pickup set value 0b


##退室検知
    execute as @a[scores={Znsi.Leave=1..}] at @s run function glance:system/leave
    
