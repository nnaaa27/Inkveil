
*start
[play_start]

#佐伯和己
亜璃杏……！[p]

[bg storage="地下室.jpg" method="fadeIn" time="1000" local_file="地下室.jpg"]
[playbgm storage="混濁.mp3" local_file="混濁.mp3" time="1000" volume="50" loop="true"]

;debug
; [add_kazumi]
; [add_aria]
; [jump target=*debug]

[add_kazumi img="真剣.png" left=380]

#
無機質な石張りの空間の中、設置された手術台の上、[r]
瀬奈亜璃杏は、儀間貞人に片腕で首を絞められたまま強引に押さえつけられていた。[p]

そして、儀間の空いた右手には鋭利な鉄の棒が握られ、[r]
今まさに彼女に振り下ろそうと構えている。[p]

けれど、佐伯和己はその場から動くことができなかった。[p]
何故なら――[p]

[chara_mod name="佐伯和己" storage="chara/佐伯和己/驚き.png" local_file="驚き.png" cross="true" time="600" reflect="false"]
#佐伯和己
……！[p]

#
――瀬奈亜璃杏の抵抗する手にも同じ形の凶器が握られ、[r]
目の前で儀間の首を貫いてみせたのだから。[p]

一瞬、儀間は自身に何が起こったのか理解できない呆けた表情を浮かべていた。[p]

しかし、数秒後、[r]
口から大量の血を吐き出し、手術台から落下して床に転がった。[p]

そして、瀬奈亜璃杏から逃れるように床を這い、佐伯和己の瞳を覗き込む。[p]

儀間が手に握った針のようなそれと、首に突きされた凶器は、[r]
電線のようなもので繋がれていた。[p]

まるで、首輪を外そうとする獣のように藻掻き、[r]
力なく視線を床に沈ませ何度か痙攣し――[p]

――もう動くことはなくなった。[p]

瀬奈亜璃杏は殺人を犯し、佐伯和己はその現場を目撃した。[r]
1d4/1d6+1 の正気度ロール[p]

[coc_dice chara_name="佐伯和己" aim="SANチェック" num_success=58 dice_result=9 result="成功" sub_str="SAN：58⇒55（3減少）"]
; #佐伯和己
; SAN：58⇒55（3減少）[p]

[coc_dice chara_name="瀬奈亜璃杏" aim="SANチェック" num_success=60 dice_result=58 result="成功" sub_str="SAN：60⇒59（1減少）"]
; #瀬奈亜璃杏
; SAN：60⇒59（1減少）[p]

; #佐伯和己
; [dice array_dice="100" adjusted_val="0" aim="SAN" secret="" num_success="50" flag_success="below" chara_name="佐伯和己" user_id="44069" array_result="22" result_str="SAN：【1d100】を振りました。結果は「22」成功です。(成功値50以下)(各ダイス目：22)" val="SAN：【1d100】を振りました。結果は「22」成功です。(成功値50以下)(各ダイス目：22)" addstory="1" name="佐伯和己"]
; #瀬奈亜璃杏
; [dice array_dice="100" adjusted_val="0" aim="SAN" secret="" num_success="50" flag_success="below" chara_name="瀬奈亜璃杏" user_id="44069" array_result="84" result_str="SAN：【1d100】を振りました。結果は「84」失敗です。(成功値50以下)(各ダイス目：84)" val="SAN：【1d100】を振りました。結果は「84」失敗です。(成功値50以下)(各ダイス目：84)" addstory="1" name="瀬奈亜璃杏"]

[chara_mod name="佐伯和己" storage="chara/佐伯和己/悲.png" local_file="悲.png" cross="true" time="600" reflect="false"]
#佐伯和己
……。[p]

[move_kazumi]

#佐伯和己
…亜璃杏。[r]
怪我は、ないか。[p]

[add_aria img="s_t絶望1.png"]

#瀬奈亜璃杏
…………あ、[p]
#瀬奈亜璃杏
わ、私…………。[r]
ご、ごめ、なさ、ごめんなさい……！[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/悲.png" local_file="悲.png" cross="true" time="600" reflect="false"]
#佐伯和己
……大丈夫だ、大丈夫。[p]
#瀬奈亜璃杏
…で、でも、[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/思案.png" local_file="思案.png" cross="true" time="600" reflect="false"]
#佐伯和己
なんとか、するから。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t泣き1.png" local_file="s_t泣き1.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
だけど、私、[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/悲.png" local_file="悲.png" cross="true" time="600" reflect="false"]
#佐伯和己
…亜璃杏、[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t涙目3.png" local_file="s_t涙目3.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
だって、私っ…、人を、殺したんです……。[r]
もう……[p]
#佐伯和己
……。[p]

…なあ、亜璃杏。[p]

まだ、お前は…世界一のアイドルになりたいか？[p]

#瀬奈亜璃杏
だけど……なれないです。[r]
私、人を、[p]
#佐伯和己
そのことは考えなくていい。一旦忘れろ。[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/真剣.png" local_file="真剣.png" cross="true" time="600" reflect="false"]
#佐伯和己
…お前の意思を聞いてる。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t涙目4.png" local_file="s_t涙目4.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
……。[r]
私の……？[p]
#佐伯和己
お前が、罪悪感に耐えられないというのなら、ここで終わってもいい。[p]
#佐伯和己
だが、もしもまだ。[r]
世界一のアイドルを目指したいと思うなら、[p]
#佐伯和己
今起きたことは、忘れろ。[r]
俺が何とかする。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t涙目3.png" local_file="s_t涙目3.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
……。[p]
#瀬奈亜璃杏
……どうして。[p]
#瀬奈亜璃杏
和己さんは……、[r]
どうして私に、そこまでしてくれるんですか…？[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/思案.png" local_file="思案.png" cross="true" time="600" reflect="false"]
#佐伯和己
……。[p]
#佐伯和己
どうして、なんだろうな…。[r]
俺は、ただ……[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/閉じ.png" local_file="閉じ.png" cross="true" time="600" reflect="false"]
#佐伯和己
お前がまだ、夢を失ってないなら、[r]
その夢を叶えてやりたいだけだよ。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t泣き1.png" local_file="s_t泣き1.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
……。[p]
でも、そんなの、[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t号泣2.png" local_file="s_t号泣2.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
それは、私の夢で、貴方の夢じゃない……！[p]
私は、人を殺したんです…！[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/思案.png" local_file="思案.png" cross="true" time="600" reflect="false"]
#佐伯和己
…ああ、そうだな。[p]
#佐伯和己
けど、こうなったのは、[r]
お前をちゃんと守ってやれなかった俺の責任でもある。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t号泣2.png" local_file="s_t号泣2.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
違います…！[r]
和己さんは何も悪くない……！[p]
#瀬奈亜璃杏
ずっと、ずっと…！[r]
きららちゃんのことだって、城木さんのことだって……！[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/悲.png" local_file="悲.png" cross="true" time="600" reflect="false"]
#佐伯和己
……。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t泣き2.png" local_file="s_t泣き2.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
それなのに、私のことまで……！[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/閉じ.png" local_file="閉じ.png" cross="true" time="600" reflect="false"]
#佐伯和己
……。[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/普通.png" local_file="普通.png" cross="true" time="600" reflect="false"]
#佐伯和己
…亜璃杏。[r]
俺の夢は、なんだと思う。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t号泣1.png" local_file="s_t号泣1.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
……。[r]
和己さんの、夢？[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/笑み.png" local_file="笑み.png" cross="true" time="600" reflect="false"]
#佐伯和己
…俺の夢は、お前の夢を叶えることだよ。亜璃杏。[p]
#佐伯和己
お前は、世界一のアイドルを目指すことは自分の夢で、[r]
俺の夢じゃないって言ったけど、違う。俺も一緒だ。[p]
#佐伯和己
お前がもし、まだ夢を諦めてないなら。[p]
#佐伯和己
手伝わせてくれないか。[r]
お前の夢も、俺の夢も、叶えさせてほしい。[p]
#瀬奈亜璃杏
……。[p]
#瀬奈亜璃杏
…私、まだ世界一のアイドルに、なりたいです。[r]
でも、[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t泣き1.png" local_file="s_t泣き1.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
貴方に、これ以上辛い思いをしてほしくなかった。[r]
こんなものまで、背負わせたくなかった…！[p]
#佐伯和己
大丈夫だ、俺のことは心配しなくていい。[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/悲.png" local_file="悲.png" cross="true" time="600" reflect="false"]
#佐伯和己
…本当に、まだ、アイドルを続けられるか。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t号泣1.png" local_file="s_t号泣1.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
……はい。私、まだ諦められない。[r]
それに…[p]
#瀬奈亜璃杏
それが、貴方の夢なら。[p]
#佐伯和己
…分かった。[p]
[chara_mod name="佐伯和己" storage="chara/佐伯和己/真剣.png" local_file="真剣.png" cross="true" time="600" reflect="false"]
#佐伯和己
明日のライブ、絶対に成功させよう。[p]
[chara_mod name="瀬奈亜璃杏" storage="chara/瀬奈亜璃杏/s_t号泣5.png" local_file="s_t号泣5_.png" cross="true" time="600" reflect="false"]
#瀬奈亜璃杏
はい。[p]

[play_end]