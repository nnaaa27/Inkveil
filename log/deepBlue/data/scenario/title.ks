
[cm]

@clearstack
@bg storage ="title.png" time=100
@wait time = 200

;画面の初期化
[chara_hide_all wait="false" time="0"]
[stopbgm]
[cancelskip]
[autostop]
[clearfix name="role_button"]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

*start 

[layopt layer=1 visible=true]

[ptext layer="1" text="ディープブルーにキラめいて" x="0" y="100" size="50" color="0xc5517a" width="1280" align="center"]
[playbgm storage="パラサイトブルー（インスト）.mp3" local_file="パラサイトブルー（インスト）.mp3" time="0" volume="50" loop="true"]

[button y="500" x="80" graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks"]
[button y="590" x="80" graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="../others/plugin/theme/config.ks" ]

[s]



