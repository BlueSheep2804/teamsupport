give @s written_book{display:{Name:'{"text":"管理メニュー","italic":false,"color": "yellow"}'},author:"BlueSheep2804",title:"menu",pages:['{"text":" ","extra":[{"text":"★ 管理メニュー\\n\\n","color":"blue","bold":true},{"text":"◆エントリー開始","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:team/start_entry"},"hoverEvent":{"action":"show_text","contents":"エントリーを開始します。"}},{"text":"\\n\\n"},{"text":"◆チーム割り振り","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:team/join_random"},"hoverEvent":{"action":"show_text","contents":"ランダムにチームを割り振ります。\\n自動的にエントリーを終了します。"}},{"text":"\\n\\n\\n"},{"text":"◆ゲーム開始","color":"light_purple","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:start_countdown"},"hoverEvent":{"action":"show_text","contents":"ゲームを開始します。"}}]}','{"text":" ","extra":[{"text":"★ チームメニュー\\n\\n","color":"gold"},{"text":"◆チームの作成","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:team/"},"hoverEvent":{"action":"show_text","contents":"チームを作成します。"}},{"text":"\\n\\nチーム","extra":[{"text":"blue","color":"blue"},{"text":","},{"text":"red","color":"red"},{"text":"が作成されます。\\nフレンドリーファイアの無効以外は変更されていないので、"},{"text":"/team modify ","color":"gold"},{"text":"コマンドで変更してください。"}]}]}','{"text":" ","extra":[{"text":"★ タイマーメニュー\\n\\n","color":"blue"},{"text":"◆タイマー開始","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:timer/start"},"hoverEvent":{"action":"show_text","contents":"タイマーを開始します。"}},{"text":"\\n\\n"},{"text":"◆カウントアップ","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set #max TS_timer 0"},"hoverEvent":{"action":"show_text","contents":"カウントアップ方式のタイマーに変更します。"}},{"text":"\\n\\n◆カウントダウン\\n"},{"text":"1分\\n","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set #max TS_timer 1200"},"hoverEvent":{"action":"show_text","contents":"20tick * 60秒 = 1200"}},{"text":"3分\\n","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set #max TS_timer 3600"},"hoverEvent":{"action":"show_text","contents":"20tick * 60秒 * 3分 = 3600"}},{"text":"5分\\n","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set #max TS_timer 6000"},"hoverEvent":{"action":"show_text","contents":"20tick * 60秒 * 5分 = 6000"}},{"text":"カスタム","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/tellraw @s {\\"text\\":\\"[クリック]\\",\\"color\\":\\"green\\",\\"clickEvent\\":{\\"action\\":\\"suggest_command\\",\\"value\\":\\"/scoreboard players set #max TS_timer \\"}}"},"hoverEvent":{"action":"show_text","contents":"自分で制限時間を設定します。"}}]}','{"text":" ","extra":[{"text":"★ 設定\\n\\n","color":"blue"},{"text":"◆初期装備の設定","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:set_equipment"},"hoverEvent":{"action":"show_text","contents":"初期装備を設定するアイテムを付与します。\\n設定用エンティティが召還されていない場合は、ゲーム開始時に持ち物の置き換えを行いません。"}},{"text":"\\n\\n"},{"text":"◆チームを各プレイヤーが選べるようにする","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:settings/toggle_can_select_team"},"hoverEvent":{"action":"show_text","contents":"0: エントリーのみ行えます。\\n1: プレイヤーがチームを選べます。"}},{"text":"\\n\\n"},{"text":"◆タイマーの自動開始","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function teamsupport:settings/toggle_auto_start_timer"},"hoverEvent":{"action":"show_text","contents":"0: タイマーを自動で開始しない\\n1: タイマーが自動で開始される"}}]}']}
