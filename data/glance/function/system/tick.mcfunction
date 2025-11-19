#glance:system/tick
#@execution -> minecraft:tick


##初めてログインした人に初期設定を施すよ
    execute if entity @a[tag=!firstlogin] as @a[tag=!firstlogin] at @s run function glance:system/firstlogin


##storageに代入するよ
    execute store result storage glance: Game.Health double 1.0 run scoreboard players get *** Znsi.Health
    execute store result storage glance: Game.Info.Phase int 1.0 run scoreboard players get フェーズ Znsi.Phase
    execute store result storage glance: Game.Info.Timer int 1.0 run scoreboard players get 残り時間： Znsi.Timer
    execute store result storage glance: Game.Info.Remaining int 1.0 if entity @a[gamemode=adventure]


##Stateだよ
    execute if data storage glance: {State:"Standby"} run function glance:system/waiting
    execute if data storage glance: {State:"InGame"} run function glance:system/game with storage glance: Game.Info

##矢のnbtを変更
    execute if entity @e[type=arrow] as @e[type=arrow] at @s run data modify entity @s PierceLevel set value 127b
    execute if entity @e[type=arrow] as @e[type=arrow] at @s run data modify entity @s crit set value 0b
