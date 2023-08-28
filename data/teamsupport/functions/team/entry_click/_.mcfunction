# 今の状態のアイテムを復元
function teamsupport:team/entry_click/restore

# 持っているアイテムによって分岐
execute if predicate teamsupport:hold/entry/observer run function teamsupport:team/entry_click/observer
execute if predicate teamsupport:hold/entry/entry run function teamsupport:team/entry_click/entry
execute if predicate teamsupport:hold/entry/cancel run function teamsupport:team/entry_click/cancel_entry

# 右クリックリセット
scoreboard players set @s TS_right_click 0
