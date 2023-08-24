execute at @e[type=interaction,tag=TS_set_item] run playsound entity.experience_orb.pickup block @s ~ ~ ~ 0.8 2.0
execute at @e[type=item_display,tag=TS_set_item] run function teamsupport:equipment/give_item_test
advancement revoke @s only teamsupport:equipment/set_item_interact
