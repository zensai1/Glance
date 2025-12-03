#glance:system/waiting
#@execution -> glance:system/tick

##常時実行
    effect give @a weakness infinite 255 true
    effect give @a resistance infinite 255 true
    effect give @a saturation infinite 255 true
    scoreboard players reset @s Znsi.QuickAction
    scoreboard players reset @s Znsi.Netshop


##GUI
    execute as @a[tag=op] at @s if items entity @s player.cursor bell run scoreboard players set *** Znsi.Emerald 11
    execute as @a[tag=op] at @s if items entity @s player.cursor bell run function glance:startcount/