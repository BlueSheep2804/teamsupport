# チーム抽選
scoreboard players operation @s TS_team = #team TS_team

scoreboard players add #team TS_team 1
scoreboard players operation #team TS_team %= #2 TS_team
