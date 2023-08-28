# エントリー開始
title @a title {"text": "エントリー開始", "bold": true}

# エントリー用のアイテム付与
item replace entity @a hotbar.0 with carrot_on_a_stick
item modify entity @a hotbar.0 teamsupport:entry/observer
item replace entity @a hotbar.1 with lime_dye
item modify entity @a hotbar.1 teamsupport:entry/cancel
execute if score $can_select_team TS_settings matches 0 run item replace entity @a hotbar.2 with carrot_on_a_stick
execute if score $can_select_team TS_settings matches 0 run item modify entity @a hotbar.2 teamsupport:entry/entry
execute if score $can_select_team TS_settings matches 1 as @a run function teamsupport:team/give_entry_item_team

scoreboard players set @a TS_team_entry 0

scoreboard players set can_entry TS_state 1
