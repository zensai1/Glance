#>glance:ability/tensho_1
#@execution -> glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..1 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..1 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0
    
    
##能力使用中だったら中止
    execute if entity @s[tag=Ability_Using] run return 0


##チャージが2.0未満だったら中止
    execute if score @s Znsi.integer matches ..1 run tellraw @s {"color":"red","text":"チャージが足りない!"}
    execute if score @s Znsi.integer matches ..1 run return 0


##チャージが2.5未満だったら中止
    execute if score @s Znsi.integer matches 2 if score @s Znsi.decimal matches ..4 run tellraw @s {"color":"red","text":"チャージが足りない!"}
    execute if score @s Znsi.integer matches 2 if score @s Znsi.decimal matches ..4 run return 0


##チャージに応じて距離を計算
    scoreboard players set #10000 Znsi.integer 10000
    scoreboard players set #1000 Znsi.decimal 1000

    execute if score @s Znsi.integer matches 5.. run scoreboard players set #Tensho Znsi.integer 4
    execute if score @s Znsi.integer matches ..4 run scoreboard players operation #Tensho Znsi.integer = @s Znsi.integer
    execute if score @s Znsi.integer matches 4.. run scoreboard players set #Tensho Znsi.decimal 0
    execute if score @s Znsi.integer matches ..3 run scoreboard players operation #Tensho Znsi.decimal = @s Znsi.decimal

    scoreboard players operation #Tensho Znsi.integer *= #10000 Znsi.integer
    scoreboard players operation #Tensho Znsi.decimal *= #1000 Znsi.decimal
    scoreboard players operation #Tensho Znsi.integer += #Tensho Znsi.decimal

##Motionの値を設定
    scoreboard players operation $strength hb.Motion = #Tensho Znsi.integer
    #tellraw @a ["Motion:",{"score":{"name":"$strength","objective":"hb.Motion"}}]
    function #p_motion:looking
    execute positioned as @s run playsound minecraft:entity.blaze.shoot record @s ~ ~ ~ 1 1.5


##内部処理
    scoreboard players remove @s Znsi.MP 2
    scoreboard players reset #1000
    scoreboard players reset #10000
    scoreboard players reset #Tensho

    execute if score @s Znsi.integer matches ..3 run scoreboard players set @s Znsi.decimal 0
    execute if score @s Znsi.integer matches ..3 run scoreboard players set @s Znsi.integer 0
    execute if score @s Znsi.integer matches 4.. run scoreboard players remove @s Znsi.integer 4
    scoreboard players set @s Znsi.10ticks 0