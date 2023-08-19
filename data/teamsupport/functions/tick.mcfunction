execute as @a[scores={TS_right_click=1..}] at @s if data storage teamsupport:state is_entry if predicate teamsupport:hold_item/entry run function teamsupport:team/use_entry
execute as @a[scores={TS_right_click=1..}] at @s run scoreboard players set @s TS_right_click 0

execute as @e[type=silverfish,tag=TS_set_item] at @s run function teamsupport:set_item_place

execute if data storage teamsupport:state is_entry store result storage teamsupport:state players int 1 run list
execute as @a if data storage teamsupport:state is_entry run function teamsupport:team/entry_status

execute if score #enable TS_timer matches 1 run function teamsupport:timer/tick
