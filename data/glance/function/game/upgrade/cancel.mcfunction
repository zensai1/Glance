#>glance:game/upgrade/cancel
#@execution -> glance:system/game


##Tagを消す
    tag @s remove Upgrading
    tag @s remove UPGR_arrow
    tag @s remove UPGR_mp
    tag @s remove UPGR_mp_rec
    tag @s remove UPGR_reload

    scoreboard players reset @s Znsi.UpgradeTimer


##attributeも戻す
    attribute @s jump_strength base reset
    attribute @s movement_speed base reset


playsound minecraft:entity.generic.extinguish_fire record @s