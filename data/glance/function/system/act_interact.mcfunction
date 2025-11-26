#>glance:system/act_interact
#@execution -> Advancement


##Debugメッセージ
    #tellraw @a[tag=op] "system/interact/act"


##フェーズ0のときinteractだけ消す
    execute if score *** Znsi.Phase matches 0 on target run say target
    execute if score *** Znsi.Phase matches 0 on attacker run say attacker
    #execute if score *** Znsi.Phase matches 0 run data remove entity @e[type=interaction]

##サプライオープン
    execute as @e[type=interaction,distance=..10] at @s if data entity @s interaction if score *** Znsi.Phase matches 1.. run function glance:game/open_supply with entity @p[advancements={glance:interact=true}]

##共通
    advancement revoke @s only glance:interact