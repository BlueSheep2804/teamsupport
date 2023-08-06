scoreboard players add @s TS_team_entry 1
scoreboard players operation @s TS_team_entry %= #2 TS_team

execute if score @s TS_team_entry matches 1 run function teamsupport:team/entry
execute if score @s TS_team_entry matches 0 run function teamsupport:team/cancel_entry

scoreboard players set @s TS_right_click 0
