#>glance:lottery/set
#@execution -> glance:lottery/pre


##Debug
    #tellraw @a "Lottery/Set"


##配列用のストレージを初期化    
    data modify storage glance: Pool.Args set value {}


#Aの要素数を取得
    $execute store result storage glance: Pool.Args.Index int 1 run random value 0..$(Length)
    #tellraw @a [{"color":"aqua","text":"要素数："},{"color":"aqua","interpret":false,"nbt":"Pool.Args.Index","storage":"glance:"},"です"]

#Bの値を元に要素の取り出し、削除
    function glance:game/lottery/get with storage glance: Pool.Args