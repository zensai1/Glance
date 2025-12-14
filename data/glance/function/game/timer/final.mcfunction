#>glance:game/timer/final
#@execution -> glance:game/timer/shrink


##bossbarを変更
    bossbar set znsi.phase name [{text:"最終フェーズ進行中",color:white}]


##方向を決める
    ##
    execute positioned as @e[tag=lottery_area] run summon marker ~1 ~ ~ {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~-1 ~ ~ {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~ ~ ~1 {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~ ~ ~-1 {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~1 ~ ~-1 {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~1 ~ ~1 {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~-1 ~ ~-1 {Tags:["Fancing"]}
    execute positioned as @e[tag=lottery_area] run summon marker ~-1 ~ ~1 {Tags:["Fancing"]}
    rotate @e[tag=lottery_area,limit=1] facing entity @e[tag=Fancing,limit=1,sort=random]
    kill @e[tag=Fancing]


##Distanceを決定
    execute store result score @e[tag=lottery_area] Znsi.Distance run random value 200..300
