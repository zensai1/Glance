#>glance:.debug/mp_rec
#@execution -> glance:system/game


##MPを最大まで回復
    scoreboard players operation @s Znsi.MP = @s Znsi.MaxMP
    scoreboard players reset @s Znsi.MPRec
    loot replace entity @s weapon.mainhand loot glance:debug/mp_rec
    scoreboard players reset @s Znsi.Use.Echo_shard
    playsound minecraft:item.honey_bottle.drink record @s