title @a title {"text": "エントリー開始"}
item replace entity @a hotbar.0 with carrot_on_a_stick{TS_Item: "entry"} 1
item modify entity @a hotbar.0 teamsupport:entry/entry 
data modify storage teamsupport:state is_entry set value true
