#>glance:game/winner
#@execution -> glance:system/game


##WIN title
    execute as @a at @s run title @s title [{"color":"yellow","selector":"@a[gamemode=adventure]"},"  WON!"]
    scoreboard players set @a[gamemode=adventure] Znsi.Rank 1


##全員可視化
    gamemode adventure @a[gamemode=spectator]


##順位表示
    execute store result storage glance: Game.Rank int 1 run scoreboard players get *** Znsi.Rank
    function glance:game/rank with storage glance: Game


##リセット
    function glance:game/reset