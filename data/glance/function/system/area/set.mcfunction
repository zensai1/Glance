#>glance:system/area/set
#@execution -> glance:system/area/


say set
##今回のエリアの中心を決める
    spreadplayers 192 192 40 275 false @e[type=marker,tag=Area]


##万が一ボーダー外に行ったときの処理
    execute as @e[type=marker,tag=Center] at @s positioned ~-275 ~-275 ~-275 as @e[dx=449,dy=449,dz=449,type=marker,tag=Area] run tag @s add InArea


##ボーダー外だったらもう一回
    execute if entity @e[type=marker,tag=!InArea,tag=Area] run function glance:system/area/


##距離を測定
    execute as @e[type=marker,tag=InArea,limit=1] positioned 192 36 192 run function km_distance:as_to_at

    execute store result score *** Znsi.Distance run data get storage km_distance: out 100
    scoreboard players set #100 Znsi.Distance 100
    execute store result score #Area_Integer Znsi.Distance run scoreboard players operation *** Znsi.Distance /= #100 Znsi.Distance
    scoreboard players operation #TMP Znsi.Distance = #Area_Integer Znsi.Distance
    scoreboard players operation #TMP Znsi.Distance *= #100 Znsi.Distance

    tellraw @a ["MAPの中心～今回のエリア：",{"score":{"name":"#Area_Integer","objective":"Znsi.Distance"}},"m"]


##距離 / 縮小時間 = 秒速
    scoreboard players set #30 Znsi.Distance 30
    scoreboard players operation #Area_Integer Znsi.Distance /= #30 Znsi.Distance


##20tick / 秒速
    scoreboard players set #20 Znsi.Distance 20
    scoreboard players operation #Area_Integer Znsi.Temp = #Area_Integer Znsi.Distance
    scoreboard players operation #Area_Integer Znsi.Temp /= #20 Znsi.Distance


##小数点1桁を計算する
    scoreboard players set #10 Znsi.Distance 10
    scoreboard players operation #Area_Integer Znsi.Distance *= #10 Znsi.Distance
    scoreboard players operation #Area_Integer Znsi.Distance /= #20 Znsi.Distance


    tellraw @a ["1tick/1m：",{"score":{"name":"#Area_Integer","objective":"Znsi.Temp"}},{"score":{"name":"#Area_Integer","objective":"Znsi.Distance"}},"m"]
    execute store result storage glance: Area.Ticks double 0.1 run scoreboard players get #Area_Integer Znsi.Distance


##いったん計算した速度で動かしてみる
    execute positioned 192 36 192 run summon marker ~ ~ ~ {Tags:["Temp_Area"]}
    scoreboard players set @e[type=marker,tag=Temp_Area] Znsi.Range 600
    rotate @e[type=marker,limit=1,tag=Temp_Area] facing entity @e[type=marker,limit=1,tag=InArea]
    execute as @e[type=marker,tag=Temp_Area,scores={Znsi.Range=1..}] at @s run function glance:system/area/temp_moving with storage glance: Area


##内部処理
    kill @e[tag=Center]