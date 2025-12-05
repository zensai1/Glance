#>glance:ability/dashing/dashing_03
#@execution -> glance:system/game


##Motionの値を設定
    scoreboard players set $strength hb.Motion 20000
    function #p_motion:looking


##内部処理
    tag @s remove Dashing
    tag @s remove Ability_Using
    effect clear @s speed
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players remove @s Znsi.MP 2