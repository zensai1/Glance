#glance:system/game
#@execution -> glance:system/tick


##インベントリ制限
    execute as @a at @s if items entity @s player.cursor black_stained_glass_pane run function glance:system/inv_limit
    execute if entity @a[scores={Znsi.Drop.Glass=1..}] as @a[scores={Znsi.Drop.Glass=1..}] at @s run function glance:system/inv_limit


##準備時間
    execute if entity @a[predicate=glance:on_ground] as @a[predicate=glance:on_ground] at @s if score *** Znsi.Phase matches 1.. run clear @s feather


##弓矢
    execute as @a[gamemode=adventure] at @s store result score @s Znsi.Arrows if items entity @s container.* arrow
    ##リロード
        execute as @a[gamemode=adventure,tag=!Reconnaissance] at @s if score @s Znsi.Arrows < @s Znsi.MaxArrows if score *** Znsi.Phase matches 1.. run scoreboard players add @s Znsi.Reload 1
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Reload >= @s Znsi.MaxReload run function glance:arrow/give

    ##不正対策
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Arrows matches 0.. if items entity @s player.cursor arrow run item replace entity @s player.cursor with air
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Arrows matches 1.. unless items entity @s hotbar.8 arrow run clear @s arrow
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Arrows matches 0 if score @s Znsi.Reload < @s Znsi.MaxReload unless items entity @s hotbar.8 barrier run clear @s barrier
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Arrows matches 0 if score @s Znsi.Reload < @s Znsi.MaxReload if items entity @s player.cursor barrier run item replace entity @s player.cursor with air
        execute as @a[gamemode=adventure] at @s if score @s Znsi.Arrows matches 0 if score @s Znsi.Reload < @s Znsi.MaxReload run loot replace entity @s hotbar.8 loot glance:arrow
    


##アクションバー
    execute as @a[scores={Znsi.Ability=0}] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]

    execute as @a[scores={Znsi.Ability=1},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 隠遁: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=1},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 隠遁: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]

    execute as @a[scores={Znsi.Ability=2},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 疾駆: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=2},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 疾駆: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]

    execute as @a[scores={Znsi.Ability=3},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 天翔: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=3},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 天翔: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]

    execute as @a[scores={Znsi.Ability=4},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 反射: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Timer"}}]
    execute as @a[scores={Znsi.Ability=4},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 反射: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Timer"}}]

    execute as @a[scores={Znsi.Ability=5},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]
    execute as @a[scores={Znsi.Ability=5},tag=Restraint] at @s run title @s actionbar [{"strikethrough":true,"bold":true,"color":"gray","score":{"name":"@s","objective":"Znsi.MP"}},{"strikethrough":true,"bold":false,"color":"gray","text":" / "},{"strikethrough":true,"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]

    execute as @a[scores={Znsi.Ability=6},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]
    execute as @a[scores={Znsi.Ability=6},tag=Restraint] at @s run title @s actionbar [{"strikethrough":true,"bold":true,"color":"gray","score":{"name":"@s","objective":"Znsi.MP"}},{"strikethrough":true,"bold":false,"color":"gray","text":" / "},{"strikethrough":true,"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]

    execute as @a[scores={Znsi.Ability=7},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 偵察: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=7},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 偵察: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]

    execute as @a[scores={Znsi.Ability=8},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 記憶: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=8},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 記憶: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]

    execute as @a[scores={Znsi.Ability=9},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]
    execute as @a[scores={Znsi.Ability=9},tag=Restraint] at @s run title @s actionbar [{"strikethrough":true,"bold":true,"color":"gray","score":{"name":"@s","objective":"Znsi.MP"}},{"strikethrough":true,"bold":false,"color":"gray","text":" / "},{"strikethrough":true,"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]

    execute as @a[scores={Znsi.Ability=10},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 速攻: "},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"bold":false,"color":"white","text":"."},{"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]
    execute as @a[scores={Znsi.Ability=10},tag=Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}},{"bold":false,"color":"gray","text":" | 速攻: "},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Integer"}},{"strikethrough":true,"bold":false,"color":"white","text":"."},{"strikethrough":true,"bold":false,"color":"white","score":{"name":"@s","objective":"Znsi.Decimal"}}]


    execute as @a[scores={Znsi.Ability=11},tag=!Restraint] at @s run title @s actionbar [{"bold":true,"color":"green","score":{"name":"@s","objective":"Znsi.MP"}},{"bold":false,"color":"gray","text":" / "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]
    execute as @a[scores={Znsi.Ability=11},tag=Restraint] at @s run title @s actionbar [{"strikethrough":true,"bold":true,"color":"gray","score":{"name":"@s","objective":"Znsi.MP"}},{"strikethrough":true,"bold":false,"color":"gray","text":" / "},{"strikethrough":true,"bold":false,"color":"gray","score":{"name":"@s","objective":"Znsi.MaxMP"}}]


##MP関連    
    execute as @a at @s if score @s Znsi.MP < @s Znsi.MaxMP run scoreboard players add @s Znsi.MPRec 1
    execute as @a at @s if score @s Znsi.MPRec >= @s Znsi.MaxMPRec run scoreboard players add @s Znsi.MP 1
    execute as @a at @s if score @s Znsi.MPRec >= @s Znsi.MaxMPRec run scoreboard players reset @s Znsi.MPRec


##回復薬
    execute if entity @a[scores={Znsi.Use.Potion=1..}] as @a[scores={Znsi.Use.Potion=1..}] at @s run function glance:game/health/recovery
    execute if entity @a[tag=Recovery] as @a[tag=Recovery] at @s run scoreboard players add @s Znsi.Rec 1
    execute if entity @a[scores={Znsi.Rec=3..}] as @a[scores={Znsi.Rec=3..}] at @s run effect clear @s regeneration
    execute if entity @a[scores={Znsi.Rec=3..}] as @a[scores={Znsi.Rec=3..}] at @s run effect clear @s resistance
    execute if entity @a[scores={Znsi.Rec=3..}] as @a[scores={Znsi.Rec=3..}] at @s run tag @s remove Recovery
    execute if entity @a[scores={Znsi.Rec=3..}] as @a[scores={Znsi.Rec=3..}] at @s run scoreboard players reset @s Znsi.Rec
    execute as @a at @s if items entity @s container.* glass_bottle run clear @s glass_bottle
    

##リセット
    execute if entity @a[scores={Znsi.Use.Bow=1..}] as @a[scores={Znsi.Use.Bow=1..}] at @s run function glance:game/arrow with entity @s


##debug
    execute if entity @a[scores={Znsi.Use.Echo_shard=1..}] as @a[scores={Znsi.Use.Echo_shard=1..}] at @s run function glance:.debug/mp_rec


##QuickAction
    execute if entity @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] as @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] at @s store result storage glance: Dialog.Upgrade int 1 run scoreboard players get @s Znsi.Upgrade
    execute if entity @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] as @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] at @s store result storage glance: Dialog.MaxUpgrade int 1 run scoreboard players get *** Znsi.Upgrade
    execute if entity @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] as @a[scores={Znsi.QuickAction=1,Znsi.Page=0}] at @s run function glance:game/upgrade/ with storage glance: Dialog

    execute if entity @a[scores={Znsi.QuickAction=2,Znsi.Page=0}] as @a[scores={Znsi.QuickAction=2,Znsi.Page=0}] at @s run function glance:game/netshop/

    execute if entity @a[scores={Znsi.QuickAction=1,Znsi.Page=100}] as @a[scores={Znsi.QuickAction=1,Znsi.Page=100}] at @s run function glance:game/upgrade/arrow
    execute if entity @a[scores={Znsi.QuickAction=2,Znsi.Page=100}] as @a[scores={Znsi.QuickAction=2,Znsi.Page=100}] at @s run function glance:game/upgrade/reload
    execute if entity @a[scores={Znsi.QuickAction=3,Znsi.Page=100}] as @a[scores={Znsi.QuickAction=3,Znsi.Page=100}] at @s run function glance:game/upgrade/mp
    execute if entity @a[scores={Znsi.QuickAction=4,Znsi.Page=100}] as @a[scores={Znsi.QuickAction=4,Znsi.Page=100}] at @s run function glance:game/upgrade/mp_rec
    execute if entity @a[scores={Znsi.QuickAction=5,Znsi.Page=100}] as @a[scores={Znsi.QuickAction=5,Znsi.Page=100}] at @s run function glance:game/upgrade/inventory
    execute if entity @a[tag=Upgrading] as @a[tag=Upgrading] at @s run scoreboard players remove @s Znsi.UpgradeTimer 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=100}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=100}] at @s run playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=80}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=80}] at @s run playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=60}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=60}] at @s run playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=40}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=40}] at @s run playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=20}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=20}] at @s run playsound minecraft:block.smithing_table.use record @s ~ ~ ~ 1
    execute if entity @a[tag=Upgrading,scores={Znsi.UpgradeTimer=0}] as @a[tag=Upgrading,scores={Znsi.UpgradeTimer=0}] at @s run function glance:game/upgrade/finish
    execute if entity @a[tag=Upgrading,predicate=glance:sneak] as @a[tag=Upgrading,predicate=glance:sneak] at @s run function glance:game/upgrade/cancel

    execute if entity @a[scores={Znsi.QuickAction=-1,Znsi.Page=0..100}] as @a[scores={Znsi.QuickAction=-1,Znsi.Page=0..100}] at @s run function glance:game/upgrade/close

    execute if entity @a[scores={Znsi.Netshop=1,Znsi.Page=200}] as @a[scores={Znsi.Netshop=1,Znsi.Page=200}] at @s run function glance:game/netshop/recovery_medicine
    execute if entity @a[scores={Znsi.Netshop=2,Znsi.Page=200}] as @a[scores={Znsi.Netshop=2,Znsi.Page=200}] at @s run function glance:game/netshop/assortment_a
    execute if entity @a[scores={Znsi.Netshop=3,Znsi.Page=200}] as @a[scores={Znsi.Netshop=3,Znsi.Page=200}] at @s run function glance:game/netshop/assortment_b

    execute if entity @a[scores={Znsi.QuickAction=-1,Znsi.Page=200}] as @a[scores={Znsi.QuickAction=-1,Znsi.Page=200}] at @s run function glance:game/netshop/close
    execute if entity @a[scores={Znsi.Page=200},gamemode=spectator] as @a[scores={Znsi.Page=200},gamemode=spectator] at @s run function glance:game/netshop/close


##常時実行
    execute as @a at @s run effect give @s weakness infinite 255 true
    execute as @a[gamemode=adventure] at @s run scoreboard players enable @s Znsi.QuickAction
    scoreboard players enable @a[gamemode=adventure] Znsi.Netshop
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] at @s run kill @s
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:bow"}}] as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] at @s run kill @s
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:barrier"}}] as @e[type=item,nbt={Item:{id:"minecraft:barrier"}}] at @s run kill @s
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane"}}] as @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane"}}] at @s run kill @s
    execute as @a at @s if items entity @s player.cursor bow run loot replace entity @s hotbar.0 loot glance:bow
    execute as @a at @s if items entity @s player.cursor bow run item replace entity @s player.cursor with air
    execute if entity @a[scores={Znsi.Drop.Bow=1..}] as @a[scores={Znsi.Drop.Bow=1..}] at @s run loot replace entity @s hotbar.0 loot glance:bow
    execute if entity @a[scores={Znsi.Drop.Bow=1..}] as @a[scores={Znsi.Drop.Bow=1..}] at @s run scoreboard players reset @s Znsi.Drop.Bow
    execute as @a at @s if items entity @s container.* potion[minecraft:potion_contents=water] run clear @s minecraft:potion[minecraft:potion_contents=water]


##残り人数
    execute store result score *** Znsi.Remaining if entity @a[tag=Alive]
    execute if score *** Znsi.Remaining matches 1 run function glance:game/winner


##エリア死
    execute if entity @a[scores={Znsi.Deathcount=1..}] as @a[scores={Znsi.Deathcount=1..}] at @s run function glance:game/area_death


##フェーズ7
    execute if score *** Znsi.Phase matches 7.. as @a[gamemode=adventure] at @s run damage @s 0.5 magic

##アイテム
    execute if entity @a[scores={Znsi.Use.White_Dye=1..}] as @a[scores={Znsi.Use.White_Dye=1..}] at @s run function glance:game/items/assortment_a
    execute if entity @a[scores={Znsi.Use.Orange_Dye=1..}] as @a[scores={Znsi.Use.Orange_Dye=1..}] at @s run function glance:game/items/assortment_b


##エリア収縮
    execute if data storage glance: Phase.State if entity @e[tag=Area_Center,scores={Znsi.Integer=1..}] as @e[tag=Area_Center,scores={Znsi.Integer=1..}] at @s run function glance:system/area/moving with storage glance: Area
