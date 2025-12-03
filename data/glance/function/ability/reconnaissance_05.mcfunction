#>glance:ability/reconnaissance_05
#@execution -> glance:system/game


##プレイヤー関連
    tag @s remove Reconnaissance
    effect clear @s invisibility
    effect clear @s resistance
    attribute @s scale base reset
    scoreboard players remove @s Znsi.MP 3


##乗ってるやつをkill
    $execute on vehicle run tp @s $(X) $(Y) $(Z)
    execute on vehicle run tp @s ~ ~100 ~
    execute on vehicle run kill @s


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