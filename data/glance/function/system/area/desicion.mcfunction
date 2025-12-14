#>glance:system/area/decision
#@execution -> glance:system:temp_moving


##今回のエリアの中心を召喚
    execute unless data storage glance: Debug run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lottery_area"]}
    execute if data storage glance: Debug run summon armor_stand ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["lottery_area"]}
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.x int 1 run data get entity @s Pos[0]
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.y int 1 run data get entity @s Pos[1]
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.z int 1 run data get entity @s Pos[2]
    #tellraw @a ["今回の中心：",{"nbt":"Area.Pos.x","storage":"glance:"},",",{"nbt":"Area.Pos.y","storage":"glance:"},",",{"nbt":"Area.Pos.z","storage":"glance:"}]
    kill @s
    kill @e[type=marker,tag=InArea]


    execute if data storage glance: Debug run effect give @e[tag=lottery_area] glowing infinite 0 true
    function glance:game/give_compass with storage glance: Area.Pos


##
    execute store result score *** Znsi.Temp if entity @e[type=armor_stand,tag=lottery_area]
    execute if score *** Znsi.Temp matches 2.. run function glance:system/area/re_lottery