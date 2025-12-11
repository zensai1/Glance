#>glance:system/area/re_lottery
#@execution -> glance:system/area/re_lottery | desicion


##余分な奴削除
    kill @e[limit=1,sort=random,tag=lottery_area]


##
    execute store result score *** Znsi.Temp if entity @e[type=armor_stand,tag=lottery_area]
    execute if score *** Znsi.Temp matches 2.. run function glance:system/area/re_lottery