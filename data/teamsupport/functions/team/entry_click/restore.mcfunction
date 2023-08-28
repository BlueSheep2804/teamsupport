execute if score @s TS_team_entry matches -1 run item replace entity @s hotbar.0 with carrot_on_a_stick
execute if score @s TS_team_entry matches -1 run item modify entity @s hotbar.0 teamsupport:entry/observer
execute if score @s TS_team_entry matches 0 run item replace entity @s hotbar.1 with carrot_on_a_stick
execute if score @s TS_team_entry matches 0 run item modify entity @s hotbar.1 teamsupport:entry/cancel
execute if score @s TS_team_entry matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick
execute if score @s TS_team_entry matches 1 run item modify entity @s hotbar.2 teamsupport:entry/entry
