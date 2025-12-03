#>glance:arrow/ehp
#@execution -> advancement


##進捗はく奪
    advancement revoke @s only glance:ehp
    #say 進捗はく奪してるよ

##反撃
    execute if entity @s[tag=Reflection] run function glance:ability/reflection_02_02


##能力使用中だったらエメラルドを上げない
    execute if entity @s[tag=Seclusion] on attacker run tag @s add NotGive
    execute if entity @s[tag=Reconnaissance] on attacker run tag @s add NotGive


##矢のダメージかカスタムエンチャントのダメージか判定
    execute store result score @s Znsi.Health run data get entity @s Health
    scoreboard players operation @s Znsi.Health %= #2 Znsi.Health
    #tellraw @a ["奇数偶数:",{"score":{"name":"@s","objective":"Znsi.Health"}}]


##奇数(1)だったら矢のダメージなのでreturnする
    #execute if score @s Znsi.Health matches 1 run say 奇数だよ
    execute if score @s Znsi.Health matches 1 run return 0


##NotGiveだったらreturn
    execute on attacker if entity @s[tag=NotGive] run return 0


##攻撃した人にAttacker Tagをつける
    #say こっからカスタムエンチャントの時
    execute on attacker run tag @s add Attacker


##距離を測定
    execute at @s positioned as @p[tag=Attacker] run function km_distance:as_to_at
    function glance:system/calc


##抑制 
    execute if entity @a[tag=Attacker,scores={Znsi.Ability=9,Znsi.MP=3..},tag=!Restraint] if entity @s[tag=!Restraint] run playsound minecraft:block.beacon.deactivate record @s
    execute if entity @a[tag=Attacker,scores={Znsi.Ability=9,Znsi.MP=3..},tag=!Restraint] if entity @s[tag=!Restraint] on attacker run scoreboard players remove @s Znsi.MP 3
    execute if entity @a[tag=Attacker,scores={Znsi.Ability=9,Znsi.MP=3..},tag=!Restraint] if entity @s[tag=!Restraint] run tag @s add Restraint


##命中ログを表示
    scoreboard players add @a[tag=Attacker] Znsi.Hit 1
    execute if entity @s[advancements={glance:ekp=false}] run tellraw @a ["[",{"color":"red","text":"HIT"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"},{"color":"gray","text":" ("},{"score":{"name":"#Integer","objective":"Znsi.Distance"},"color":"gray"},{"color":"gray","text":"."},{"score":{"name":"#Decimal","objective":"Znsi.Distance"},"color":"gray"},{"text":"m)","color":"gray"}]
    execute if entity @s[advancements={glance:ekp=false}] as @a at @s run playsound entity.arrow.hit_player record @s


##スポーン位置変更
    spawnpoint @s ~ ~ ~


##内部処理
    advancement revoke @s only glance:ekp
    execute on attacker run tag @s remove Attacker
    tag @s remove Parry

