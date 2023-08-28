# チーム抽選
execute if score $can_select_team TS_settings matches 0 as @a[scores={TS_team_entry=1},sort=random] run function teamsupport:team/join_random_lottery
execute if score $can_select_team TS_settings matches 1 as @a at @s run scoreboard players operation @s TS_team = @s TS_team_entry
execute if score $can_select_team TS_settings matches 1 as @a at @s run scoreboard players remove @s TS_team 1

# チーム加入
team join blue @a[scores={TS_team=0}]
team join red @a[scores={TS_team=1}]
team join observer @a[scores={TS_team_entry=-1}]

title @a[team=blue] title {"text": "あなたは", "bold": true, "extra": [{"text": "青", "color": "blue"}, {"text": "チームです!"}]}
title @a[team=red] title {"text": "あなたは", "bold": true, "extra": [{"text": "赤", "color": "red"}, {"text": "チームです!"}]}
title @a[team=observer] title {"text": "観戦者として参加しました", "color": "gray"}
