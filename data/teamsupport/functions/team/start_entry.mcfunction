# エントリー開始
title @a title {"text": "エントリー開始", "bold": true}

# エントリー用のアイテム付与
item replace entity @a hotbar.0 with carrot_on_a_stick
item modify entity @a hotbar.0 teamsupport:entry/observer
item replace entity @a hotbar.1 with lime_dye
item modify entity @a hotbar.1 teamsupport:entry/cancel
item replace entity @a hotbar.2 with carrot_on_a_stick
item modify entity @a hotbar.2 teamsupport:entry/entry

scoreboard players set @a TS_team_entry 0

scoreboard players set can_entry TS_state 1
