#>glance:system/area/temp_moving
#@execution -> glance:system/area/set


##前に進む
    $execute if entity @s[scores={Znsi.Range=1..}] run tp @s ^ ^ ^$(Ticks) ~ ~


##スコア減少
    scoreboard players remove @s Znsi.Range 1


##再帰
    execute if entity @s[scores={Znsi.Range=1..}] at @s run function glance:system/area/temp_moving with storage glance: Area


##kill ##エリアの中心を指すように設定
    execute if entity @s[scores={Znsi.Range=0}] run function glance:system/area/desicion
    