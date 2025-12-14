#>glance;system/area/final
#@execution -> glance:system/game


##前に進む
    execute if entity @s[scores={Znsi.Distance=1..}] run tp @s ^ ^ ^0.15 ~ ~


##スコア減少
    scoreboard players remove @s Znsi.Distance 1


##中心を指定
    worldborder center ~ ~


##Distanceが0だったら方向を再指定
    execute if score @s Znsi.Distance matches 0 run function glance:game/timer/final