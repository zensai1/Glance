#>glance:.debug/test
#@execution -> いろいろ

#say 実行したよ

##一度でも触ってたらメッセージを出す
    $execute if data entity @s {data:{Player:[$(UUID)]}} run tellraw @a "[Glance] 一度触ってます"
    $execute if data entity @s {data:{Player:[$(UUID)]}} run return 0


$data modify entity @s data.uuid set value $(UUID)
data modify entity @s data.Player append from entity @s data.uuid

#summon interaction ~ ~ ~ {data:{my_other_field:99,my_array:[{abc:2b},{xyz:3b}]}}
#summon interaction ~ ~ ~ {data:{Player:[],uuid:[]}}