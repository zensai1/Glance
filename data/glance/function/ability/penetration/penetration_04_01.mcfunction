#>glance:ability/penetration/penetration_04_01
#@execution -> glance:ability/penetration/penetration_03_01


##ターゲットを特定
    tag @a[sort=nearest,limit=1] add Znsi.Target


##使用者か確認
    execute store success score @s Znsi.HitCheck if score @s Znsi.ID = @a[tag=Znsi.Target,limit=1,sort=nearest] Znsi.ID


##ダメージ判定
    execute if score @s Znsi.HitCheck matches 0 at @s as @a[tag=Znsi.Target,limit=1,sort=nearest] at @s run function glance:ability/penetration/penetration_04_02


##リセット
    tag @a[limit=1,sort=nearest] remove Znsi.Target

##kill
    execute if score @s Znsi.HitCheck matches 0 run kill @s