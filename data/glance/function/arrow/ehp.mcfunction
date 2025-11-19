#>glance:arrow/ehp
#@execution -> advancement


##進捗はく奪
    advancement revoke @s only glance:ehp


##攻撃した人にAttacker Tagをつける
    execute on attacker run tag @s add Attacker

##抑制 
    execute if entity @a[tag=Attacker,scores={Znsi.Ability=9,Znsi.MP=3..},tag=!Restraint] run tag @s add Restraint
    execute if entity @a[tag=Attacker,scores={Znsi.Ability=9,Znsi.MP=3..},tag=!Restraint] on attacker run scoreboard players remove @s Znsi.MP 3

##命中ログを表示
    execute unless entity @s[nbt={Health:1.0f}] run tellraw @a ["[",{"color":"red","text":"HIT"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"}]
    execute if entity @s[nbt={Health:1.0f}] run tellraw @a ["[",{"color":"dark_red","text":"KILL"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"}]
    execute if entity @s[nbt={Health:1.0f}] as @a at @s run playsound minecraft:entity.lightning_bolt.thunder record @s
    execute on attacker run tag @s remove Attacker
    

