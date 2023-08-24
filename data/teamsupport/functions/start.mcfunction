title @a title {"text": "スタート!!", "bold": true}

function teamsupport:timer/start

execute as @e[type=item_display,tag=TS_set_item] at @s run function teamsupport:equipment/give_item
execute as @e[type=armor_stand, tag=TS_set_armor] at @s run function teamsupport:equipment/give_armor
