#glance:system/firstlogin
#@execution -> glance:system/tick

##必要な設定を行うよ
    tag @s add firstlogin
    scoreboard players add $Znsi.CoreID Znsi.CoreID 1
    scoreboard players operation @s Znsi.ID = $Znsi.CoreID Znsi.CoreID
    scoreboard players set @s Znsi.Ability 0
    scoreboard players set @s Znsi.MP 5
    scoreboard players set @s Znsi.MaxMP 5
    scoreboard players set @s Znsi.Arrows 0


##メッセージを流すよ
    tellraw @s {"color":"green","text":"Glance　現在のPatchは「β1.0.0」です"}
    tellraw @s [{"color":"green","text":"ルールなどは"},{"click_event":{"action":"open_url","url":"https://discord.gg/pFwAZDCXcY"},"color":"white","text":"こちら","underlined":true},{"color":"green","text":"から"}]