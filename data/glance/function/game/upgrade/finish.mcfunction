#>glance:game/upgrade/finish
#@execution -> glance:system/game


##音
    playsound minecraft:entity.player.levelup record @s


##アップグレード内容によって
    execute if entity @s[tag=UPGR_arrow] run scoreboard players add @s Znsi.MaxArrows 1

    execute if entity @s[tag=UPGR_reload] run scoreboard players remove @s Znsi.MaxReload 20

    execute if entity @s[tag=UPGR_mp] run scoreboard players add @s Znsi.MaxMP 2

    execute if entity @s[tag=UPGR_mp_rec] run scoreboard players remove @s Znsi.MaxMPRec 20

    scoreboard players remove @s Znsi.Upgrade 1

##Tagを消す
    tag @s remove Upgrading
    tag @s remove UPGR_arrow
    tag @s remove UPGR_mp
    tag @s remove UPGR_mp_rec
    tag @s remove UPGR_reload

    scoreboard players reset @s Znsi.UpgradeTimer
    clear @s emerald 3


##attributeも戻す
    attribute @s jump_strength base reset
    attribute @s movement_speed base reset