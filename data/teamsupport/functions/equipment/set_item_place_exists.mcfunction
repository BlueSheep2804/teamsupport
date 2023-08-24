# エラー
tellraw @a[sort=nearest,limit=1] {"text": "エラー: 召還済みです!", "color": "red"}

# 消去
tp @s ~ ~-80 ~
kill @s
