title @a title {"text": "エントリー終了"}

# エントリー用アイテム削除
clear @a carrot_on_a_stick{TS_Item: "entry_observer"}
clear @a carrot_on_a_stick{TS_Item: "entry_cancel"}
clear @a carrot_on_a_stick{TS_Item: "entry"}
clear @a carrot_on_a_stick{TS_Item: "entry_blue"}
clear @a carrot_on_a_stick{TS_Item: "entry_red"}
clear @a lime_dye{TS_Item: "entry_observer"}
clear @a lime_dye{TS_Item: "entry_cancel"}
clear @a lime_dye{TS_Item: "entry"}
clear @a lime_dye{TS_Item: "entry_blue"}
clear @a lime_dye{TS_Item: "entry_red"}

scoreboard players set can_entry TS_state 0
