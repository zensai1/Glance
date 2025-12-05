#>glance:ability/restraint/restraint_01
#@execution -> glance:system/game


##抑制TAGを外す
    tag @s remove Restraint
    playsound minecraft:block.chain.break record @s
    

##内部処理
    scoreboard players reset @s Znsi.Restraint