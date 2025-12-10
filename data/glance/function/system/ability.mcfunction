#>glance:system/ability
#@execution -> glance:system/tick


##隠遁
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 1 run function glance:ability/seclusion/seclusion_01
    execute if entity @a[tag=Seclusion] as @a[tag=Seclusion] at @s run scoreboard players add @s Znsi.20ticks 1
    execute as @a[scores={Znsi.20ticks=20..,Znsi.Ability=1}] at @s run function glance:ability/seclusion/seclusion_02


##疾駆
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 2 run function glance:ability/dashing/dashing_01
    execute if entity @a[tag=Dashing] as @a[tag=Dashing] at @s run scoreboard players add @s Znsi.20ticks 1
    execute as @a[tag=Dashing,scores={Znsi.20ticks=20..,Znsi.Ability=2}] at @s run function glance:ability/dashing/dashing_02


 ##天翔
    execute as @a[scores={Znsi.Integer=..4,Znsi.Ability=3}] at @s run scoreboard players add @s Znsi.10ticks 1
    execute as @a[scores={Znsi.10ticks=10..,Znsi.Ability=3}] at @s run function glance:ability/tensho/tensho_00
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 3 run function glance:ability/tensho/tensho_01
    
        
##反射
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 4 run function glance:ability/reflection/reflection_01
    execute if entity @a[tag=Reflection] as @a[tag=Reflection] at @s run scoreboard players remove @s Znsi.Timer 1
    execute if entity @a[scores={Znsi.Timer=0,Znsi.Ability=4},tag=Reflection] as @a[scores={Znsi.Timer=0,Znsi.Ability=4},tag=Reflection] at @s run function glance:ability/reflection/reflection_02_01


##貫通
    execute if entity @a[scores={Znsi.Ability=5,Znsi.Use.Bow=1..},predicate=glance:sneak] as @a[scores={Znsi.Ability=5,Znsi.Use.Bow=1..},predicate=glance:sneak] at @s run function glance:ability/penetration/penetration_01
    execute if entity @e[tag=Znsi.Projectile] as @e[tag=Znsi.Projectile] at @s run function glance:ability/penetration/penetration_03_01


##速射
     execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 6 run function glance:ability/rapidfire/rapidfire_01


##偵察
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 7 store result storage glance: Ability.Recon int 1 run scoreboard players get @s Znsi.ID
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 7 run function glance:ability/reconnaissance/reconnaissance_01 with storage glance: Ability
    execute if entity @a[tag=Reconnaissance,predicate=glance:stare,tag=!Stare_Reward] as @a[tag=Reconnaissance,predicate=glance:stare,tag=!Stare_Reward] at @s run scoreboard players add @s Znsi.Stare 1
    execute if entity @a[tag=Reconnaissance,predicate=!glance:stare,scores={Znsi.Stare=1..}] as @a[tag=Reconnaissance,predicate=!glance:stare,scores={Znsi.Stare=1..}] at @s run playsound minecraft:entity.creaking.deactivate record @s
    execute if entity @a[tag=Reconnaissance,predicate=!glance:stare] as @a[tag=Reconnaissance,predicate=!glance:stare] at @s run scoreboard players set @s Znsi.Stare 0
    execute if entity @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=1}] as @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=1}] at @s run playsound minecraft:entity.creaking.activate record @s
    execute if entity @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] as @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] at @s run playsound minecraft:entity.allay.ambient_with_item record @s
    execute if entity @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] as @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] at @s run tag @s add Stare_Reward
    execute if entity @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] as @a[tag=Reconnaissance,predicate=glance:stare,scores={Znsi.Stare=100..}] at @s run scoreboard players reset @s Znsi.Stare
    execute if entity @a[tag=Reconnaissance] as @a[tag=Reconnaissance] at @s run scoreboard players add @s Znsi.20ticks 1
    execute as @a[scores={Znsi.20ticks=20..,Znsi.Ability=7}] at @s run function glance:ability/reconnaissance/reconnaissance_03
    execute if entity @a[tag=Reconnaissance,predicate=!glance:reconnaissance] as @a[tag=Reconnaissance,predicate=!glance:reconnaissance] at @s run function #oh_my_dat:please
    execute if entity @a[tag=Reconnaissance,predicate=!glance:reconnaissance] as @a[tag=Reconnaissance,predicate=!glance:reconnaissance] at @s run function glance:ability/reconnaissance/reconnaissance_04 with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Reconnaissance


##記憶
    execute as @a[tag=!Memory] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 8 run function glance:ability/memory/memory_01
    execute if entity @a[tag=Memory] as @a[tag=Memory] at @s run scoreboard players add @s Znsi.20ticks 1
    execute as @a[tag=Memory,scores={Znsi.20ticks=20..,Znsi.Ability=8}] at @s run function glance:ability/memory/memory_02
    execute as @a[tag=Memory] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 8 run function #oh_my_dat:please
    execute as @a[tag=Memory] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 8 run function glance:ability/memory/memory_03_02 with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Memory


##抑制
    execute as @a[tag=Restraint] at @s run scoreboard players add @s Znsi.Restraint 1
    execute as @a[tag=Restraint] at @s if score @s Znsi.Restraint matches 200.. run function glance:ability/restraint/restraint_01


##速攻
    execute as @a[tag=!Haste] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 10 run function glance:ability/haste/haste_01
    execute if entity @a[tag=Haste] as @a[tag=Haste] at @s run scoreboard players add @s Znsi.20ticks 1
    execute as @a[tag=Haste,scores={Znsi.20ticks=20..,Znsi.Ability=10}] at @s run function glance:ability/haste/haste_02
    

##堅固
    execute as @a at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 11 run function glance:ability/solid/solid_01


##入替
    execute as @a[predicate=!glance:sneak] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 12 run function glance:ability/replacement/replacement_01 with entity @s
    execute as @a[predicate=glance:sneak] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 12 store result storage glance: Ability.Replacement int 1 run scoreboard players get @s Znsi.Replacement
    execute as @a[predicate=glance:sneak] at @s if items entity @s weapon.offhand bow if score @s Znsi.Ability matches 12 run function glance:ability/replacement/replacement_02 with storage glance: Ability