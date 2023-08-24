title @a title {"text": "スタート!!", "bold": true}
execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0

function teamsupport:timer/start

execute as @e[type=item_display,tag=TS_set_item] at @s run function teamsupport:equipment/give_item
execute as @e[type=armor_stand, tag=TS_set_armor] at @s run function teamsupport:equipment/give_armor
