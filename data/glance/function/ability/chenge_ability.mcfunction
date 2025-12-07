#>glance:ability/chenge_ability
#@execution -> enchant


##能力使用中だったら中止
    execute if items entity @s weapon.mainhand *[custom_data={Ability:1b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/01_seclusion
    execute if items entity @s weapon.mainhand *[custom_data={Ability:2b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/02_dashing
    execute if items entity @s weapon.mainhand *[custom_data={Ability:3b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/03_tensho
    execute if items entity @s weapon.mainhand *[custom_data={Ability:4b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/04_reflection
    execute if items entity @s weapon.mainhand *[custom_data={Ability:5b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/05_penetration
    execute if items entity @s weapon.mainhand *[custom_data={Ability:6b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/06_rapidfire
    execute if items entity @s weapon.mainhand *[custom_data={Ability:7b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/07_reconnaissance
    execute if items entity @s weapon.mainhand *[custom_data={Ability:8b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/08_memory
    execute if items entity @s weapon.mainhand *[custom_data={Ability:9b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/09_restraint
    execute if items entity @s weapon.mainhand *[custom_data={Ability:10b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/10_haste
    execute if items entity @s weapon.mainhand *[custom_data={Ability:11b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/11_solid
    execute if items entity @s weapon.mainhand *[custom_data={Ability:12b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/12_replacement
    execute if items entity @s weapon.mainhand *[custom_data={Ability:13b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/13_robbery
    execute if items entity @s weapon.mainhand *[custom_data={Ability:14b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/14_transparency
    execute if items entity @s weapon.mainhand *[custom_data={Ability:15b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/15_compounding
    execute if items entity @s weapon.mainhand *[custom_data={Ability:16b}] if entity @s[tag=Ability_Using] run loot replace entity @s weapon.mainhand loot glance:ability/16_leap
    execute if entity @s[tag=Ability_Using] run tellraw @s {"color":"red","text":"能力を使用中です。"}
    execute if entity @s[tag=Ability_Using] run return 0

    
##custom_dataによって何の能力か判定する
    execute if items entity @s weapon.mainhand *[custom_data={Ability:1b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 1
    execute if items entity @s weapon.mainhand *[custom_data={Ability:1b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「隠遁」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:2b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 2
    execute if items entity @s weapon.mainhand *[custom_data={Ability:2b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「疾駆」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:3b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 3
    execute if items entity @s weapon.mainhand *[custom_data={Ability:3b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「天翔」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:4b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 4
    execute if items entity @s weapon.mainhand *[custom_data={Ability:4b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「反射」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:5b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 5
    execute if items entity @s weapon.mainhand *[custom_data={Ability:5b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「貫通」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:6b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 6
    execute if items entity @s weapon.mainhand *[custom_data={Ability:6b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「速射」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:7b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 7
    execute if items entity @s weapon.mainhand *[custom_data={Ability:7b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「偵察」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:8b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 8
    execute if items entity @s weapon.mainhand *[custom_data={Ability:8b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「記憶」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:9b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 9
    execute if items entity @s weapon.mainhand *[custom_data={Ability:9b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「抑制」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:10b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 10
    execute if items entity @s weapon.mainhand *[custom_data={Ability:10b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「速攻」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:11b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 11
    execute if items entity @s weapon.mainhand *[custom_data={Ability:11b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「堅固」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:12b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 12
    execute if items entity @s weapon.mainhand *[custom_data={Ability:12b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「入替」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:13b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 13
    execute if items entity @s weapon.mainhand *[custom_data={Ability:13b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「強奪」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:14b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 14
    execute if items entity @s weapon.mainhand *[custom_data={Ability:14b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「透化」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:15b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 15
    execute if items entity @s weapon.mainhand *[custom_data={Ability:15b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「調合」の能力を使用します。"}
    execute if items entity @s weapon.mainhand *[custom_data={Ability:16b}] if entity @s[tag=!Ability_Using] run scoreboard players set @s Znsi.Ability 16
    execute if items entity @s weapon.mainhand *[custom_data={Ability:16b}] if entity @s[tag=!Ability_Using] run tellraw @s {"color":"green","text":"[Glance]　「飛躍」の能力を使用します。"}


##どうあれ実行
    item replace entity @s weapon.mainhand with air
    playsound minecraft:entity.player.levelup record @s


##前の能力のいろいろは削除
    tag @s remove Dashing
    effect clear @s speed
    scoreboard players set @s Znsi.Integer 0
    scoreboard players set @s Znsi.Decimal 0
    scoreboard players reset @s Znsi.20ticks
    scoreboard players reset @s Znsi.10ticks
    attribute @s max_absorption base reset