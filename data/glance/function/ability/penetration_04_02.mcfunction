#>glance:ability/penetration_04_02
#@execution -> glance:ability/penetration_04_01


##ダメージ
    execute if entity @s[tag=!Reflection] run damage @s 2 minecraft:magic


##大本を探す
    scoreboard players operation #TMP Znsi.ID = @e[tag=Znsi.Projectile,limit=1,sort=nearest,type=!player] Znsi.ID
    execute as @a if score @s Znsi.ID = #TMP Znsi.ID run tag @s add Attacker


##反射
    execute if entity @s[tag=Reflection] run tag @a[tag=Attacker] add NotGive
    execute if entity @s[tag=Reflection] run function glance:ability/reflection_02_02


##当てたやつにエメラルドを渡す
    loot give @a[tag=Attacker,tag=!NotGive] loot glance:emerald

##HITログを流す
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 0 run tellraw @a [{"text":"["},{"bold":false,"color":"red","text":"HIT"},"]  ",{"bold":true,"selector":"@a[tag=Attacker]"},{"text":"  ->  "},{"bold":true,"selector":"@a[tag=Znsi.Target]"}]
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 0 as @a at @s run playsound entity.arrow.hit_player record @s
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 run tellraw @a [{"text":"["},{"bold":false,"color":"dark_red","text":"KILL"},"]  ",{"bold":true,"selector":"@a[tag=Attacker]"},{"text":"  ->  "},{"bold":true,"selector":"@a[tag=Znsi.Target]"}]
    execute if entity @a[tag=Attacker,tag=!NotGive] if score @s Znsi.Deathcount matches 1 as @a at @s run playsound minecraft:entity.lightning_bolt.thunder record @s


##リセット
    tag @a remove Attacker
    tag @a remove NotGive
    scoreboard players set @s Znsi.Deathcount 0