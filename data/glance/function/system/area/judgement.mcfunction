#>glance:system/area/judgement


##コンパスをもとに戻す
    $loot replace entity @s weapon.mainhand loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:compass",conditions:[],functions:[{function:"minecraft:set_name",entity:"this",name:{text:"エリアコンパス",color:"light_purple",italic:0},target:"custom_name"},{function:"minecraft:set_lore",entity:"this",lore:[{text:"エリアの中心を指し示すコンパス",color:"white",italic:0}],mode:"replace_all"},{function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override":0b,"minecraft:lodestone_tracker":{target:{pos:[$(x),$(y),$(z)],dimension:"minecraft:overworld"},tracked:0b},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"minecraft:entity.puffer_fish.blow_up",has_consume_particles:0b},"minecraft:use_remainder":{id:"minecraft:compass",components:{"minecraft:custom_name":{text:"エリアコンパス",type:"text",color:"light_purple",italic:0b},"minecraft:enchantment_glint_override":0b,"minecraft:lodestone_tracker":{target:{pos:[$(x),$(y),$(z)],dimension:"minecraft:overworld"},tracked:0b}}}},conditions:[]}]}],functions:[]}]}


##次のエリアの中か判定
    execute if score *** Znsi.Phase matches 1 as @e[tag=lottery_area] at @s positioned ~-175 ~-175 ~-175 as @a[dx=349,dy=349,dz=349,scores={Znsi.Use.Compass=1..}] run tag @s add InArea
    execute if score *** Znsi.Phase matches 2 as @e[tag=lottery_area] at @s positioned ~-125 ~-175 ~-125 as @a[dx=249,dy=349,dz=249,scores={Znsi.Use.Compass=1..}] run tag @s add InArea
    execute if score *** Znsi.Phase matches 3 as @e[tag=lottery_area] at @s positioned ~-50 ~-175 ~-50 as @a[dx=99,dy=349,dz=99,scores={Znsi.Use.Compass=1..}] run tag @s add InArea
    execute if score *** Znsi.Phase matches 4 as @e[tag=lottery_area] at @s positioned ~-25 ~-175 ~-25 as @a[dx=49,dy=349,dz=49,scores={Znsi.Use.Compass=1..}] run tag @s add InArea
    execute if score *** Znsi.Phase matches 5 as @e[tag=lottery_area] at @s positioned ~-10 ~-175 ~-10 as @a[dx=19,dy=349,dz=19,scores={Znsi.Use.Compass=1..}] run tag @s add InArea
    execute if score *** Znsi.Phase matches 6 as @e[tag=lottery_area] at @s positioned ~-0 ~-175 ~-0 as @a[dx=0,dy=349,dz=0,scores={Znsi.Use.Compass=1..}] run tag @s add InArea


##ろぐをひょうじ
    execute if entity @s[tag=InArea] run tellraw @s {text:"セーフエリア内です",color:green}
    execute if entity @s[tag=!InArea] run tellraw @s {text:"セーフエリア外です",color:red}


##内部処理
    tag @s remove InArea
    scoreboard players reset @s Znsi.Use.Compass