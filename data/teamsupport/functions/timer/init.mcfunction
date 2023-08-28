# タイマースコアボードの初期化
scoreboard objectives add TS_timer dummy
scoreboard players set #tick TS_timer 0
scoreboard players set #20 TS_timer 20
scoreboard players set #60 TS_timer 60
execute unless score #max TS_timer matches -2147483648..2147483647 run scoreboard players set #max TS_timer 6000

# タイマー表示用のボスバー追加
bossbar add teamsupport:timer {"text": "経過時間"}
bossbar set teamsupport:timer value 100
bossbar set teamsupport:timer color blue
bossbar set teamsupport:timer style notched_10
