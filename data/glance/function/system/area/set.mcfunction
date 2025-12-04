#>glance:system/area/set
#@execution -> glance:


##以前のAreaタグ付きを消す
    kill @e[type=marker,tag=Area]


##中心にmarker召喚
    execute positioned 192 85 192 run summon marker ~ ~ ~ {Tags:["Area"]}


##今回のエリアの中心を決める
    spreadplayers 192 192 0 275 false @e[type=marker,tag=Area]


##万が一ボーダー外に行ったときの処理
    execute as @e[type=marker,tag=Area] at @s positioned ~-275 ~-275 ~-275 as @a[dx=449,dy=449,dz=449] run tag @s add InArea


##ボーダー外だったらもう一回
    execute if entity @e[type=marker,tag=!InArea,tag=Area] run function glance:system/area/set