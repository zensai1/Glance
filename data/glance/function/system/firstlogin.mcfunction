#glance:system/firstlogin
#@execution -> glance:system/tick

##必要な設定を行うよ
  tag @s add firstlogin
  scoreboard players add $Znsi.CoreID Znsi.CoreID 1
  scoreboard players operation @s Znsi.ID = $Znsi.CoreID Znsi.CoreID
  scoreboard players set @s Znsi.Ability 0
  scoreboard players set @s Znsi.MP 5
  scoreboard players set @s Znsi.MaxMP 5
  scoreboard players set @s Znsi.MaxArrows 1
  scoreboard players set @s Znsi.Timer 0
  scoreboard players set @s Znsi.Integer 0
  scoreboard players set @s Znsi.Decimal 0
  scoreboard players set @s Znsi.Page 0

  attribute @s max_health base set 6.0
  attribute @s attack_damage base set 0
  attribute @s minecraft:waypoint_transmit_range base set 0
  attribute @s waypoint_receive_range base set 60000000.0


##メッセージを流すよ
    tellraw @s {"color":"green","text":"Glance　現在のPatchは「1.01」です"}
    tellraw @s [{"color":"green","text":"ルールなどは"},{"click_event":{"action":"open_url","url":"https://discord.gg/pFwAZDCXcY"},"color":"white","text":"こちら","underlined":true},{"color":"green","text":"から"}]


##OhMyDat呼び出し
    function #oh_my_dat:please


##Dialogの一部を格納する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Dialog.Upgrade set value {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "アップグレード",\
    "color": "green"\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "text": ""\
    }\
  },\
  "can_close_with_escape": true,\
  "exit_action": {\
    "label": {\
      "text": "閉じる"\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger Znsi.QuickAction set -1"\
    }\
  },\
  "columns": 2,\
  "actions": [\
    {\
      "label": {\
        "text": "矢の最大所持数増加"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.QuickAction set 1"\
      }\
    },\
    {\
      "label": {\
        "text": "リロード速度上昇"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.QuickAction set 2"\
      }\
    },\
    {\
      "label": {\
        "text": "最大MP上昇"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.QuickAction set 3"\
      }\
    },\
    {\
      "label": {\
        "text": "MP回復速度上昇"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.QuickAction set 4"\
      }\
    },\
    {\
      "label": {\
        "text": "インベントリ拡張"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.QuickAction set 5"\
      }\
    }\
  ]\
}