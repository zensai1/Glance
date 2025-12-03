#>glance:game/upgrade/inventory
#@execution -> glance:system/game


##内部処理
    scoreboard players reset @s Znsi.QuickAction
    scoreboard players set @s Znsi.Page 0


##エメラルドの数を数える
    execute store result score @s Znsi.Emerald if items entity @s container.* emerald


##return
    execute if score @s Znsi.Emerald matches ..1 run tellraw @s {"color":"red","text":"エメラルドが不足しています"}
    execute if score @s Znsi.Emerald matches ..1 run return 0
    execute if score @s Znsi.Upgrade matches 0 run tellraw @s {"color":"red","text":"アップグレード回数が上限です"}
    execute if score @s Znsi.Upgrade matches 0 run return 0
    execute if score @s Znsi.Inv matches 4.. run tellraw @s {"color":"red","text":"これ以上強化できません"}
    execute if score @s Znsi.Inv matches 4.. run return 0


##アップグレート中動けないように
    attribute @s jump_strength base set 0.0
    attribute @s movement_speed base set 0.0


##upgrade中のtagを付ける
    tag @s add Upgrading
    tag @s add UPGR_inv


##時間設定
    scoreboard players set @s Znsi.UpgradeTimer 120
    playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1