#>glance:arrow/phe
#@execution -> advancement


##エメラルドを一個渡す
    execute if entity @s[tag=!NotGive] run loot give @s loot glance:emerald


##内部処理
    tag @s remove NotGive


##進捗はく奪
    advancement revoke @s only glance:phe