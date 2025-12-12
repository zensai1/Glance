#>glance:ability/haste/haste_03
#@execution -> glance:ability/haste/haste_02


##燃え尽きたよ...
    execute if entity @s[tag=!Haste_Kill] run effect give @s darkness 5 0 true


##矢の所持数を戻す    
    $scoreboard players set @s Znsi.MaxArrows $(Arrows)
    execute if score @s Znsi.MaxArrows < @s Znsi.Arrows run clear @s arrow 1


##リロード速度を戻す
    $scoreboard players set @s Znsi.MaxReload $(Reload)
    scoreboard players set @s Znsi.Reload 0


##内部処理
    tag @s remove Haste
    tag @s remove Haste_Kill
    tag @s remove Ability_Using
    effect clear @s speed
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players remove @s Znsi.MP 4