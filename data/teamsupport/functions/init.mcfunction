# テキスト
data modify storage teamsupport:data set_item_info set value '{"text":"","extra":[{"keybind":"key.attack"},{"text":"で破壊\\n"},{"keybind":"key.use"},{"text":"で与える"}]}'

# 右クリック検知スコアボード
scoreboard objectives add TS_right_click used:carrot_on_a_stick

# 状態管理スコアボード
scoreboard objectives add TS_state dummy

# 設定用スコアボード
scoreboard objectives add TS_settings dummy
execute unless score $can_select_team TS_settings matches -2147483648..2147483647 run scoreboard players set $can_select_team TS_settings 0

# その他初期化
function teamsupport:team/init
function teamsupport:timer/init
