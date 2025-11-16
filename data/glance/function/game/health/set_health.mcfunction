#glance:game/health/set_health
#@execution -> glance:game/start

#スコア変動
    $execute as @a[gamemode=adventure] at @s run attribute @s max_health base set $(Health).0
    effect give @a instant_health 2 250 true