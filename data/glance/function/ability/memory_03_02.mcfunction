#>glance:ability/memory_03_02
#@execution -> glance:system/game


##記憶使用中にFキーを押した時

##弓をもとに戻しとく
    item replace entity @s weapon.offhand with air
    loot replace entity @s weapon.mainhand loot glance:bow


##元の位置に戻す
    $tp $(X) $(Y) $(Z)
    execute positioned as @s run playsound minecraft:block.respawn_anchor.deplete record @s


##内部処理
    tag @s remove Memory
    tag @s remove Ability_Using
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players remove @s Znsi.MP 5