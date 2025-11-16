#>glance:ability/reflection_02_02
#@execution -> Advancement


##パリィに成功したのでMP減少小
    tag @s remove Reflection
    tag @s remove Ability_Using
    scoreboard players remove @s Znsi.MP 1
    playsound item.shield.block record @s