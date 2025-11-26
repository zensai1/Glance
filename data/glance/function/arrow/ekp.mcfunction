#>glance:arrow/ekp
#@execution -> advancement


##攻撃してきた相手にTagをつける
    execute on attacker run tag @s add Attacker


##キルログを表示
    tellraw @a ["[",{"color":"dark_red","text":"KILL"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"}]
    execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder record @s


##内部処理
    execute on attacker run tag @s remove Attacker
    scoreboard players set @s Znsi.Deathcount 0