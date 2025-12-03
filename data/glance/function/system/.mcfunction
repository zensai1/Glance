#glance:system/
#@execution -> None


##scoreboard
    scoreboard objectives add Znsi.10ticks dummy "10tick(0.5秒)カウント"
    scoreboard objectives add Znsi.20ticks dummy "20tick(1秒)カウント"
    scoreboard objectives add Znsi.Health dummy "最大体力"
    scoreboard objectives add Znsi.ID dummy "PlayerID"
    scoreboard objectives add Znsi.CoreID dummy "CoreID"
    scoreboard objectives add Znsi.Reload dummy "Reload時間"
    scoreboard objectives add Znsi.Ability dummy "能力"
    scoreboard objectives add Znsi.Arrows dummy "現在の矢の所持数"
    scoreboard objectives add Znsi.MaxArrows dummy "矢の最大所持数"
    scoreboard objectives add Znsi.Temp dummy "仮置き用"
    scoreboard objectives add Znsi.Timer dummy "残り時間"
    scoreboard objectives add Znsi.Remaining dummy "残り人数"
    scoreboard objectives add Znsi.Phase dummy "フェーズ数"
    scoreboard objectives add Znsi.MP dummy "能力使う用"
    scoreboard objectives add Znsi.MaxMP dummy "最大MP"
    scoreboard objectives add Znsi.MPRec dummy "MP回復用"
    scoreboard objectives add Znsi.MaxMPRec dummy "MP回復用2"
    scoreboard objectives add Znsi.Integer dummy "整数"
    scoreboard objectives add Znsi.Decimal dummy "小数"
    scoreboard objectives add Znsi.Range dummy "投射物の射程"
    scoreboard objectives add Znsi.HitCheck dummy "投射物のHIT判定"
    scoreboard objectives add Znsi.MaxReload dummy "リロード速度"
    scoreboard objectives add Znsi.Restraint dummy "抑制タイマー"
    scoreboard objectives add Znsi.QuickAction trigger "クイックアクション"
    scoreboard objectives add Znsi.Upgrade dummy "アップグレード回数"
    scoreboard objectives add Znsi.UpgradeTimer dummy "アップグレード用タイマー"
    scoreboard objectives add Znsi.Rec dummy "回復用タイマー"
    scoreboard objectives add Znsi.Deathcount deathCount "矢以外で死んだとき用"
    scoreboard objectives add Znsi.Page dummy "GUI、Dialog"
    scoreboard objectives add Znsi.Emerald dummy "エメラルド所持数"
    scoreboard objectives add Znsi.Rank dummy "順位"
    scoreboard objectives add Znsi.Hit dummy "HIT数"
    scoreboard objectives add Znsi.Kill custom:player_kills "Kill数"
    scoreboard objectives add Znsi.Netshop trigger "ネットショップ"
    scoreboard objectives add Znsi.Distance dummy "命中距離"
    scoreboard objectives add Znsi.Leave custom:leave_game "退出"
    scoreboard objectives add Znsi.Inv dummy "インベントリ強化"
    scoreboard objectives add Znsi.Stare dummy "凝視"
    

    scoreboard objectives add Znsi.Use.Bow used:bow
    scoreboard objectives add Znsi.Use.Echo_shard used:echo_shard
    scoreboard objectives add Znsi.Use.Potion used:potion
    scoreboard objectives add Znsi.Use.White_Dye used:white_dye
    scoreboard objectives add Znsi.Use.Orange_Dye used:orange_dye

    scoreboard objectives add Znsi.Drop.Glass dropped:black_stained_glass_pane
    scoreboard objectives add Znsi.Drop.Bow dropped:bow "弓を落としちゃった!"

    scoreboard players set *** Znsi.Timer 45
    scoreboard players set *** Znsi.Reload 100
    scoreboard players set *** Znsi.MaxArrows 1
    scoreboard players set *** Znsi.MaxMPRec 100
    scoreboard players set *** Znsi.Upgrade 6
    scoreboard players set #2 Znsi.Health 2


##Bossbar
    bossbar add znsi.phase ["フェーズ0　|　エリア縮小まで後",{"score":{"name":"***","objective":"Znsi.Timer"}},"秒"]
    bossbar set znsi.phase color blue
    bossbar set znsi.phase max 45
    execute store result bossbar znsi.phase value run scoreboard players get *** Znsi.Timer


##gamerule
    gamerule keepInventory true
    gamerule doImmediateRespawn true
    gamerule naturalRegeneration false
    gamerule doDaylightCycle false
    gamerule doMobSpawning false
    gamerule doWeatherCycle false
    gamerule locatorBar false
    gamerule showDeathMessages false
    gamerule fallDamage false
    gamerule fireDamage false
    gamerule freezeDamage false


##Storage
    data modify storage glance: State set value "Standby"


##Team
    team add Player
    team modify Player collisionRule never
    team modify Player friendlyFire true
    team modify Player nametagVisibility never
    team modify Player seeFriendlyInvisibles false