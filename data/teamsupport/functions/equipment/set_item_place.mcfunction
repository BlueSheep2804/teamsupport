setblock ~ ~ ~ dropper[facing=down]
data modify block ~ ~ ~ CustomName set value '{"text":"初期ホットバーアイテム"}'

execute align xyz positioned ~0.5 ~0.875 ~0.5 summon item_display run tag @s add TS_set_item
data modify entity @e[type=item_display,tag=TS_set_item,limit=1] item.Count set value 1
data modify entity @e[type=item_display,tag=TS_set_item,limit=1] item.id set value "minecraft:lodestone"
data modify entity @e[type=item_display,tag=TS_set_item,limit=1] item_display set value "fixed"
data modify entity @e[type=item_display,tag=TS_set_item,limit=1] brightness set value {sky:15,block:15}

execute align xyz positioned ~0.5 ~1 ~0.5 summon interaction run tag @s add TS_set_item
data modify entity @e[type=interaction,tag=TS_set_item,limit=1] width set value 0.5
data modify entity @e[type=interaction,tag=TS_set_item,limit=1] height set value 0.125

execute align xyz positioned ~0.5 ~1.5 ~0.5 summon text_display run tag @s add TS_set_item_info
data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] text set from storage teamsupport:data set_item_info
data modify entity @e[type=text_display,tag=TS_set_item_info,limit=1] billboard set value center

tp @s ~ -80 ~
kill @s
