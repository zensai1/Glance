#>glance:game/timer/final
#@execution -> glance:game/timer/shrink


##bosbarを変更
    bossbar set znsi.phase name [{text:"最終フェーズ進行中",color:white}]


##方向を決める
    execute positioned as @e[tag=lottery_area] run summon marker ~ ~ ~ {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run spreadplayers ~ ~ 10 10 false @e[tag=Fancing]
    rotate @e[tag=lottery_area,limit=1] facing entity @e[tag=Fancing,limit=1]
    kill @e[tag=Fancing]


##Distanceを決定
    execute store result score @e[tag=lottery_area] Znsi.Distance run random roll 100..200
