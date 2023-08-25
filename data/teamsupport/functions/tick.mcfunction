# 右クリック検知
execute if data storage teamsupport:state is_entry as @a[scores={TS_right_click=1..},predicate=teamsupport:hold_item/entry] at @s run function teamsupport:team/use_entry
execute as @a[scores={TS_right_click=1..}] at @s run scoreboard players set @s TS_right_click 0

# 支給アイテム設定用アイテム検知
execute unless entity @e[type=item_display,tag=TS_set_item] as @e[type=glow_item_frame,tag=TS_set_item] at @s run function teamsupport:equipment/set_item_place
execute if entity @e[type=item_display,tag=TS_set_item] as @e[type=glow_item_frame,tag=TS_set_item] at @s run function teamsupport:equipment/set_item_place_exists

# 支給アイテム設定の使い方text_displayの表示
execute as @a[predicate=teamsupport:equipment/looking_set_item] at @s run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set from storage teamsupport:data set_item_info
execute as @a[predicate=!teamsupport:equipment/looking_set_item] at @s run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set value '{"text":""}'

# エントリー受付中のステータス処理
execute if data storage teamsupport:state is_entry store result storage teamsupport:state players int 1 run list
execute if data storage teamsupport:state is_entry as @a run function teamsupport:team/entry_status

# タイマー
execute if predicate teamsupport:timer/is_enabled run function teamsupport:timer/tick
