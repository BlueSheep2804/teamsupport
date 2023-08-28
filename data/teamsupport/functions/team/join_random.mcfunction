# チーム抽選
execute as @a[scores={TS_team_entry=1},sort=random] run function teamsupport:team/join_random_lottery

# チーム加入
team join blue @a[scores={TS_team=0}]
team join red @a[scores={TS_team=1}]
team join observer @a[scores={TS_team_entry=-1}]

title @a[team=blue] title {"text": "あなたは", "bold": true, "extra": [{"text": "青", "color": "blue"}, {"text": "チームです!"}]}
title @a[team=red] title {"text": "あなたは", "bold": true, "extra": [{"text": "赤", "color": "red"}, {"text": "チームです!"}]}
title @a[team=observer] title {"text": "観戦者として参加しました", "color": "gray"}

# エントリー用アイテム削除
clear @a carrot_on_a_stick{TS_Item: "entry_observer"}
clear @a carrot_on_a_stick{TS_Item: "entry_cancel"}
clear @a carrot_on_a_stick{TS_Item: "entry"}
clear @a lime_dye{TS_Item: "entry_observer"}
clear @a lime_dye{TS_Item: "entry_cancel"}
clear @a lime_dye{TS_Item: "entry"}

scoreboard players set can_entry TS_state 0
