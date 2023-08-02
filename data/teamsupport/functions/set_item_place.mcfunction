setblock ~ ~ ~ dropper[facing=down]

execute summon interaction run tag @s add TS_set_item
data modify entity @e[type=interaction,tag=TS_set_item,limit=1] width set value 0

tp @s ~ -80 ~
kill @e[type=silverfish,tag=TS_set_item]