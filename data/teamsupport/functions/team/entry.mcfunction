scoreboard players add @s team_entry 1
scoreboard players operation @s team_entry %= #2 team

execute if score @s team_entry matches 1 run title @s actionbar {"text": "✔ ", "color": "green", "bold": true, "extra": [{"text": "エントリーしました", "color": "white"}]}
execute if score @s team_entry matches 0 run title @s actionbar {"text": "❌ ", "color": "red", "bold": true, "extra": [{"text": "エントリーをキャンセルしました", "color": "white"}]}

scoreboard players set @s right_click 0
