#>glance:game/rank
#@execution -> glance:game/winner


##チャット欄に自分の順位とか表示
    $execute if score *** Znsi.Rank matches 1 run tellraw @a [{"bold":true,"color":"yellow","text":"$(Rank)st.  "},{"selector":"@a[scores={Znsi.Rank=$(Rank)}]"},"  -  ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Kill"}},"Kill , ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Hit"}},"Hit"]

    $execute if score *** Znsi.Rank matches 2 run tellraw @a [{"bold":true,"color":"red","text":"$(Rank)nd.  "},{"selector":"@a[scores={Znsi.Rank=$(Rank)}]"},"  -  ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Kill"}},"Kill , ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Hit"}},"Hit"]

    $execute if score *** Znsi.Rank matches 3 run tellraw @a [{"bold":true,"color":"red","text":"$(Rank)rd.  "},{"selector":"@a[scores={Znsi.Rank=$(Rank)}]"},"  -  ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Kill"}},"Kill , ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Hit"}},"Hit"]

    $execute if score *** Znsi.Rank matches 4.. run tellraw @a [{"bold":true,"color":"red","text":"$(Rank)th.  "},{"selector":"@a[scores={Znsi.Rank=$(Rank)}]"},"  -  ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Kill"}},"Kill , ",{"score":{"name":"@a[scores={Znsi.Rank=$(Rank)}]","objective":"Znsi.Hit"}},"Hit"]


##Rankを1加算
    scoreboard players add *** Znsi.Rank 1
    execute store result storage glance: Game.Rank int 1 run scoreboard players get *** Znsi.Rank
    execute if score *** Znsi.Rank <= #Rank Znsi.Temp run function glance:game/rank with storage glance: Game