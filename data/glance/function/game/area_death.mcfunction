#>glance:system/game
#@execution -> glance:system/game


##観戦に
    gamemode spectator @s


##死亡ログ
    tellraw @a ["[",{"color":"dark_red","text":"DEATH"},{"color":"white","text":"]  "},{"bold":true,"color":"white","selector":"@s"},{"bold":true,"color":"gray","text":" (エリア外)"}]


##順位反映
    scoreboard players operation @s Znsi.Rank = *** Znsi.Rank
    scoreboard players remove *** Znsi.Rank 1
    title @s title {"color":"red","text":"You Died!"}
    

##スコアリセット
    scoreboard players reset @s Znsi.Deathcount
    tag @s remove Alive