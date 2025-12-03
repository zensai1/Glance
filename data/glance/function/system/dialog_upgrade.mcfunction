#>glance:system/dialog_upgrade
#@execution -> glance:system/leave


##OhMyDat呼び出し
    function #oh_my_dat:please


##Dialog削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Dialog.Upgrade


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