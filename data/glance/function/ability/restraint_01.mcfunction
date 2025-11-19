#>glance:ability/restraint_01
#@execution -> glance:system/game


##抑制TAGを外す
    tag @s remove Restraint
    playsound minecraft:block.fire.extinguish record @s
    

##内部処理
    scoreboard players reset @s Znsi.Restraint