#>glance:stp/player
#@execution -> glance:stp/put


##アイテムをプレイヤーに渡す

##hotbar
    item replace entity @s hotbar.0 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.0
    item replace entity @s hotbar.1 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.1
    item replace entity @s hotbar.2 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.2
    item replace entity @s hotbar.3 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.3
    item replace entity @s hotbar.4 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.4
    item replace entity @s hotbar.5 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.5
    item replace entity @s hotbar.6 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.6
    item replace entity @s hotbar.7 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.7
    item replace entity @s hotbar.8 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] hotbar.8

##一列目
    item replace entity @s inventory.0 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.0
    item replace entity @s inventory.1 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.1
    item replace entity @s inventory.2 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.2
    item replace entity @s inventory.3 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.3
    item replace entity @s inventory.4 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.4
    item replace entity @s inventory.5 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.5
    item replace entity @s inventory.6 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.6
    item replace entity @s inventory.7 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.7
    item replace entity @s inventory.8 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.8

##二列目
    item replace entity @s inventory.9 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.9
    item replace entity @s inventory.10 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.10
    item replace entity @s inventory.11 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.11
    item replace entity @s inventory.12 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.12
    item replace entity @s inventory.13 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.13
    item replace entity @s inventory.14 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.14
    item replace entity @s inventory.15 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.15
    item replace entity @s inventory.16 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.16
    item replace entity @s inventory.17 from entity @e[type=chest_minecart,limit=1,tag=storage_to_player] inventory.17

##三列目
    item replace entity @s inventory.18 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] weapon.mainhand
    item replace entity @s inventory.19 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] weapon.offhand
    item replace entity @s inventory.20 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] armor.feet
    item replace entity @s inventory.21 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] armor.legs
    item replace entity @s inventory.22 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] armor.chest
    item replace entity @s inventory.23 from entity @e[type=armor_stand,limit=1,tag=stp.stand.1] armor.head
    item replace entity @s inventory.24 from entity @e[type=armor_stand,limit=1,tag=stp.stand.2] weapon.mainhand
    item replace entity @s inventory.25 from entity @e[type=armor_stand,limit=1,tag=stp.stand.2] weapon.offhand
    item replace entity @s inventory.26 from entity @e[type=armor_stand,limit=1,tag=stp.stand.2] armor.feet

##装備欄
    item replace entity @s armor.feet from entity @e[type=armor_stand,limit=1,tag=stp.stand.3] armor.feet
    item replace entity @s armor.legs from entity @e[type=armor_stand,limit=1,tag=stp.stand.3] armor.legs
    item replace entity @s armor.chest from entity @e[type=armor_stand,limit=1,tag=stp.stand.3] armor.chest
    item replace entity @s armor.head from entity @e[type=armor_stand,limit=1,tag=stp.stand.3] armor.head
    
##オフハンド
    item replace entity @s weapon.offhand from entity @e[type=armor_stand,limit=1,tag=stp.stand.3] weapon.offhand