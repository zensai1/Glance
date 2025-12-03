#>glance:startcount/


##Item
    clear @a

    
##score
    execute if score *** Znsi.Emerald matches 1.. run scoreboard players remove *** Znsi.Emerald 1


##Title
    execute as @a at @s run title @s title [{"color":"gold","text":"後"},{"color":"red","score":{"name":"***","objective":"Znsi.Emerald"}},"秒で始まります"]


##Playsound
    execute as @a at @s run playsound minecraft:block.dispenser.dispense record @s


##schedule
    execute if score *** Znsi.Emerald matches 1.. run schedule function glance:startcount/ 1s
    execute if score *** Znsi.Emerald matches 0 run schedule function glance:game/start 1s