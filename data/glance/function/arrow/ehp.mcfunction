#>glance:arrow/ehp
#@execution -> advancement


##進捗はく奪
    advancement revoke @s only glance:ehp


##攻撃した人にAttacker Tagをつける
    execute on attacker run tag @s add Attacker


##命中ログを表示
    tellraw @a ["[",{"color":"red","text":"HIT"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@a[tag=Attacker]"},{"color":"white","text":"  ->  "},{"bold":true,"color":"white","selector":"@s"}]
    execute on attacker run tag @s remove Attacker
    

