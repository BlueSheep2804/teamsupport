# エントリー開始
title @a title {"text": "エントリー開始", "bold": true}

# エントリー用のアイテム付与
item replace entity @a hotbar.0 with carrot_on_a_stick{TS_Item: "entry"} 1
item modify entity @a hotbar.0 teamsupport:entry/entry 

scoreboard players set can_entry TS_state 1
