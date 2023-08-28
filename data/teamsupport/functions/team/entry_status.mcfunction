# アクションバーに各プレイヤーのエントリー状況・何人エントリーしているかを表示
execute unless score @s TS_team_entry matches 1.. run title @s actionbar {"text": "❌ ", "bold": true, "color": "red", "extra": [{"text": "未エントリー", "color": "white"}, {"text": "                    "}, {"score":{"name":"#total","objective":"TS_team_entry"}, "color": "white"}, {"text": "/", "color": "white"}, {"score":{"name":"#all","objective":"TS_team_entry"}, "color": "white"}, {"text": "(", "color": "gray"}, {"score":{"name":"#observer","objective":"TS_team_entry"},"color": "gray"}, {"text": ")","color": "gray"}]}
execute if score @s TS_team_entry matches 1..2 run title @s actionbar {"text": "✔ ", "bold": true, "color": "green", "extra": [{"text": "エントリー済", "color": "white"}, {"text": "                    "}, {"score":{"name":"#total","objective":"TS_team_entry"}, "color": "white"}, {"text": "/", "color": "white"}, {"score":{"name":"#all","objective":"TS_team_entry"}, "color": "white"}, {"text": "(", "color": "gray"}, {"score":{"name":"#observer","objective":"TS_team_entry"},"color": "gray"}, {"text": ")","color": "gray"}]}
execute if score @s TS_team_entry matches -1 run title @s actionbar {"text": "◆ ", "bold": true, "color": "gray", "extra": [{"text": "観戦者", "color": "white"}, {"text": "                          "}, {"score":{"name":"#total","objective":"TS_team_entry"}, "color": "white"}, {"text": "/", "color": "white"}, {"score":{"name":"#all","objective":"TS_team_entry"}, "color": "white"}, {"text": "(", "color": "gray"}, {"score":{"name":"#observer","objective":"TS_team_entry"},"color": "gray"}, {"text": ")","color": "gray"}]}
