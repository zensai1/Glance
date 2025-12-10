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

    execute unless score @s Znsi.Inv matches 1.. run item replace entity @s inventory.9 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 1.. run item replace entity @s inventory.10 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 2.. run item replace entity @s inventory.11 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 2.. run item replace entity @s inventory.12 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 3.. run item replace entity @s inventory.13 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 3.. run item replace entity @s inventory.14 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 4.. run item replace entity @s inventory.15 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 4.. run item replace entity @s inventory.16 with black_stained_glass_pane
    execute unless score @s Znsi.Inv matches 4.. run item replace entity @s inventory.17 with black_stained_glass_pane


##能力説明を入れる
    execute if score @s Znsi.Ability matches 1 run item modify entity @s inventory.4 glance:ability/01_seclusion
    execute if score @s Znsi.Ability matches 2 run item modify entity @s inventory.4 glance:ability/02_dashing
    execute if score @s Znsi.Ability matches 3 run item modify entity @s inventory.4 glance:ability/03_tensho
    execute if score @s Znsi.Ability matches 4 run item modify entity @s inventory.4 glance:ability/04_reflection
    execute if score @s Znsi.Ability matches 5 run item modify entity @s inventory.4 glance:ability/05_penetration
    execute if score @s Znsi.Ability matches 6 run item modify entity @s inventory.4 glance:ability/06_rapidfire
    execute if score @s Znsi.Ability matches 7 run item modify entity @s inventory.4 glance:ability/07_reconnaissance
    execute if score @s Znsi.Ability matches 8 run item modify entity @s inventory.4 glance:ability/08_memory
    execute if score @s Znsi.Ability matches 9 run item modify entity @s inventory.4 glance:ability/09_restraint
    execute if score @s Znsi.Ability matches 10 run item modify entity @s inventory.4 glance:ability/10_haste
    execute if score @s Znsi.Ability matches 11 run item modify entity @s inventory.4 glance:ability/11_solid
    execute if score @s Znsi.Ability matches 12 run item modify entity @s inventory.4 glance:ability/12_replacement





##弓を復活させる
    execute if score *** Znsi.Phase matches 1.. run loot replace entity @s hotbar.0 loot glance:bow


##内部処理
    scoreboard players reset @s Znsi.Drop.Glass