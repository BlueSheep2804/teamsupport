execute as @a[scores={TS_team_entry=1},sort=random] run function teamsupport:team/join_random_lottery

team join blue @a[scores={TS_team=0}]
team join red @a[scores={TS_team=1}]

clear @a carrot_on_a_stick{TS_Item: "entry"}
