#>glance:ability/reflection_02_02
#@execution -> Advancement


##パリィに成功したのでMP減少小
    tag @s remove Reflection
    tag @s remove Ability_Using
    effect give @s regeneration 1 30 true
    effect give @s resistance 1 255 true
    tag @s add Recovery
    scoreboard players remove @s Znsi.MP 1
    scoreboard players set @s Znsi.Timer 0
    scoreboard players set @s Znsi.Rec 0
    playsound item.shield.block record @s


##Attacker Tag付与
    execute on attacker run tag @s add Attacker
    execute on attacker run tag @s add NotGive


##BLOCK ログ表示
    tellraw @a ["[",{"color":"gray","text":"BLOCK"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"}]
    execute as @a at @s run playsound item.shield.block record @s


##内部処理
    execute on attacker run tag @s remove Attacker