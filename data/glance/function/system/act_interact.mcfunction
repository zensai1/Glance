#>glance:system/act_interact
#@execution -> Advancement


##Debugメッセージ
    #tellraw @a[tag=op] "system/interact/act"


##エントリー
    execute as @e[type=interaction,distance=..10] at @s if data entity @s interaction run function glance:.debug/test with entity @p[advancements={glance:interact=true}]

##共通
    advancement revoke @s only glance:interact