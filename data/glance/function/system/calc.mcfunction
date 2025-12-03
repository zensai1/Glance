#>glance:system/calc
#@execution -> glance:arrow/ehp


##
execute store result score *** Znsi.Distance run data get storage km_distance: out 100
scoreboard players set #100 Znsi.Distance 100
execute store result score #Integer Znsi.Distance run scoreboard players operation *** Znsi.Distance /= #100 Znsi.Distance
scoreboard players operation #TMP Znsi.Distance = #Integer Znsi.Distance
scoreboard players operation #TMP Znsi.Distance *= #100 Znsi.Distance
execute store result score *** Znsi.Distance run data get storage km_distance: out 100
execute store result score #Decimal Znsi.Distance run scoreboard players operation *** Znsi.Distance -= #TMP Znsi.Distance