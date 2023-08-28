scoreboard players add $can_select_team TS_settings 1
scoreboard players operation $can_select_team TS_settings %= #2 TS_settings
tellraw @s {"text": "現在の値: ", "color": "green", "extra": [{"score":{"objective": "TS_settings", "name": "$can_select_team"}}]}
