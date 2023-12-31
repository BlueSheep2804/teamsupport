# 分・秒の計算
scoreboard players operation #tick TS_timer += #increase TS_timer
scoreboard players operation #s TS_timer = #tick TS_timer
scoreboard players operation #s TS_timer /= #20 TS_timer
scoreboard players operation #m TS_timer = #s TS_timer
scoreboard players operation #m TS_timer /= #60 TS_timer
scoreboard players operation #s TS_timer %= #60 TS_timer

bossbar set teamsupport:timer name {"text": "経過時間 >>> ", "extra": [{"score":{"name":"#m","objective":"TS_timer"},"color": "aqua"}, {"text": "分"}, {"score": {"name": "#s", "objective": "TS_timer"},"color": "aqua"}, {"text": "秒"}]}
execute if score #max TS_timer matches 0.. store result bossbar teamsupport:timer value run scoreboard players get #tick TS_timer
