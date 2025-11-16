#>glance:ability/reconnaissance_02
#@execution -> glance:abilty/reconnaissance_01

say HAPPY

##透明化とか付与
    effect give @s invisibility infinite 0 true
    effect give @s resistance infinite 255 true


##dataをいじるよ
    data modify entity @s Silent set value 1b
    data modify entity @s NoAI set value 1b


##scoreをコピー
    scoreboard players operation @s Znsi.ID = @p Znsi.ID


##Tagをつける
    tag @s add Znsi.Reconnaissance


##ハーネスを付けないと操作できないよ
    item replace entity @s armor.body with white_harness


##attributeをいじる
    attribute @s flying_speed base set 0.085
    attribute @s scale base set 0.01


##召喚した人を小さくする
    attribute @p scale base set 0.1

##召喚した人を乗せる
    ride @p mount @s