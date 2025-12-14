#>glance:lottery/pre
#@execution -> glance:


##Debug
    #tellraw @a "Lottery/Pre"
    #tellraw @a [{text:"---------------"},{score:{name:"#Ability_Num",objective:Znsi.Ability}},{text:"回目の抽選"},{text:"---------------"}]


##仮置きが何も入ってなかったら元からコピーしてくる
    execute unless data storage glance: Pool.Temp[0] run data modify storage glance: Pool.Temp set from storage glance: Ability.Name


##配列用のストレージを初期化    
    data modify storage glance: Pool.Args set value {}


##配列の長さをint型で取得
    execute store result score #Args Znsi.Distance run data get storage glance: Pool.Temp
    scoreboard players remove #Args Znsi.Distance 1


##配列の長さをストレージに代入
    execute store result storage glance: Pool.Args.Length int 1 run scoreboard players get #Args Znsi.Distance


##要素数をいじくりまわす
    function glance:game/lottery/set with storage glance: Pool.Args