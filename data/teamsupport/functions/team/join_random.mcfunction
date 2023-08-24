# チーム抽選
execute as @a[scores={TS_team_entry=1},sort=random] run function teamsupport:team/join_random_lottery

# チーム加入
team join blue @a[scores={TS_team=0}]
team join red @a[scores={TS_team=1}]

title @a[team=blue] title {"text": "あなたは", "bold": true, "extra": [{"text": "青", "color": "blue"}, {"text": "チームです!"}]}
title @a[team=red] title {"text": "あなたは", "bold": true, "extra": [{"text": "赤", "color": "red"}, {"text": "チームです!"}]}

# エントリー用アイテム削除
clear @a carrot_on_a_stick{TS_Item: "entry"}

data remove storage teamsupport:state is_entry
