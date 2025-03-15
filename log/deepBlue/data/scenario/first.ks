;一番最初に呼び出されるファイル

[title name="ディープブルーにキラめいて"]

[stop_keyconfig]

;コメント表示
[plugin name="comment_screen" ]
[plugin name="chara_sheet_screen" ]
[plugin name="dice"]
[plugin name="depth_mod"]
[plugin name="trpgstudio"]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"
[call storage="system/chara_define.ks"]


;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;画面の初期化
[chara_hide_all wait="false" time="0"]
[stopbgm]
[cancelskip]
[autostop]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
;@jump storage="title.ks"

;テーマ配置
; [plugin name="theme"]
; [add_theme_button ]

; [layopt layer=0 visible=true]
;[layopt layer=1 visible=true]
;[layopt layer=2 visible=true]

;名前枠の設定
;[ptext name="chara_name_area" layer="message0" bold="bold" color="white" edge="0x454D51"  size=22 x=110 y=357]

;[chara_config ptext="chara_name_area" memory="true" talk_focus="brightness" pos_mode="false"]
; [chara_config ptext="chara_name_area" memory="true" talk_anim="down" pos_mode="false" ]

; [layopt layer="message0" visible=true]

[macro name="play_start"]
    [cm  ]
    [clearfix]
    [start_keyconfig]
    [freelayer layer="1"]
    [bg storage="black.jpg" method="fadeIn" time="1000" local_file="black.jpg"]
    
    ;メニューボタンの表示
    @showmenubutton
    ;メッセージウィンドウの設定
    [position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
    ;文字が表示される領域を調整
    [position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
    ;テーマ適応、メニューボタン追加
    [plugin name="theme"]
    [add_theme_button ]
[endmacro]

[macro name="play_end"]
    [cancelskip]
    [autostop]
    [p]
    @jump storage="first.ks"
    
[endmacro]


; 回想を追加
[setreplay name="02_about_name" storage="scene/02_about_name.ks" label="*start"]
[setreplay name="05_meteor_shower" storage="scene/05_meteor_shower.ks" label="*start"]
[setreplay name="06_underground_arrival" storage="scene/06_underground_arrival.ks" label="*start"]



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Rapter ここまで

@jump storage="title.ks"

[s]


