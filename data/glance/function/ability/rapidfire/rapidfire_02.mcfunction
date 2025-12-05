#>glance:ability/rapidfire/rapidfire_02
#@execution -> glance:ability/rapidfire/rapidfire_01


##Motion計算
    execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^3
    data modify storage glance: Ability.Rapidfire.Pos set from entity @s Pos
    execute store result storage glance: Ability.Rapidfire.x double 0.01 run data get storage glance: Ability.Rapidfire.Pos[0] 100
    execute store result storage glance: Ability.Rapidfire.y double 0.01 run data get storage glance: Ability.Rapidfire.Pos[1] 100
    execute store result storage glance: Ability.Rapidfire.z double 0.01 run data get storage glance: Ability.Rapidfire.Pos[2] 100


##Marker消去
    kill @s