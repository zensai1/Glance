#>glance:system/area/moving
#@execution -> glance:system/game


##前に進む
    $execute if entity @s[scores={Znsi.Integer=1..}] run tp @s ^ ^ ^$(Ticks) ~ ~


##スコア減少
    scoreboard players remove @s Znsi.Integer 1


##エリアのちゅしんをここに
    worldborder center ~ ~