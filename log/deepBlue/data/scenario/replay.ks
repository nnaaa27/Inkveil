;=========================================
; 回想モード　画面作成
;=========================================
*start
@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]

[bg storage="bg_recollection.png" time=100]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]

[macro name="replay_box"]
    [iscript]
        // 横
        f.x_list = [80,310,540,770,1000];
        // 縦
        f.y_list = [170,320];
        f.x=f.x_list[mp.x_num];
        f.y1=f.y_list[mp.y_num];
        f.y2=f.y_list[mp.y_num] + 110;
    [endscript]
    [replay_image_button name=%name graphic=%graphic no_graphic="../../tyrano/images/system/noimage.png" x=&f.x y=&f.y1 width=192 height=108 folder="bgimage" ]
    [ptext layer="1" text=%text x=&f.x y=&f.y2 size="15" color="0x426667" width="1280" align="left"]
[endmacro]

*replaypage
[cm]
[freeimage layer="1"]
[button graphic="config/gallery_close2.png" enterimg="config/gallery_close2.png"  target="*backtitle" x=820 y=20 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

@jump target=&tf.target_page

*page_0

[replay_box name="02_send_home" graphic="住宅街２（夜・照明ON）.jpg" text="２章 ある日の帰り道" x_num=0 y_num=0]
[replay_box name="02_about_name" graphic="住宅街２（夜・照明ON）.jpg" text="２章 名前呼び" x_num=1 y_num=0]
[replay_box name="04_arrival" graphic="night-room3.jpg" text="４章 到着" x_num=2 y_num=0]
[replay_box name="05_meteor_shower" graphic="流星群.jpg" text="５章 双子座流星群" x_num=0 y_num=1]
[replay_box name="06_underground_arrival" graphic="地下室.jpg" text="６章 地下室、合流" x_num=1 y_num=1]

; [replay_box x_num=4 y_num=0]
; [replay_box x_num=0 y_num=1]
; [replay_box x_num=1 y_num=1]
; [replay_box x_num=2 y_num=1]
; [replay_box x_num=3 y_num=1]
; [replay_box x_num=4 y_num=1]

@jump target ="*common"


*common

[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    tf.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage


