#>glance:game/upgrade/
#@execution -> glance:system/game


##OhMyDat呼び出し
    function #oh_my_dat:please


##body部分の情報を再取得
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Dialog.Upgrade.body set value {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "text": "アップグレード残り回数:  ",\
      "extra": [\
        {\
          "text": "$(Upgrade)",\
          "extra": [\
            {\
              "text": " / ",\
              "extra": [\
                {\
                  "text": "$(MaxUpgrade)"\
                }\
              ],\
              "color": "white",\
              "bold": false\
            }\
          ],\
          "color": "green",\
          "bold": true\
        }\
      ]\
    }\
  }


##内部処理
    scoreboard players reset @s Znsi.QuickAction
    scoreboard players set @s Znsi.Page 100


##Dialogを出す
    function glance:game/upgrade/show with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Dialog