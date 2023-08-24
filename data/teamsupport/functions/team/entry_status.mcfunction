# アクションバーに各プレイヤーのエントリー状況・何人エントリーしているかを表示
execute unless score @s TS_team_entry matches 1 run title @s actionbar {"text": "❌ ", "bold": true, "color": "red", "extra": [{"text": "未エントリー", "color": "white"}, {"text": "                    "}, {"score":{"name":"#total","objective":"TS_team_entry"}, "color": "white"}, {"text": "/", "color": "white"}, {"nbt":"players","storage":"teamsupport:state", "color": "white"}]}
execute if score @s TS_team_entry matches 1 run title @s actionbar {"text": "✔ ", "bold": true, "color": "green", "extra": [{"text": "エントリー済", "color": "white"}, {"text": "                    "}, {"score":{"name":"#total","objective":"TS_team_entry"}, "color": "white"}, {"text": "/", "color": "white"}, {"nbt":"players","storage":"teamsupport:state", "color": "white"}]}
