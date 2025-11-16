#>glance:ability/penetration_04_02
#@execution -> glance:ability/penetration_04_01


##ダメージ
    damage @s 2 minecraft:magic


##大本を探す
    scoreboard players operation #TMP Znsi.ID = @e[tag=Znsi.Projectile,limit=1,sort=nearest,type=!player] Znsi.ID
    execute as @a if score @s Znsi.ID = #TMP Znsi.ID run tag @s add Znsi.Attacker


##HITログを流す
    tellraw @a [{"bold":true,"text":"["},{"bold":false,"color":"red","text":"HIT"},"] ",{"selector":"@a[tag=Znsi.Attacker]"},{"bold":true,"text":"　》》》　"},{"selector":"@a[tag=Znsi.Target]"}]
    execute as @a at @s run playsound entity.arrow.hit_player record @s


##リセット
    tag @a remove Znsi.Attacker