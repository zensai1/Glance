#>glance:system/area/moving
#@execution -> glance:system/game


##前に進む
    $execute if entity @s[scores={Znsi.Integer=1..}] run tp @s ^ ^ ^$(Ticks) ~ ~
    #execute if score @s Znsi.Integer matches 590..600 run say moving


##スコア減少
    scoreboard players remove @s Znsi.Integer 1


##エリアの中心をここに
    worldborder center ~ ~