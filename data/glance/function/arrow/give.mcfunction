#>glance:arrow/give
#@execution -> glance:system/game


##このままだとバリアブロックに上書きされちゃう!
    #scoreboard players set @s Znsi.Arrows -1

##矢を渡す
    execute if score @s Znsi.Arrows matches 1 run give @s arrow 1
    execute if score @s Znsi.Arrows matches 0 run item replace entity @s hotbar.8 with arrow
    execute if score @s Znsi.Arrows matches 0 run playsound minecraft:entity.item.pickup master @s

##リセット
    scoreboard players reset @s Znsi.Reload