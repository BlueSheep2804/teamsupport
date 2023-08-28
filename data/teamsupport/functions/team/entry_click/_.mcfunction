# 今の状態のアイテムを復元
function teamsupport:team/entry_click/restore

# 持っているアイテムによって分岐
execute if predicate teamsupport:hold/entry/observer run function teamsupport:team/entry_click/observer
execute if predicate teamsupport:hold/entry/cancel run function teamsupport:team/entry_click/cancel_entry
execute if predicate teamsupport:hold/entry/entry run function teamsupport:team/entry_click/entry
execute if predicate teamsupport:hold/entry/entry_red run function teamsupport:team/entry_click/entry_red
execute if predicate teamsupport:hold/entry/entry_blue run function teamsupport:team/entry_click/entry_blue

# 右クリックリセット
scoreboard players set @s TS_right_click 0
