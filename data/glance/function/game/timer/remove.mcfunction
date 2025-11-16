#glance:game/timer/remove
#@execution -> glance:game/start | glance:game/timer/remove


##残り時間を減らすよ
    scoreboard players remove 残り時間： Znsi.Timer 1


##残り時間が0のときの処理だよ
    execute if score 残り時間： Znsi.Timer matches 0.. run schedule function glance:game/timer/remove 1s
    execute if score 残り時間： Znsi.Timer matches 0 unless data storage glance: {game:{State:"待機中"}} run schedule function glance:game/phase/phase_change 1s
    execute if score 残り時間： Znsi.Timer matches 0 if data storage glance: {game:{State:"待機中"}} run schedule function glance:game/phase/shrink 1s


##どうあれ実行するよ
    function glance:game/timer/ with storage glance: game