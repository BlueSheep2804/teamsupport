# 右クリック検知
execute if predicate teamsupport:can_entry as @a[scores={TS_right_click=1..}] at @s run function teamsupport:team/entry_click/_
execute as @a[scores={TS_right_click=1..}] at @s run scoreboard players set @s TS_right_click 0

# 支給アイテム設定用アイテム検知
execute unless entity @e[type=item_display,tag=TS_set_item] as @e[type=glow_item_frame,tag=TS_set_item] at @s run function teamsupport:equipment/set_item_place
execute if entity @e[type=item_display,tag=TS_set_item] as @e[type=glow_item_frame,tag=TS_set_item] at @s run function teamsupport:equipment/set_item_place_exists

# 支給アイテム設定の使い方text_displayの表示
execute as @a[predicate=teamsupport:equipment/looking_set_item] at @s run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set from storage teamsupport:data set_item_info
execute as @a[predicate=!teamsupport:equipment/looking_set_item] at @s run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set value '{"text":""}'

# エントリー受付中のステータス処理
execute store result score #total TS_team_entry if entity @a[scores={TS_team_entry=1..2}]
execute store result score #observer TS_team_entry if entity @a[scores={TS_team_entry=-1}]
execute if predicate teamsupport:can_entry store result score #all TS_team_entry run list
execute if predicate teamsupport:can_entry as @a run function teamsupport:team/entry_status

# タイマー
execute if predicate teamsupport:timer/is_enabled run function teamsupport:timer/tick
