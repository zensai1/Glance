#>glance:game/timer/remove
#@execution -> いろいろ


##スコアを減らす
    scoreboard players remove *** Znsi.Timer 1
    execute if score *** Znsi.Timer matches ..5 as @a at @s run playsound minecraft:block.note_block.hat record @s
    execute store result bossbar znsi.phase value run scoreboard players get *** Znsi.Timer


##ボスバーを変更する
    execute unless data storage glance: Phase.State run bossbar set znsi.phase name ["フェーズ",{"score":{"name":"***","objective":"Znsi.Phase"}},"　|　エリア縮小まで後",{"score":{"name":"***","objective":"Znsi.Timer"}},"秒"]
    execute if data storage glance: Phase.State if score *** Znsi.Phase matches 0 run bossbar set znsi.phase name ["フェーズ",{"score":{"name":"***","objective":"Znsi.Phase"}},"　|　次のフェーズまで後",{"score":{"name":"***","objective":"Znsi.Timer"}},"秒"]
    execute if data storage glance: Phase.State if score *** Znsi.Phase matches 1.. run bossbar set znsi.phase name ["フェーズ",{"score":{"name":"***","objective":"Znsi.Phase"}},"　|　次のフェーズまで後",{"score":{"name":"***","objective":"Znsi.Timer"}},"秒"]


##1秒以上だったら再帰する
    execute if score *** Znsi.Timer matches 1.. run schedule function glance:game/timer/ 1s


##0秒だったら縮小、次のフェーズへ
    execute unless data storage glance: Phase.State if score *** Znsi.Timer matches 0 run schedule function glance:game/timer/shrink 1s
    execute if data storage glance: Phase.State if score *** Znsi.Timer matches 0 run schedule function glance:game/timer/next_phase 1s