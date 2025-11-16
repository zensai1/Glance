#>glance:stp/put



##実行プレイヤーにアイテムを代入する
    ##チェスト付きトロッコを召喚
        summon chest_minecart ~ ~3 ~ {NoGravity:1b,Tags:["storage_to_player","stp.temp.entity"]}

    ##アーマースタンドを召喚
        summon armor_stand ~ ~10 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["stp.stand.1","stp.temp.entity"]}
        summon armor_stand ~ ~10 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["stp.stand.2","stp.temp.entity"]}
        summon armor_stand ~ ~10 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["stp.stand.3","stp.temp.entity"]}

    ##チェスト付きトロッコ+アマスタにデータを代入
        function glance:stp/minecart

    ##プレイヤーにアイテムを入れる
        function glance:stp/player

    ##使用エンティティを削除する
        tp @e[type=armor_stand,tag=stp.temp.entity] ~ -1000 ~
        tp @e[type=chest_minecart,tag=stp.temp.entity] ~ -1000 ~
        kill @e[type=armor_stand,tag=stp.temp.entity]
        kill @e[type=chest_minecart,tag=stp.temp.entity]