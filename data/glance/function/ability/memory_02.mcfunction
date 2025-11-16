#>glance:ability/memory_02
#@execution -> glance:system/game


##内部処理
    scoreboard players reset @s Znsi.20ticks


##小数が0だったら整数を1減少

    execute if score @s Znsi.Decimal matches 0 if score @s Znsi.Integer matches 1.. run scoreboard players remove @s Znsi.Integer 1

    execute if score @s Znsi.Decimal matches 0 run scoreboard players set @s Znsi.Decimal 10


##小数が1以上だったら小数を1減少
    execute if score @s Znsi.Decimal matches 1.. run scoreboard players remove @s Znsi.Decimal 1

    execute if score @s Znsi.Decimal matches 0 if score @s Znsi.Integer matches 0 run function glance:ability/memory_03_01