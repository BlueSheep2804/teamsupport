# 支給アイテム設定を消去
execute at @e[type=interaction,tag=TS_set_item] run playsound block.stone.break block @s ~ ~ ~ 1.0 1.0
execute at @e[type=item_display,tag=TS_set_item] run setblock ~ ~ ~ air destroy
kill @e[tag=TS_set_item]
kill @e[tag=TS_set_item_info]

# 1tick後にドロッパー消去
schedule function teamsupport:equipment/set_item_attack_after 1t

# 進捗リセット
advancement revoke @s only teamsupport:equipment/set_item_attack
