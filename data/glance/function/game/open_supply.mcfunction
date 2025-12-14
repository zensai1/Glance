#>glance:game/open_supply
#@execution -> glance:system/act_interact


##一度でも触ってたらメッセージを出す
    $execute if data entity @s {data:{Player:[$(UUID)]}} on target run tag @s add Opened
    $execute if data entity @s {data:{Player:[$(UUID)]}} run tellraw @a[tag=Opened] {"color":"red","text":"既に開けたことのあるチェストです"}
    $execute if data entity @s {data:{Player:[$(UUID)]}} on target run tag @s remove Opened
    $execute if data entity @s {data:{Player:[$(UUID)]}} run data remove entity @s interaction
    $execute if data entity @s {data:{Player:[$(UUID)]}} run return 0


##初回の処理
    $data modify entity @s data.uuid set value $(UUID)
    data modify entity @s data.Player append from entity @s data.uuid
    function glance:game/loot with storage glance: LootTable
    execute on target run tag @s add Supply_Open
    execute as @a[tag=Supply_Open] at @s run playsound minecraft:block.vault.reject_rewarded_player record @s
    execute on target run tag @s remove Supply_Open 


##interactionの履歴を消す
    data remove entity @s interaction