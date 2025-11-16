#>glance:ability/reflection_02_01
#@execution -> glance:system/game


##パリィに失敗したのでMP減少大
    tag @s remove Reflection
    tag @s remove Ability_Using
    scoreboard players remove @s Znsi.MP 3
    playsound minecraft:block.glass.break record @s ~ ~ ~ 1 0.5