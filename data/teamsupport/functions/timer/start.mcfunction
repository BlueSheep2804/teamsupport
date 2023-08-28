# タイマー有効化
scoreboard players set #enable TS_timer 1
scoreboard players operation #tick TS_timer = #max TS_timer
execute if score #max TS_timer matches 0.. run scoreboard players set #increase TS_timer -1
execute if score #max TS_timer matches 0.. store result bossbar teamsupport:timer max run scoreboard players get #max TS_timer
execute if score #max TS_timer matches 0 run scoreboard players set #increase TS_timer 1

# ボスバー表示
bossbar set teamsupport:timer players @a
