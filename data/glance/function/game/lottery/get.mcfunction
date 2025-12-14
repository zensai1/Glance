#>glance:lottery/get
#@execution -> glance:lottery/set


##Debug
    #tellraw @a "Lottery/Get"


##抽選した要素を別に保管
    #$tellraw @a [{"color":"aqua","text":"選ばれた異能："},{"color":"aqua","interpret":true,"nbt":"Pool.Temp[$(Index)]","storage":"glance:"}]
    $data modify storage glance: Result.Pool set from storage glance: Pool.Temp[$(Index)]
    data modify storage glance: Ability.Pool append from storage glance: Result.Pool
    #function glance:game/lottery/ with storage glance: Result


##A[B]を削除
    $data remove storage glance: Pool.Temp[$(Index)]


    #tellraw @a [{"color":"aqua","text":"今回出現する異能："},{"color":"aqua","interpret":true,"nbt":"Ability.Pool[]","storage":"glance:"}]
    #tellraw @a [{"color":"aqua","text":"残りの異能："},{"color":"aqua","interpret":true,"nbt":"Pool.Temp[]","storage":"glance:"}]
    #tellraw @a [{text:"------------------------------"}]

##設定した異能を抽選回数になるまで繰り返す
    execute if score #Ability_Num Znsi.Ability matches 1.. run scoreboard players remove #Ability_Num Znsi.Ability 1
    execute if score #Ability_Num Znsi.Ability matches 1.. run function glance:game/lottery/pre
    #execute if score #Ability_Num Znsi.Ability matches 0 run function glance:game/lottery/