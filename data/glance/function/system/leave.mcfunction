#>glance:system/leave
#@execution -> glance:system/tick


##Patch Log
    tellraw @a[tag=op] [{color:green,selector:"@s"},{text:"さんが入室しました"}]
    tellraw @s {"color":"green","text":"Glance　現在のPatchは「2.00」です"}
    #tellraw @s [{"color":"green","text":"ルールなどは"},{"click_event":{"action":"open_url","url":"https://discord.gg/pFwAZDCXcY"},"color":"white","text":"こちら","underlined":true},{"color":"green","text":"から"}]


##待機中だったら実行
    scoreboard players reset @s Znsi.Leave
    execute if data storage glance: {State:"InGame"} run return 0


##いろんな処理
    scoreboard players set @s Znsi.MaxArrows 1
    scoreboard players set @s Znsi.MaxMP 5
    scoreboard players set @s Znsi.MaxReload 100
    scoreboard players reset @s Znsi.Restraint
    scoreboard players reset @s Znsi.Arrows
    scoreboard players reset @s Znsi.Ability
    scoreboard players reset @s Znsi.Phase
    scoreboard players reset @s Znsi.Reload
    scoreboard players reset @s Znsi.Upgrade
    scoreboard players reset @s Znsi.Rank
    scoreboard players reset @s Znsi.Kill
    scoreboard players reset @s Znsi.Hit
    scoreboard players reset @s Znsi.Deathcount
    scoreboard players reset @s Znsi.UpgradeTimer
    scoreboard players reset @s Znsi.Replacement


##Tag処理
    tag @s remove Ability_Using
    tag @s remove Dashing
    tag @s remove Memory
    tag @s remove Reconnaissance
    tag @s remove Reflection
    tag @s remove Seclusion
    tag @s remove Restraint
    tag @s remove UPGR_inv
    tag @s remove Upgrading
    tag @s remove UPGR_arrow
    tag @s remove UPGR_mp
    tag @s remove UPGR_mp_rec
    tag @s remove UPGR_reload


##attribute処理
    attribute @s scale base reset


##プレイヤー
    clear @s
    effect clear @s
    effect give @s instant_health 10 240 true
    attribute @s attack_damage base set 0
    attribute @s minecraft:attack_speed base set 1024
    attribute @s minecraft:waypoint_transmit_range base set 0
    attribute @s waypoint_receive_range base set 60000000.0
    execute if entity @s[tag=op] run function glance:gui/


##Dialogをアップデート
    function glance:system/dialog_upgrade