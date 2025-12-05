#>glance:ability/haste/haste_03
#@execution -> glance:ability/haste/haste_02


##燃え尽きたよ...
    effect give @s darkness 5 0 true
    scoreboard players remove @s Znsi.MaxArrows 1
    execute if score @s Znsi.MaxArrows < @s Znsi.Arrows run clear @s arrow 1


##内部処理
    tag @s remove Haste
    tag @s remove Ability_Using
    effect clear @s speed
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players remove @s Znsi.MP 4