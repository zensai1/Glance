#>glance:system/area/
#@execution -> glance:


say area/
##以前のAreaタグ付きを消す
    kill @e[type=marker,tag=Area]
    kill @e[type=marker,tag=Center]


##中心にmarker召喚
    execute positioned 192 36 192 run summon marker ~ ~ ~ {Tags:["Center"]}
    execute positioned 192 36 192 run summon marker ~ ~ ~ {Tags:["Area"]}

    function glance:system/area/set