#>glance:system/inv_limit
#@execution -> glance:system/game


##カーソルに持ってるものを消す
    item replace entity @s player.cursor with air
    clear @s black_stained_glass_pane


##インベントリの上2段を潰す
    item replace entity @s inventory.0 with black_stained_glass_pane
    item replace entity @s inventory.1 with black_stained_glass_pane
    item replace entity @s inventory.2 with black_stained_glass_pane
    item replace entity @s inventory.3 with black_stained_glass_pane
    item replace entity @s inventory.4 with black_stained_glass_pane
    item replace entity @s inventory.5 with black_stained_glass_pane
    item replace entity @s inventory.6 with black_stained_glass_pane
    item replace entity @s inventory.7 with black_stained_glass_pane
    item replace entity @s inventory.8 with black_stained_glass_pane
    item replace entity @s inventory.9 with black_stained_glass_pane
    item replace entity @s inventory.10 with black_stained_glass_pane
    item replace entity @s inventory.11 with black_stained_glass_pane
    item replace entity @s inventory.12 with black_stained_glass_pane
    item replace entity @s inventory.13 with black_stained_glass_pane
    item replace entity @s inventory.14 with black_stained_glass_pane
    item replace entity @s inventory.15 with black_stained_glass_pane
    item replace entity @s inventory.16 with black_stained_glass_pane
    item replace entity @s inventory.17 with black_stained_glass_pane


##内部処理
    scoreboard players reset @s Znsi.Drop.Glass