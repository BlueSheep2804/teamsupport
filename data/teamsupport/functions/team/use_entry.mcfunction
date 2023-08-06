scoreboard players add @s TS_team_entry 1
scoreboard players operation @s TS_team_entry %= #2 TS_team

execute if score @s TS_team_entry matches 1 run title @s actionbar {"text": "✔ ", "color": "green", "bold": true, "extra": [{"text": "エントリーしました", "color": "white"}]}
execute if score @s TS_team_entry matches 0 run title @s actionbar {"text": "❌ ", "color": "red", "bold": true, "extra": [{"text": "エントリーをキャンセルしました", "color": "white"}]}

scoreboard players set @s TS_right_click 0
