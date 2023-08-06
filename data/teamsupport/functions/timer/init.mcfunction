scoreboard objectives add TS_timer dummy
scoreboard players set #tick TS_timer 0
scoreboard players set #20 TS_timer 20
scoreboard players set #60 TS_timer 60

bossbar add teamsupport:timer {"text": "経過時間"}
bossbar set teamsupport:timer value 100
bossbar set teamsupport:timer color blue
