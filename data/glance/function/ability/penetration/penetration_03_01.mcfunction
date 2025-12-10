#>glance:ability/penetration/penetration_03_01
#
#
#@execution -> glance:system/game | glance:ability/penetration/penetration_03_01


##パーティクル
    function glance:ability/penetration/penetration_03_02


##前に進む
    execute if entity @s[scores={Znsi.Range=1..}] run tp @s ^ ^ ^0.5 ~ ~


##スコア減少
    scoreboard players remove @s Znsi.Range 1


##命中したかどうか
    #execute if entity @p[distance=..1.2] run function glance:ability/penetration_04_01
    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[type=!ender_dragon,dx=0,sort=nearest,limit=1,gamemode=adventure] positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[dx=0,sort=nearest,limit=1,gamemode=adventure] run function glance:ability/penetration/penetration_04_01



##再帰
    execute if entity @s[scores={Znsi.Range=1..}] at @s run function glance:ability/penetration/penetration_03_01


##kill
    execute if entity @s[scores={Znsi.Range=0}] run kill @s