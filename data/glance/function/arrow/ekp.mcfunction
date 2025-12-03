#>glance:arrow/ekp
#@execution -> advancement


##攻撃してきた相手にTagをつける
    execute on attacker run tag @s add Attacker


##距離を測定
    execute at @s positioned as @p[tag=Attacker] run function km_distance:as_to_at
    function glance:system/calc


##キルログを表示
    #scoreboard players add @a[tag=Attacker] Znsi.Kill 1
    tellraw @a ["[",{"color":"dark_red","text":"KILL"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"},{"color":"gray","text":" ("},{"score":{"name":"#Integer","objective":"Znsi.Distance"},"color":"gray"},{"color":"gray","text":"."},{"score":{"name":"#Decimal","objective":"Znsi.Distance"},"color":"gray"},{"text":"m)","color":"gray"}]
    execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder record @s


##順位反映
    scoreboard players operation @s Znsi.Rank = *** Znsi.Rank
    scoreboard players remove *** Znsi.Rank 1

##内部処理
    particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    title @s title {"color":"red","text":"You Died!"}
    gamemode spectator @s
    execute on attacker run tag @s remove Attacker
    scoreboard players set @s Znsi.Deathcount 0