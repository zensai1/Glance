#>glance:ability/tensho/tensho_01
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..2 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..2 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


##チャージが2.0未満だったら中止
    execute if score @s Znsi.Integer matches ..1 run tellraw @s {"color":"red","text":"チャージが足りない!"}
    execute if score @s Znsi.Integer matches ..1 run return 0


##チャージが2.5未満だったら中止
    execute if score @s Znsi.Integer matches 2 if score @s Znsi.Decimal matches ..4 run tellraw @s {"color":"red","text":"チャージが足りない!"}
    execute if score @s Znsi.Integer matches 2 if score @s Znsi.Decimal matches ..4 run return 0


##チャージに応じて距離を計算
    scoreboard players set #10000 Znsi.Integer 10000
    scoreboard players set #1000 Znsi.Decimal 1000

    execute if score @s Znsi.Integer matches 5.. run scoreboard players set #Tensho Znsi.Integer 4
    execute if score @s Znsi.Integer matches ..4 run scoreboard players operation #Tensho Znsi.Integer = @s Znsi.Integer
    execute if score @s Znsi.Integer matches 4.. run scoreboard players set #Tensho Znsi.Decimal 0
    execute if score @s Znsi.Integer matches ..3 run scoreboard players operation #Tensho Znsi.Decimal = @s Znsi.Decimal

    scoreboard players operation #Tensho Znsi.Integer *= #10000 Znsi.Integer
    scoreboard players operation #Tensho Znsi.Decimal *= #1000 Znsi.Decimal
    scoreboard players operation #Tensho Znsi.Integer += #Tensho Znsi.Decimal

##Motionの値を設定
    scoreboard players operation $strength hb.Motion = #Tensho Znsi.Integer
    #tellraw @a ["Motion:",{"score":{"name":"$strength","objective":"hb.Motion"}}]
    function #p_motion:looking
    execute positioned as @s run playsound minecraft:entity.blaze.shoot record @s ~ ~ ~ 1 1.5


##内部処理
    scoreboard players remove @s Znsi.MP 3
    scoreboard players reset #1000
    scoreboard players reset #10000
    scoreboard players reset #Tensho

    execute if score @s Znsi.Integer matches ..3 run scoreboard players set @s Znsi.Decimal 0
    execute if score @s Znsi.Integer matches ..3 run scoreboard players set @s Znsi.Integer 0
    execute if score @s Znsi.Integer matches 4.. run scoreboard players remove @s Znsi.Integer 4
    scoreboard players set @s Znsi.10ticks 0