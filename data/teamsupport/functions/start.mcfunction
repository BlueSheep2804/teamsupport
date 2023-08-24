# スタート演出
title @a title {"text": "スタート!!", "bold": true}
execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0

# タイマー呼び出し
function teamsupport:timer/start

# 支給品の付与
execute as @e[type=item_display,tag=TS_set_item] at @s run function teamsupport:equipment/give_item
execute as @e[type=armor_stand, tag=TS_set_armor] at @s run function teamsupport:equipment/give_armor
