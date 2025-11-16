#>glance:ability/tensho_0
#@execution -> glance:system/game


##内部処理
    scoreboard players reset @s Znsi.10ticks


##小数が9だったら整数を1上昇
    execute if score @s Znsi.Decimal matches 9 run scoreboard players add @s Znsi.Integer 1
    execute if score @s Znsi.Decimal matches 9 run scoreboard players set @s Znsi.Decimal -1


##小数が9未満だったら小数を1上昇
    execute if score @s Znsi.Decimal matches ..8 run scoreboard players add @s Znsi.Decimal 1


