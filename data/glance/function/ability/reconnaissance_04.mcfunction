#>glance:ability/reconnaissance_04
#@execution -> glance:system/game


##プレイヤー関連
    tag @s remove Reconnaissance
    effect clear @s invisibility
    effect clear @s resistance
    attribute @s scale base reset
    scoreboard players remove @s Znsi.MP 3


##乗ってるやつをkill
    execute as @e[type=happy_ghast,limit=1,sort=nearest] at @s run tag @s add NoVehicle
    execute as @e[type=happy_ghast,limit=1,sort=nearest,tag=NoVehicle] run tp @s ~ ~100 ~
    kill @e[type=happy_ghast,tag=NoVehicle,limit=1]
    


##元の位置に戻す
    $tp @s $(X) $(Y) $(Z)


##OhMyDat呼び出し
    function #oh_my_dat:please
    data modify storage storage_to_player: value set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Reconnaissance.Inv


##Paste
    function glance:stp/put


##
    execute if entity @s[tag=Stare_Reward] run loot give @s loot glance:emerald
    tag @s remove Stare_Reward
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0