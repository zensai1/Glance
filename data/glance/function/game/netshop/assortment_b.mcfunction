#>glance:game/netshop/assortment_b
#@execution -> glance:system/game


##Netshopをリセット
    scoreboard players reset @s Znsi.Netshop


##エメラルドの数をチェック
    execute store result score @s Znsi.Emerald if items entity @s container.* emerald
    execute if score @s Znsi.Emerald matches 0 run tellraw @s {"text":"エメラルドが足りません。","color":"red"}
    execute if score @s Znsi.Emerald matches 0 run playsound minecraft:block.note_block.bass record @s
    execute if score @s Znsi.Emerald matches 0 run return 0


##アイテムを渡す
    loot spawn ~ ~ ~ loot glance:assortment_b
    playsound entity.item.pickup record @s


##エメラルドを回収する
    clear @s emerald 1