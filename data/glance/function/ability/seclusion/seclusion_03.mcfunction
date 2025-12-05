#>glance:ability/seclusion/seclusion_03
#@execution glance:system/game


##OhMyDat呼び出し
    function #oh_my_dat:please
    data modify storage storage_to_player: value set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].seclusion


##Paste
    function glance:stp/put


##内部処理
    tag @s remove Seclusion
    scoreboard players remove @s Znsi.MP 5
    effect clear @s invisibility
    effect clear @s resistance
