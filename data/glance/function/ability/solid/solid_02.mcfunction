#>glance:ability/solid_02
#@execution -> glance:ability/solid/solid_01


##衝撃吸収のための属性変化
    $attribute @s max_absorption base set $(Solid).0


##衝撃吸収一瞬付ける
    effect clear @s absorption 


##MP
    scoreboard players set @s Znsi.MP 0