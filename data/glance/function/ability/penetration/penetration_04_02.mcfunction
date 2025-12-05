#>glance:ability/penetration/penetration_04_02
#@execution -> glance:ability/penetration/penetration_04_01


##ダメージ
    execute if entity @s[tag=!Reflection] run damage @s 2 minecraft:magic


##大本を探す
    scoreboard players operation #TMP Znsi.ID = @e[tag=Znsi.Projectile,limit=1,sort=nearest,type=!player] Znsi.ID
    execute as @a if score @s Znsi.ID = #TMP Znsi.ID run tag @s add Attacker


##反射
    execute if entity @s[tag=Reflection] run tag @a[tag=Attacker] add NotGive
    execute if entity @s[tag=Reflection] run function glance:ability/reflection/reflection_02_02


##当てたやつにエメラルドを渡す
    loot give @a[tag=Attacker,tag=!NotGive] loot glance:emerald


##距離を測定
    execute at @s positioned as @p[tag=Attacker] run function km_distance:as_to_at
    function glance:system/calc


##HITログを流す
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 0.. run scoreboard players add @a[tag=Attacker] Znsi.Hit 1
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 0 run tellraw @a [{"text":"["},{"bold":false,"color":"red","text":"HIT"},"]  ",{"bold":true,"selector":"@a[tag=Attacker]"},{"text":"  ->  "},{"bold":true,"selector":"@a[tag=Znsi.Target]"},{"color":"gray","text":"("},{"score":{"name":"#Integer","objective":"Znsi.Distance"},"color":"gray"},{"color":"gray","text":"."},{"score":{"name":"#Decimal","objective":"Znsi.Distance"},"color":"gray"},{"text":"m)","color":"gray"}]
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 0 as @a at @s run playsound entity.arrow.hit_player record @s
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run tellraw @a [{"text":"["},{"bold":false,"color":"dark_red","text":"KILL"},"]  ",{"bold":true,"selector":"@a[tag=Attacker]"},{"text":"  ->  "},{"bold":true,"selector":"@a[tag=Znsi.Target]"},{"color":"gray","text":"("},{"score":{"name":"#Integer","objective":"Znsi.Distance"},"color":"gray"},{"color":"gray","text":"."},{"score":{"name":"#Decimal","objective":"Znsi.Distance"},"color":"gray"},{"text":"m)","color":"gray"}]
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 as @a at @s run playsound minecraft:entity.lightning_bolt.thunder record @s
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run tag @s remove Alive
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run gamemode spectator @s
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run scoreboard players add @a[tag=Attacker] Znsi.Kill 1
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run title @s title {"color":"red","text":"You Died!"}
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run scoreboard players operation @s Znsi.Rank = *** Znsi.Rank
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run scoreboard players remove *** Znsi.Rank 1


##リセット
    tag @a remove Attacker
    tag @a remove NotGive
    scoreboard players set @s Znsi.Deathcount 0