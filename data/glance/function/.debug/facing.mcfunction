#北
    execute if entity @s[y_rotation=146..-145] run say 北!
    execute if entity @s[y_rotation=146..-145] run setblock ~ ~ ~ chest[facing=north,type=single] replace

#東
    execute if entity @s[y_rotation=-144.9..-45] run say 東!
    execute if entity @s[y_rotation=-144.9..-45] run setblock ~ ~ ~ chest[facing=east,type=single] replace

#南
    execute if entity @s[y_rotation=-44.9..45] run say 南!
    execute if entity @s[y_rotation=-44.9..45] run setblock ~ ~ ~ chest[facing=south,type=single] replace

#西
    execute if entity @s[y_rotation=45.1..145.9] run say 西!
    execute if entity @s[y_rotation=45.1..145.9] run setblock ~ ~ ~ chest[facing=west,type=single] replace

##interaction
    execute align xz run summon interaction ~ ~ ~ {data:{Player:[],uuid:[]}}
    execute as @e[type=interaction,limit=1,sort=nearest] at @s run tp ~0.5 ~ ~0.5
