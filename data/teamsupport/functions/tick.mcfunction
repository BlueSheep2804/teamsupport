execute as @a[scores={TS_right_click=1..}] at @s if data storage teamsupport:state is_entry if predicate teamsupport:hold_item/entry run function teamsupport:team/use_entry
execute as @a[scores={TS_right_click=1..}] at @s run scoreboard players set @s TS_right_click 0

execute as @e[type=silverfish,tag=TS_set_item] at @s run function teamsupport:equipment/set_item_place
execute as @a at @s if predicate teamsupport:equipment/looking_set_item run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set from storage teamsupport:data set_item_info
execute as @a at @s unless predicate teamsupport:equipment/looking_set_item run data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set value ''

execute if data storage teamsupport:state is_entry store result storage teamsupport:state players int 1 run list
execute as @a if data storage teamsupport:state is_entry run function teamsupport:team/entry_status

execute if score #enable TS_timer matches 1 run function teamsupport:timer/tick
