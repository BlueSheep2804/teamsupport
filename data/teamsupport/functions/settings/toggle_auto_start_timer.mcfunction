scoreboard players add $auto_start_timer TS_settings 1
scoreboard players operation $auto_start_timer TS_settings %= #2 TS_settings
tellraw @s {"text": "現在の値: ", "color": "green", "extra": [{"score":{"objective": "TS_settings", "name": "$auto_start_timer"}}]}
