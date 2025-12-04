#>glance:system/area/decision
#@execution -> glance:system:temp_moving


##今回のエリアの中心を召喚
    summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lottery_area"]}
    execute as @e[tag=lottery_area,limit=1] at @s run attribute @s minecraft:waypoint_transmit_range base set 60000000.0
    execute as @e[tag=lottery_area,limit=1] at @s run waypoint modify @s color gold
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.x int 1 run data get entity @s Pos[0]
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.y int 1 run data get entity @s Pos[1]
    execute as @e[tag=lottery_area,limit=1] at @s store result storage glance: Area.Pos.z int 1 run data get entity @s Pos[2]
    tellraw @a ["今回の中心：",{"nbt":"Area.Pos.x","storage":"glance:"},",",{"nbt":"Area.Pos.y","storage":"glance:"},",",{"nbt":"Area.Pos.z","storage":"glance:"}]
    kill @s
    kill @e[type=marker,tag=InArea]
