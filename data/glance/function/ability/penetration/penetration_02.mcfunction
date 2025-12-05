#>glance:ability/penetration/penetration_02
#@execution -> glance:ability/penetration/penetration_01_01


##Tagを付ける
    tp @s @p
    tp @s ~ ~1 ~
    tag @s add Znsi.Projectile


##UUIDコピー
    data modify entity @s data.Znsi.Owner set from entity @p UUID


##スコアコピー
    scoreboard players operation @s Znsi.ID = @p Znsi.ID
    scoreboard players set @s Znsi.Range 300