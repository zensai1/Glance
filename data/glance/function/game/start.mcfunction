#glance:game/start
#@execution -> glance:system/waiting


##プレイヤーに対して実行
    loot replace entity @a[gamemode=adventure] armor.chest loot glance:flight
    effect give @a[gamemode=adventure] invisibility infinite 255 true
    function glance:game/health/set_health with storage glance: Game


##サイドバーの情報を更新するよ
    scoreboard players set 残り時間： Znsi.Timer 45
    scoreboard players set フェーズ Znsi.Phase 0
    schedule function glance:game/timer/remove 1s


##MAPにてレポートするよ
    worldborder set 450