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



*replaypage
[cm]
[freelayer layer="1"]
[button graphic="config/gallery_close2.png" enterimg="config/gallery_close2.png"  target="*backtitle" x=820 y=20 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

@jump target=&tf.target_page

*page_0
[replay_image_button name="02_about_name" graphic="繁華街の駅前（夜）.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=150 width=160 height=140 folder="bgimage" ]
[ptext layer="1" text="２章 名前呼び" x="60" y="290" size="15" color="0x426667" width="1280" align="left"]

[replay_image_button name="05_meteor_shower" graphic="夜空.png" no_graphic="../../tyrano/images/system/noimage.png" x=260 y=150 width=160 height=140 folder="bgimage" ]
[ptext layer="1" text="５章 流星群" x="260" y="290" size="15" color="0x426667" width="1280" align="left"]

[replay_image_button name="06_underground_arrival" graphic="地下室.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=460 y=150 width=160 height=140 folder="bgimage" ]
[ptext layer="1" text="６章 地下室、合流" x="460" y="290" size="15" color="0x426667" width="1280" align="left"]

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


