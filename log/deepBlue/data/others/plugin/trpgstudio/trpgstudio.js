TYRANO.kag.ftag.master_tag.chara_ptext = {

	kag: TYRANO.kag,
	
    pm : {

        name : "",
        face : "",
        other_name:"",
        
    },

    start : function(pm) {
        
        var that = this;
        this.kag.layer.hideEventLayer();

        if (pm.name == "") {
	        
            $("." + this.kag.stat.chara_ptext).html("");

            //全員の明度を下げる。誰も話していないから
            //明度設定が有効な場合
            if (this.kag.stat.chara_talk_focus != "none") {

                $("#tyrano_base").find(".tyrano_chara").css({
                    "-webkit-filter" : this.kag.stat.apply_filter_str,
                    "-ms-filter" : this.kag.stat.apply_filter_str,
                    "-moz-filter" : this.kag.stat.apply_filter_str
                });

            }

        } else {
            
            //日本語から逆変換することも可能とする
            if(this.kag.stat.jcharas[pm.name]){
                pm.name = this.kag.stat.jcharas[pm.name];
            }
            
            var cpm = this.kag.stat.charas[pm.name];
            
            if (cpm) {
                //キャラクター名出力
                if(pm.other_name!=""){
		            $("." + this.kag.stat.chara_ptext).html($.escapeHTML(pm.other_name));
				}else{
                	$("." + this.kag.stat.chara_ptext).html($.escapeHTML(cpm.jname));
				}
				
                //色指定がある場合は、その色を指定する。
                if (cpm.color != "") {
                    $("." + this.kag.stat.chara_ptext).css("color", $.convertColor(cpm.color));
                }

                //明度設定が有効な場合
                if (this.kag.stat.chara_talk_focus != "none") {

                    $("#tyrano_base").find(".tyrano_chara").css({
                        "-webkit-filter" : this.kag.stat.apply_filter_str,
                        "-ms-filter" : this.kag.stat.apply_filter_str,
                        "-moz-filter" : this.kag.stat.apply_filter_str
                    });

                    $("#tyrano_base").find("." + pm.name + ".tyrano_chara").css({
                        "-webkit-filter" : "brightness(100%) blur(0px)",
                        "-ms-filter" : "brightness(100%) blur(0px)",
                        "-moz-filter" : "brightness(100%) blur(0px)"
                    });

                }
                
                //指定したキャラクターでアニメーション設定があった場合
                if(this.kag.stat.chara_talk_anim != "none"){
                    
                    var chara_obj = $("#tyrano_base").find("." + pm.name + ".tyrano_chara");
                    if(chara_obj.get(0)){
                        
                        this.animChara(chara_obj, this.kag.stat.chara_talk_anim, pm.name);
                        
                        if (pm.face != "") {
                            //即表情変更、アニメーション中になるから        
                            this.kag.ftag.startTag("chara_mod", {name:pm.name,face:pm.face,time:"0"});
                        }
                    }
                    
                }
                

            } else {
	            
	            if(pm.other_name!=""){
		            $("." + this.kag.stat.chara_ptext).html($.escapeHTML(pm.other_name));
				}else{
                	$("." + this.kag.stat.chara_ptext).html($.escapeHTML(pm.name));
				}
				
                //存在しない場合は全員の明度を下げる。
                if (this.kag.stat.chara_talk_focus != "none") {
                    $("#tyrano_base").find(".tyrano_chara").css({
                        "-webkit-filter" : this.kag.stat.apply_filter_str,
                        "-ms-filter" : this.kag.stat.apply_filter_str,
                        "-moz-filter" : this.kag.stat.apply_filter_str
                    });
                }
                
            }
        }
        
        
        //ボイス設定が有効な場合
        if(this.kag.stat.vostart == true){
            //キャラクターのボイス設定がある場合
            
            if(this.kag.stat.map_vo["vochara"][pm.name]){
                
                var vochara = this.kag.stat.map_vo["vochara"][pm.name];
                
                var playsefile = $.replaceAll(vochara.vostorage,"{number}",vochara.number);
                
                var se_pm = {
                    loop : "false",
                    storage : playsefile,
                    stop : "true",
                    buf:vochara.buf
                };
                
                this.kag.ftag.startTag("playse", se_pm);
                
                this.kag.stat.map_vo["vochara"][pm.name]["number"] = parseInt(vochara.number)+1;
                
            }
            
        }
        
        this.kag.stat.f_chara_ptext="true";
        
        //表情の変更もあわせてできる
        if (pm.face != "") {
            if (!(this.kag.stat.charas[pm.name]["map_face"][pm.face])) {
                this.kag.error("指定されたキャラクター「" + pm.name + "」もしくはface:「" + pm.face + "」は定義されていません。もう一度確認をお願いします");
                return;
            }
            
            var storage_url = this.kag.stat.charas[pm.name]["map_face"][pm.face];
            
            //chara_mod タグで実装するように調整
            if(this.kag.stat.chara_talk_anim == "none"){
                this.kag.ftag.startTag("chara_mod", {name:pm.name,face:pm.face});
            }
            
            //$("."+pm.name).attr("src",storage_url);
        
        }else{
            this.kag.layer.showEventLayer();
            this.kag.ftag.nextOrder();
        
        }

    },
    
    //キャラクターのアニメーション設定
    animChara:function(chara_obj,type,name){
        
        //アニメーション中の場合は、重ねない
        if(typeof this.kag.tmp.map_chara_talk_top[name] != "undefined"){
            return;
        }
        
        //アニメーション
        var that = this;
        var tmp_top =  parseInt(chara_obj.get( 0 ).offsetTop);
        chara_obj.css("top",tmp_top);
        var a_obj = {};
        var b_obj = {};
        
        //アニメーション中のキャラクターを格納。
        this.kag.tmp.map_chara_talk_top[name] = true;
        
        var anim_time = this.kag.stat.chara_talk_anim_time;
        
        if(type=="up"){
            a_obj["top"] = tmp_top - this.kag.stat.chara_talk_anim_value;
            b_obj["top"] = tmp_top;
            
        }else if(type=="down"){
            a_obj["top"] = tmp_top + this.kag.stat.chara_talk_anim_value;
            b_obj["top"] = tmp_top;
            
        }
        
        
        chara_obj.animate(a_obj, anim_time, "easeOutQuad",function(){
            chara_obj.animate(b_obj, anim_time, "easeOutQuad",function(){
                delete that.kag.tmp.map_chara_talk_top[name];
            });
        });

        
    }
    
};