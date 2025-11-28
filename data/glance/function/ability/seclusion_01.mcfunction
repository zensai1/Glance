#>glance:ability/seclusion_01
#@execution glance:system/game


##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##MPがなかったら中止
    execute if score @s Znsi.MP matches ..3 run tellraw @s {"color":"red","text":"MPが足りない..."}
    execute if score @s Znsi.MP matches ..3 run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s {"color":"red","text":"抑制されている..."}
    execute if entity @s[tag=Restraint] run return 0


##この状態のインベントリを保存する
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].seclusion set from entity @s Inventory
    clear @s


##その他処理
    effect give @s invisibility 21 0 true 
    effect give @s resistance 21 255 true
    playsound minecraft:block.fire.extinguish record @s
    scoreboard players set @s Znsi.Integer 2
    scoreboard players set @s Znsi.Decimal 0
    tag @s add Seclusion