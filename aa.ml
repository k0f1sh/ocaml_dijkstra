type ekimei_t = { 
  kanji   : string; (* 駅名 *) 
  kana    : string; (* 読み *) 
  romaji  : string; (* ローマ字 *) 
  shozoku : string; (* 所属線名 *) 
} 
 
type ekikan_t = { 
  kiten  : string; (* 起点 *) 
  shuten : string; (* 終点 *) 
  keiyu  : string; (* 経由線名 *) 
  kyori  : float;  (* 距離 *) 
  jikan  : int;    (* 時間 *) 
} 
 
let global_ekimei_list = [ 
{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
{kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
{kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}; 
{kanji="乃木坂"; kana="のぎざか"; romaji="nogizaka"; shozoku="千代田線"}; 
{kanji="赤坂"; kana="あかさか"; romaji="akasaka"; shozoku="千代田線"}; 
{kanji="国会議事堂前"; kana="こっかいぎじどうまえ"; romaji="kokkaigijidoumae"; shozoku="千代田線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="千代田線"}; 
{kanji="日比谷"; kana="ひびや"; romaji="hibiya"; shozoku="千代田線"}; 
{kanji="二重橋前"; kana="にじゅうばしまえ"; romaji="nijuubasimae"; shozoku="千代田線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="千代田線"}; 
{kanji="新御茶ノ水"; kana="しんおちゃのみず"; romaji="shin-ochanomizu"; shozoku="千代田線"}; 
{kanji="湯島"; kana="ゆしま"; romaji="yushima"; shozoku="千代田線"}; 
{kanji="根津"; kana="ねづ"; romaji="nedu"; shozoku="千代田線"}; 
{kanji="千駄木"; kana="せんだぎ"; romaji="sendagi"; shozoku="千代田線"}; 
{kanji="西日暮里"; kana="にしにっぽり"; romaji="nishinippori"; shozoku="千代田線"}; 
{kanji="町屋"; kana="まちや"; romaji="machiya"; shozoku="千代田線"}; 
{kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenjyu"; shozoku="千代田線"}; 
{kanji="綾瀬"; kana="あやせ"; romaji="ayase"; shozoku="千代田線"}; 
{kanji="北綾瀬"; kana="きたあやせ"; romaji="kitaayase"; shozoku="千代田線"}; 
{kanji="浅草"; kana="あさくさ"; romaji="asakusa"; shozoku="銀座線"}; 
{kanji="田原町"; kana="たわらまち"; romaji="tawaramachi"; shozoku="銀座線"}; 
{kanji="稲荷町"; kana="いなりちょう"; romaji="inaricho"; shozoku="銀座線"}; 
{kanji="上野"; kana="うえの"; romaji="ueno"; shozoku="銀座線"}; 
{kanji="上野広小路"; kana="うえのひろこうじ"; romaji="uenohirokoji"; shozoku="銀座線"}; 
{kanji="末広町"; kana="すえひろちょう"; romaji="suehirocho"; shozoku="銀座線"}; 
{kanji="神田"; kana="かんだ"; romaji="kanda"; shozoku="銀座線"}; 
{kanji="三越前"; kana="みつこしまえ"; romaji="mitsukoshimae"; shozoku="銀座線"}; 
{kanji="日本橋"; kana="にほんばし"; romaji="nihonbashi"; shozoku="銀座線"}; 
{kanji="京橋"; kana="きょうばし"; romaji="kyobashi"; shozoku="銀座線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="銀座線"}; 
{kanji="新橋"; kana="しんばし"; romaji="shinbashi"; shozoku="銀座線"}; 
{kanji="虎ノ門"; kana="とらのもん"; romaji="toranomon"; shozoku="銀座線"}; 
{kanji="溜池山王"; kana="ためいけさんのう"; romaji="tameikesannou"; shozoku="銀座線"}; 
{kanji="赤坂見附"; kana="あかさかみつけ"; romaji="akasakamitsuke"; shozoku="銀座線"}; 
{kanji="青山一丁目"; kana="あおやまいっちょうめ"; romaji="aoyamaicchome"; shozoku="銀座線"}; 
{kanji="外苑前"; kana="がいえんまえ"; romaji="gaienmae"; shozoku="銀座線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesando"; shozoku="銀座線"}; 
{kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="銀座線"}; 
{kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="半蔵門線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="半蔵門線"}; 
{kanji="青山一丁目"; kana="あおやまいっちょうめ"; romaji="aoyama-itchome"; shozoku="半蔵門線"}; 
{kanji="永田町"; kana="ながたちょう"; romaji="nagatacho"; shozoku="半蔵門線"}; 
{kanji="半蔵門"; kana="はんぞうもん"; romaji="hanzomon"; shozoku="半蔵門線"}; 
{kanji="九段下"; kana="くだんした"; romaji="kudanshita"; shozoku="半蔵門線"}; 
{kanji="神保町"; kana="じんぼうちょう"; romaji="jinbocho"; shozoku="半蔵門線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="半蔵門線"}; 
{kanji="三越前"; kana="みつこしまえ"; romaji="mitsukoshimae"; shozoku="半蔵門線"}; 
{kanji="水天宮前"; kana="すいてんぐうまえ"; romaji="suitengumae"; shozoku="半蔵門線"}; 
{kanji="清澄白河"; kana="きよすみしらかわ"; romaji="kiyosumi-shirakawa"; shozoku="半蔵門線"}; 
{kanji="住吉"; kana="すみよし"; romaji="sumiyoshi"; shozoku="半蔵門線"}; 
{kanji="錦糸町"; kana="きんしちょう"; romaji="kinshicho"; shozoku="半蔵門線"}; 
{kanji="押上"; kana="おしあげ"; romaji="oshiage"; shozoku="半蔵門線"}; 
{kanji="中目黒"; kana="なかめぐろ"; romaji="nakameguro"; shozoku="日比谷線"}; 
{kanji="恵比寿"; kana="えびす"; romaji="ebisu"; shozoku="日比谷線"}; 
{kanji="広尾"; kana="ひろお"; romaji="hiro"; shozoku="日比谷線"}; 
{kanji="六本木"; kana="ろっぽんぎ"; romaji="roppongi"; shozoku="日比谷線"}; 
{kanji="神谷町"; kana="かみやちょう"; romaji="kamiyacho"; shozoku="日比谷線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="日比谷線"}; 
{kanji="日比谷"; kana="ひびや"; romaji="hibiya"; shozoku="日比谷線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="日比谷線"}; 
{kanji="東銀座"; kana="ひがしぎんざ"; romaji="higashiginza"; shozoku="日比谷線"}; 
{kanji="築地"; kana="つきじ"; romaji="tsukiji"; shozoku="日比谷線"}; 
{kanji="八丁堀"; kana="はっちょうぼり"; romaji="hacchobori"; shozoku="日比谷線"}; 
{kanji="茅場町"; kana="かやばちょう"; romaji="kayabacho"; shozoku="日比谷線"}; 
{kanji="人形町"; kana="にんぎょうちょう"; romaji="ningyomachi"; shozoku="日比谷線"}; 
{kanji="小伝馬町"; kana="こでんまちょう"; romaji="kodemmacho"; shozoku="日比谷線"}; 
{kanji="秋葉原"; kana="あきはばら"; romaji="akihabara"; shozoku="日比谷線"}; 
{kanji="仲御徒町"; kana="なかおかちまち"; romaji="nakaokachimachi"; shozoku="日比谷線"}; 
{kanji="上野"; kana="うえの"; romaji="ueno"; shozoku="日比谷線"}; 
{kanji="入谷"; kana="いりや"; romaji="iriya"; shozoku="日比谷線"}; 
{kanji="三ノ輪"; kana="みのわ"; romaji="minowa"; shozoku="日比谷線"}; 
{kanji="南千住"; kana="みなみせんじゅ"; romaji="minamisenju"; shozoku="日比谷線"}; 
{kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenju"; shozoku="日比谷線"}; 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="淡路町"; kana="あわじちょう"; romaji="awajicho"; shozoku="丸ノ内線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="丸ノ内線"}; 
{kanji="東京"; kana="とうきょう"; romaji="tokyo"; shozoku="丸ノ内線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="丸ノ内線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="丸ノ内線"}; 
{kanji="国会議事堂前"; kana="こっかいぎじどうまえ"; romaji="kokkaigijidomae"; shozoku="丸ノ内線"}; 
{kanji="赤坂見附"; kana="あかさかみつけ"; romaji="akasakamitsuke"; shozoku="丸ノ内線"}; 
{kanji="四ツ谷"; kana="よつや"; romaji="yotsuya"; shozoku="丸ノ内線"}; 
{kanji="四谷三丁目"; kana="よつやさんちょうめ"; romaji="yotsuyasanchome"; shozoku="丸ノ内線"}; 
{kanji="新宿御苑前"; kana="しんじゅくぎょえんまえ"; romaji="shinjuku-gyoemmae"; shozoku="丸ノ内線"}; 
{kanji="新宿三丁目"; kana="しんじゅくさんちょうめ"; romaji="shinjuku-sanchome"; shozoku="丸ノ内線"}; 
{kanji="新宿"; kana="しんじゅく"; romaji="shinjuku"; shozoku="丸ノ内線"}; 
{kanji="西新宿"; kana="にししんじゅく"; romaji="nishi-shinjuku"; shozoku="丸ノ内線"}; 
{kanji="中野坂上"; kana="なかのさかうえ"; romaji="nakano-sakaue"; shozoku="丸ノ内線"}; 
{kanji="新中野"; kana="しんなかの"; romaji="shin-nakano"; shozoku="丸ノ内線"}; 
{kanji="東高円寺"; kana="ひがしこうえんじ"; romaji="higashi-koenji"; shozoku="丸ノ内線"}; 
{kanji="新高円寺"; kana="しんこうえんじ"; romaji="shin-koenji"; shozoku="丸ノ内線"}; 
{kanji="南阿佐ヶ谷"; kana="みなみあさがや"; romaji="minami-asagaya"; shozoku="丸ノ内線"}; 
{kanji="荻窪"; kana="おぎくぼ"; romaji="ogikubo"; shozoku="丸ノ内線"}; 
{kanji="中野新橋"; kana="なかのしんばし"; romaji="nakano-shimbashi"; shozoku="丸ノ内線"}; 
{kanji="中野富士見町"; kana="なかのふじみちょう"; romaji="nakano-fujimicho"; shozoku="丸ノ内線"}; 
{kanji="方南町"; kana="ほうなんちょう"; romaji="honancho"; shozoku="丸ノ内線"}; 
{kanji="四ツ谷"; kana="よつや"; romaji="yotsuya"; shozoku="南北線"}; 
{kanji="永田町"; kana="ながたちょう"; romaji="nagatacho"; shozoku="南北線"}; 
{kanji="溜池山王"; kana="ためいけさんのう"; romaji="tameikesanno"; shozoku="南北線"}; 
{kanji="六本木一丁目"; kana="ろっぽんぎいっちょうめ"; romaji="roppongiitchome"; shozoku="南北線"}; 
{kanji="麻布十番"; kana="あざぶじゅうばん"; romaji="azabujuban"; shozoku="南北線"}; 
{kanji="白金高輪"; kana="しろかねたかなわ"; romaji="shirokanetakanawa"; shozoku="南北線"}; 
{kanji="白金台"; kana="しろかねだい"; romaji="shirokanedai"; shozoku="南北線"}; 
{kanji="目黒"; kana="めぐろ"; romaji="meguro"; shozoku="南北線"}; 
{kanji="市ヶ谷"; kana="いちがや"; romaji="ichigaya"; shozoku="南北線"}; 
{kanji="飯田橋"; kana="いいだばし"; romaji="idabashi"; shozoku="南北線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="南北線"}; 
{kanji="東大前"; kana="とうだいまえ"; romaji="todaimae"; shozoku="南北線"}; 
{kanji="本駒込"; kana="ほんこまごめ"; romaji="honkomagome"; shozoku="南北線"}; 
{kanji="駒込"; kana="こまごめ"; romaji="komagome"; shozoku="南北線"}; 
{kanji="西ヶ原"; kana="にしがはら"; romaji="nishigahara"; shozoku="南北線"}; 
{kanji="王子"; kana="おうじ"; romaji="oji"; shozoku="南北線"}; 
{kanji="王子神谷"; kana="おうじかみや"; romaji="ojikamiya"; shozoku="南北線"}; 
{kanji="志茂"; kana="しも"; romaji="shimo"; shozoku="南北線"}; 
{kanji="赤羽岩淵"; kana="あかばねいわぶち"; romaji="akabaneiwabuchi"; shozoku="南北線"}; 
{kanji="西船橋"; kana="にしふなばし"; romaji="nishi-funabashi"; shozoku="東西線"}; 
{kanji="原木中山"; kana="ばらきなかやま"; romaji="baraki-nakayama"; shozoku="東西線"}; 
{kanji="妙典"; kana="みょうでん"; romaji="myoden"; shozoku="東西線"}; 
{kanji="行徳"; kana="ぎょうとく"; romaji="gyotoku"; shozoku="東西線"}; 
{kanji="南行徳"; kana="みなみぎょうとく"; romaji="minami-gyotoku"; shozoku="東西線"}; 
{kanji="浦安"; kana="うらやす"; romaji="urayasu"; shozoku="東西線"}; 
{kanji="葛西"; kana="かさい"; romaji="kasai"; shozoku="東西線"}; 
{kanji="西葛西"; kana="にしかさい"; romaji="nishi-kasai"; shozoku="東西線"}; 
{kanji="南砂町"; kana="みなみすなまち"; romaji="minami-sunamachi"; shozoku="東西線"}; 
{kanji="東陽町"; kana="とうようちょう"; romaji="touyoucho"; shozoku="東西線"}; 
{kanji="木場"; kana="きば"; romaji="kiba"; shozoku="東西線"}; 
{kanji="門前仲町"; kana="もんぜんなかちょう"; romaji="monzen-nakacho"; shozoku="東西線"}; 
{kanji="茅場町"; kana="かやばちょう"; romaji="kayabacho"; shozoku="東西線"}; 
{kanji="日本橋"; kana="にほんばし"; romaji="nihonbashi"; shozoku="東西線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="東西線"}; 
{kanji="竹橋"; kana="たけばし"; romaji="takebashi"; shozoku="東西線"}; 
{kanji="九段下"; kana="くだんした"; romaji="kudanshita"; shozoku="東西線"}; 
{kanji="飯田橋"; kana="いいだばし"; romaji="iidabashi"; shozoku="東西線"}; 
{kanji="神楽坂"; kana="かぐらざか"; romaji="kagurazaka"; shozoku="東西線"}; 
{kanji="早稲田"; kana="わせだ"; romaji="waseda"; shozoku="東西線"}; 
{kanji="高田馬場"; kana="たかだのばば"; romaji="takadanobaba"; shozoku="東西線"}; 
{kanji="落合"; kana="おちあい"; romaji="ochiai"; shozoku="東西線"}; 
{kanji="中野"; kana="なかの"; romaji="nakano"; shozoku="東西線"}; 
{romaji="shinkiba"; kana="しんきば"; kanji="新木場"; shozoku="有楽町線"}; 
{romaji="tatsumi"; kana="たつみ"; kanji="辰巳"; shozoku="有楽町線"}; 
{romaji="toyosu"; kana="とよす"; kanji="豊洲"; shozoku="有楽町線"}; 
{romaji="tsukishima"; kana="つきしま"; kanji="月島"; shozoku="有楽町線"}; 
{romaji="shintomityou"; kana="しんとみちょう"; kanji="新富町"; shozoku="有楽町線"}; 
{romaji="ginzaittyoume"; kana="ぎんざいっちょうめ"; kanji="銀座一丁目"; shozoku="有楽町線"}; 
{romaji="yuurakutyou"; kana="ゆうらくちょう"; kanji="有楽町"; shozoku="有楽町線"}; 
{romaji="sakuradamon"; kana="さくらだもん"; kanji="桜田門"; shozoku="有楽町線"}; 
{romaji="nagatacho"; kana="ながたちょう"; kanji="永田町"; shozoku="有楽町線"}; 
{romaji="koujimachi"; kana="こうじまち"; kanji="麹町"; shozoku="有楽町線"}; 
{romaji="ichigaya"; kana="いちがや"; kanji="市ヶ谷"; shozoku="有楽町線"}; 
{romaji="iidabashi"; kana="いいだばし"; kanji="飯田橋"; shozoku="有楽町線"}; 
{kanji="江戸川橋"; kana="えどがわばし"; romaji="edogawabasi"; shozoku="有楽町線"}; 
{kanji="護国寺"; kana="ごこくじ"; romaji="gokokuji"; shozoku="有楽町線"}; 
{kanji="東池袋"; kana="ひがしいけぶくろ"; romaji="higasiikebukuro"; shozoku="有楽町線"}; 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"}; 
{kanji="要町"; kana="かなめちょう"; romaji="kanametyou"; shozoku="有楽町線"}; 
{kanji="千川"; kana="せんかわ"; romaji="senkawa"; shozoku="有楽町線"}; 
{kanji="小竹向原"; kana="こたけむかいはら"; romaji="kotakemukaihara"; shozoku="有楽町線"}; 
{kanji="氷川台"; kana="ひかわだい"; romaji="hikawadai"; shozoku="有楽町線"}; 
{kanji="平和台"; kana="へいわだい"; romaji="heiwadai"; shozoku="有楽町線"}; 
{kanji="営団赤塚"; kana="えいだんあかつか"; romaji="eidanakakuka"; shozoku="有楽町線"}; 
{kanji="営団成増"; kana="えいだんなります"; romaji="eidannarimasu"; shozoku="有楽町線"}; 
{kanji="和光市"; kana="わこうし"; romaji="wakousi"; shozoku="有楽町線"}; 
] 
let global_ekikan_list = [ 
{kiten="代々木上原"; shuten="代々木公園"; keiyu="千代田線"; kyori=1.0; jikan=2}; 
{kiten="代々木公園"; shuten="明治神宮前"; keiyu="千代田線"; kyori=1.2; jikan=2}; 
{kiten="明治神宮前"; shuten="表参道"; keiyu="千代田線"; kyori=0.9; jikan=2}; 
{kiten="表参道"; shuten="乃木坂"; keiyu="千代田線"; kyori=1.4; jikan=3}; 
{kiten="乃木坂"; shuten="赤坂"; keiyu="千代田線"; kyori=1.1; jikan=2}; 
{kiten="赤坂"; shuten="国会議事堂前"; keiyu="千代田線"; kyori=0.8; jikan=1}; 
{kiten="国会議事堂前"; shuten="霞ヶ関"; keiyu="千代田線"; kyori=0.7; jikan=1}; 
{kiten="霞ヶ関"; shuten="日比谷"; keiyu="千代田線"; kyori=1.2; jikan=2}; 
{kiten="日比谷"; shuten="二重橋前"; keiyu="千代田線"; kyori=0.7; jikan=1}; 
{kiten="二重橋前"; shuten="大手町"; keiyu="千代田線"; kyori=0.7; jikan=1}; 
{kiten="大手町"; shuten="新御茶ノ水"; keiyu="千代田線"; kyori=1.3; jikan=2}; 
{kiten="新御茶ノ水"; shuten="湯島"; keiyu="千代田線"; kyori=1.2; jikan=2}; 
{kiten="湯島"; shuten="根津"; keiyu="千代田線"; kyori=1.2; jikan=2}; 
{kiten="根津"; shuten="千駄木"; keiyu="千代田線"; kyori=1.0; jikan=2}; 
{kiten="千駄木"; shuten="西日暮里"; keiyu="千代田線"; kyori=0.9; jikan=1}; 
{kiten="西日暮里"; shuten="町屋"; keiyu="千代田線"; kyori=1.7; jikan=2}; 
{kiten="町屋"; shuten="北千住"; keiyu="千代田線"; kyori=2.6; jikan=3}; 
{kiten="北千住"; shuten="綾瀬"; keiyu="千代田線"; kyori=2.5; jikan=3}; 
{kiten="綾瀬"; shuten="北綾瀬"; keiyu="千代田線"; kyori=2.1; jikan=4}; 
{kiten="浅草"; shuten="田原町"; keiyu="銀座線"; kyori=0.8; jikan=2}; 
{kiten="田原町"; shuten="稲荷町"; keiyu="銀座線"; kyori=0.7; jikan=1}; 
{kiten="稲荷町"; shuten="上野"; keiyu="銀座線"; kyori=0.7; jikan=2}; 
{kiten="上野"; shuten="上野広小路"; keiyu="銀座線"; kyori=0.5; jikan=2}; 
{kiten="上野広小路"; shuten="末広町"; keiyu="銀座線"; kyori=0.6; jikan=1}; 
{kiten="末広町"; shuten="神田"; keiyu="銀座線"; kyori=1.1; jikan=2}; 
{kiten="神田"; shuten="三越前"; keiyu="銀座線"; kyori=0.7; jikan=1}; 
{kiten="三越前"; shuten="日本橋"; keiyu="銀座線"; kyori=0.6; jikan=2}; 
{kiten="日本橋"; shuten="京橋"; keiyu="銀座線"; kyori=0.7; jikan=2}; 
{kiten="京橋"; shuten="銀座"; keiyu="銀座線"; kyori=0.7; jikan=1}; 
{kiten="銀座"; shuten="新橋"; keiyu="銀座線"; kyori=0.9; jikan=2}; 
{kiten="新橋"; shuten="虎ノ門"; keiyu="銀座線"; kyori=0.8; jikan=2}; 
{kiten="虎ノ門"; shuten="溜池山王"; keiyu="銀座線"; kyori=0.6; jikan=2}; 
{kiten="溜池山王"; shuten="赤坂見附"; keiyu="銀座線"; kyori=0.9; jikan=2}; 
{kiten="赤坂見附"; shuten="青山一丁目"; keiyu="銀座線"; kyori=1.3; jikan=2}; 
{kiten="青山一丁目"; shuten="外苑前"; keiyu="銀座線"; kyori=0.7; jikan=2}; 
{kiten="外苑前"; shuten="表参道"; keiyu="銀座線"; kyori=0.7; jikan=1}; 
{kiten="表参道"; shuten="渋谷"; keiyu="銀座線"; kyori=1.3; jikan=1}; 
{kiten="渋谷"; shuten="表参道"; keiyu="半蔵門線"; kyori=1.3; jikan=2}; 
{kiten="表参道"; shuten="青山一丁目"; keiyu="半蔵門線"; kyori=1.4; jikan=2}; 
{kiten="青山一丁目"; shuten="永田町"; keiyu="半蔵門線"; kyori=1.3; jikan=2}; 
{kiten="永田町"; shuten="半蔵門"; keiyu="半蔵門線"; kyori=1.0; jikan=2}; 
{kiten="半蔵門"; shuten="九段下"; keiyu="半蔵門線"; kyori=1.6; jikan=2}; 
{kiten="九段下"; shuten="神保町"; keiyu="半蔵門線"; kyori=0.4; jikan=1}; 
{kiten="神保町"; shuten="大手町"; keiyu="半蔵門線"; kyori=1.7; jikan=3}; 
{kiten="大手町"; shuten="三越前"; keiyu="半蔵門線"; kyori=0.7; jikan=1}; 
{kiten="三越前"; shuten="水天宮前"; keiyu="半蔵門線"; kyori=1.3; jikan=2}; 
{kiten="水天宮前"; shuten="清澄白河"; keiyu="半蔵門線"; kyori=1.7; jikan=3}; 
{kiten="清澄白河"; shuten="住吉"; keiyu="半蔵門線"; kyori=1.9; jikan=3}; 
{kiten="住吉"; shuten="錦糸町"; keiyu="半蔵門線"; kyori=1.; jikan=2}; 
{kiten="錦糸町"; shuten="押上"; keiyu="半蔵門線"; kyori=1.4; jikan=2}; 
{kiten="中目黒"; shuten="恵比寿"; keiyu="日比谷線"; kyori=1.; jikan=2}; 
{kiten="恵比寿"; shuten="広尾"; keiyu="日比谷線"; kyori=1.5; jikan=3}; 
{kiten="広尾"; shuten="六本木"; keiyu="日比谷線"; kyori=1.7; jikan=3}; 
{kiten="六本木"; shuten="神谷町"; keiyu="日比谷線"; kyori=1.5; jikan=3}; 
{kiten="神谷町"; shuten="霞ヶ関"; keiyu="日比谷線"; kyori=1.3; jikan=2}; 
{kiten="霞ヶ関"; shuten="日比谷"; keiyu="日比谷線"; kyori=1.2; jikan=2}; 
{kiten="日比谷"; shuten="銀座"; keiyu="日比谷線"; kyori=0.4; jikan=1}; 
{kiten="銀座"; shuten="東銀座"; keiyu="日比谷線"; kyori=0.4; jikan=1}; 
{kiten="東銀座"; shuten="築地"; keiyu="日比谷線"; kyori=0.6; jikan=2}; 
{kiten="築地"; shuten="八丁堀"; keiyu="日比谷線"; kyori=1.; jikan=2}; 
{kiten="八丁堀"; shuten="茅場町"; keiyu="日比谷線"; kyori=0.5; jikan=1}; 
{kiten="茅場町"; shuten="人形町"; keiyu="日比谷線"; kyori=0.9; jikan=2}; 
{kiten="人形町"; shuten="小伝馬町"; keiyu="日比谷線"; kyori=0.6; jikan=1}; 
{kiten="小伝馬町"; shuten="秋葉原"; keiyu="日比谷線"; kyori=0.9; jikan=2}; 
{kiten="秋葉原"; shuten="仲御徒町"; keiyu="日比谷線"; kyori=1.; jikan=1}; 
{kiten="仲御徒町"; shuten="上野"; keiyu="日比谷線"; kyori=0.5; jikan=1}; 
{kiten="上野"; shuten="入谷"; keiyu="日比谷線"; kyori=1.2; jikan=2}; 
{kiten="入谷"; shuten="三ノ輪"; keiyu="日比谷線"; kyori=1.2; jikan=2}; 
{kiten="三ノ輪"; shuten="南千住"; keiyu="日比谷線"; kyori=0.8; jikan=2}; 
{kiten="南千住"; shuten="北千住"; keiyu="日比谷線"; kyori=1.8; jikan=3}; 
{kiten="池袋"; shuten="新大塚"; keiyu="丸ノ内線"; kyori=1.8; jikan=3}; 
{kiten="新大塚"; shuten="茗荷谷"; keiyu="丸ノ内線"; kyori=1.2; jikan=2}; 
{kiten="茗荷谷"; shuten="後楽園"; keiyu="丸ノ内線"; kyori=1.8; jikan=2}; 
{kiten="後楽園"; shuten="本郷三丁目"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}; 
{kiten="本郷三丁目"; shuten="御茶ノ水"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}; 
{kiten="御茶ノ水"; shuten="淡路町"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}; 
{kiten="淡路町"; shuten="大手町"; keiyu="丸ノ内線"; kyori=0.9; jikan=2}; 
{kiten="大手町"; shuten="東京"; keiyu="丸ノ内線"; kyori=0.6; jikan=1}; 
{kiten="東京"; shuten="銀座"; keiyu="丸ノ内線"; kyori=1.1; jikan=2}; 
{kiten="銀座"; shuten="霞ヶ関"; keiyu="丸ノ内線"; kyori=1.0; jikan=2}; 
{kiten="霞ヶ関"; shuten="国会議事堂前"; keiyu="丸ノ内線"; kyori=0.7; jikan=1}; 
{kiten="国会議事堂前"; shuten="赤坂見附"; keiyu="丸ノ内線"; kyori=0.9; jikan=2}; 
{kiten="赤坂見附"; shuten="四ツ谷"; keiyu="丸ノ内線"; kyori=1.3; jikan=2}; 
{kiten="四ツ谷"; shuten="四谷三丁目"; keiyu="丸ノ内線"; kyori=1.0; jikan=2}; 
{kiten="四谷三丁目"; shuten="新宿御苑前"; keiyu="丸ノ内線"; kyori=0.9; jikan=1}; 
{kiten="新宿御苑前"; shuten="新宿三丁目"; keiyu="丸ノ内線"; kyori=0.7; jikan=1}; 
{kiten="新宿三丁目"; shuten="新宿"; keiyu="丸ノ内線"; kyori=0.3; jikan=1}; 
{kiten="新宿"; shuten="西新宿"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}; 
{kiten="西新宿"; shuten="中野坂上"; keiyu="丸ノ内線"; kyori=1.1; jikan=2}; 
{kiten="中野坂上"; shuten="新中野"; keiyu="丸ノ内線"; kyori=1.1; jikan=2}; 
{kiten="新中野"; shuten="東高円寺"; keiyu="丸ノ内線"; kyori=1.0; jikan=1}; 
{kiten="東高円寺"; shuten="新高円寺"; keiyu="丸ノ内線"; kyori=0.9; jikan=1}; 
{kiten="新高円寺"; shuten="南阿佐ヶ谷"; keiyu="丸ノ内線"; kyori=1.2; jikan=2}; 
{kiten="南阿佐ヶ谷"; shuten="荻窪"; keiyu="丸ノ内線"; kyori=1.5; jikan=2}; 
{kiten="中野坂上"; shuten="中野新橋"; keiyu="丸ノ内線"; kyori=1.3; jikan=2}; 
{kiten="中野新橋"; shuten="中野富士見町"; keiyu="丸ノ内線"; kyori=0.6; jikan=1}; 
{kiten="中野富士見町"; shuten="方南町"; keiyu="丸ノ内線"; kyori=1.3; jikan=2}; 
{kiten="市ヶ谷"; shuten="四ツ谷"; keiyu="南北線"; kyori=1.0; jikan=2}; 
{kiten="四ツ谷"; shuten="永田町"; keiyu="南北線"; kyori=1.3; jikan=3}; 
{kiten="永田町"; shuten="溜池山王"; keiyu="南北線"; kyori=0.9; jikan=1}; 
{kiten="溜池山王"; shuten="六本木一丁目"; keiyu="南北線"; kyori=0.9; jikan=2}; 
{kiten="六本木一丁目"; shuten="麻布十番"; keiyu="南北線"; kyori=1.2; jikan=2}; 
{kiten="麻布十番"; shuten="白金高輪"; keiyu="南北線"; kyori=1.3; jikan=2}; 
{kiten="白金高輪"; shuten="白金台"; keiyu="南北線"; kyori=1.0; jikan=2}; 
{kiten="白金台"; shuten="目黒"; keiyu="南北線"; kyori=1.3; jikan=2}; 
{kiten="市ヶ谷"; shuten="飯田橋"; keiyu="南北線"; kyori=1.1 ; jikan=2}; 
{kiten="飯田橋"; shuten="後楽園"; keiyu="南北線"; kyori=1.4 ; jikan=2}; 
{kiten="後楽園"; shuten="東大前"; keiyu="南北線"; kyori=1.3 ; jikan=3}; 
{kiten="東大前"; shuten="本駒込"; keiyu="南北線"; kyori=0.9 ; jikan=2}; 
{kiten="本駒込"; shuten="駒込"; keiyu="南北線"; kyori=1.4; jikan=2}; 
{kiten="駒込"; shuten="西ヶ原"; keiyu="南北線"; kyori=1.4; jikan=2}; 
{kiten="西ヶ原"; shuten="王子"; keiyu="南北線"; kyori=1.0; jikan=2}; 
{kiten="王子"; shuten="王子神谷"; keiyu="南北線"; kyori=1.2; jikan=2}; 
{kiten="王子神谷"; shuten="志茂"; keiyu="南北線"; kyori=1.6; jikan=3}; 
{kiten="志茂"; shuten="赤羽岩淵"; keiyu="南北線"; kyori=1.1; jikan=2}; 
{kiten="西船橋" ; shuten="原木中山"; keiyu="東西線"; kyori=1.9; jikan=3}; 
{kiten="原木中山"; shuten="妙典"; keiyu="東西線"; kyori=2.1 ; jikan=2}; 
{kiten="妙典"; shuten="行徳"; keiyu="東西線"; kyori=1.3 ; jikan=2}; 
{kiten="行徳"; shuten="南行徳"; keiyu="東西線"; kyori=1.5 ; jikan=2}; 
{kiten="南行徳"; shuten="浦安" ; keiyu="東西線"; kyori=1.2 ; jikan=2}; 
{kiten="浦安" ; shuten="葛西"; keiyu="東西線"; kyori=1.9 ; jikan=2}; 
{kiten="葛西"; shuten="西葛西"; keiyu="東西線"; kyori=1.2 ; jikan=2}; 
{kiten="西葛西"; shuten="南砂町"; keiyu="東西線"; kyori=2.7 ; jikan=2}; 
{kiten="南砂町"; shuten="東陽町"; keiyu="東西線"; kyori=1.2 ; jikan=2}; 
{kiten="東陽町"; shuten="木場" ; keiyu="東西線"; kyori=0.9 ; jikan=1}; 
{kiten="木場"; shuten="門前仲町"; keiyu="東西線"; kyori=1.1 ; jikan=1}; 
{kiten="門前仲町"; shuten="茅場町"; keiyu="東西線"; kyori=1.8 ; jikan=2}; 
{kiten="茅場町"; shuten="日本橋"; keiyu="東西線"; kyori=0.5 ; jikan=1}; 
{kiten="日本橋"; shuten="大手町"; keiyu="東西線"; kyori=0.8 ; jikan=1}; 
{kiten="大手町"; shuten="竹橋"; keiyu="東西線"; kyori=1.0; jikan=2}; 
{kiten="竹橋"; shuten="九段下"; keiyu="東西線"; kyori=1.0; jikan=1}; 
{kiten="九段下"; shuten="飯田橋"; keiyu="東西線"; kyori=0.7; jikan=1}; 
{kiten="飯田橋"; shuten="神楽坂"; keiyu="東西線"; kyori=1.2; jikan=2}; 
{kiten="神楽坂"; shuten="早稲田"; keiyu="東西線"; kyori=1.2; jikan=2}; 
{kiten="早稲田"; shuten="高田馬場"; keiyu="東西線"; kyori=1.7; jikan=3}; 
{kiten="高田馬場"; shuten="落合"; keiyu="東西線"; kyori=1.9; jikan=3}; 
{kiten="落合"; shuten="中野"; keiyu="東西線"; kyori=2.0; jikan=3}; 
{kiten="新木場"; shuten="辰巳"; keiyu="有楽町線"; kyori=1.5; jikan=2}; 
{kiten="辰巳"; shuten="豊洲"; keiyu="有楽町線"; kyori=1.7; jikan=2}; 
{kiten="豊洲"; shuten="月島"; keiyu="有楽町線"; kyori=1.4; jikan=2}; 
{kiten="月島"; shuten="新富町"; keiyu="有楽町線"; kyori=1.3; jikan=2}; 
{kiten="新富町"; shuten="銀座一丁目"; keiyu="有楽町線"; kyori=0.7; jikan=1}; 
{kiten="銀座一丁目"; shuten="有楽町"; keiyu="有楽町線"; kyori=0.5; jikan=1}; 
{kiten="有楽町"; shuten="桜田門"; keiyu="有楽町線"; kyori=1.0; jikan=1}; 
{kiten="桜田門"; shuten="永田町"; keiyu="有楽町線"; kyori=0.9; jikan=2}; 
{kiten="永田町"; shuten="麹町"; keiyu="有楽町線"; kyori=0.9; jikan=1}; 
{kiten="麹町"; shuten="市ヶ谷"; keiyu="有楽町線"; kyori=0.9; jikan=1}; 
{kiten="市ヶ谷"; shuten="飯田橋"; keiyu="有楽町線"; kyori=1.1; jikan=2}; 
{kiten="飯田橋"; shuten="江戸川橋"; keiyu="有楽町線"; kyori=1.6; jikan=3}; 
{kiten="江戸川橋"; shuten="護国寺"; keiyu="有楽町線"; kyori=1.3; jikan=2}; 
{kiten="護国寺"; shuten="東池袋"; keiyu="有楽町線"; kyori=1.1; jikan=2}; 
{kiten="東池袋"; shuten="池袋"; keiyu="有楽町線"; kyori=2.0; jikan=2}; 
{kiten="池袋"; shuten="要町"; keiyu="有楽町線"; kyori=1.2; jikan=2}; 
{kiten="要町"; shuten="千川"; keiyu="有楽町線"; kyori=1.0; jikan=1}; 
{kiten="千川"; shuten="小竹向原"; keiyu="有楽町線"; kyori=1.0; jikan=2}; 
{kiten="小竹向原"; shuten="氷川台"; keiyu="有楽町線"; kyori=1.5; jikan=2}; 
{kiten="氷川台"; shuten="平和台"; keiyu="有楽町線"; kyori=1.4; jikan=2}; 
{kiten="平和台"; shuten="営団赤塚"; keiyu="有楽町線"; kyori=1.8; jikan=2}; 
{kiten="営団赤塚"; shuten="営団成増"; keiyu="有楽町線"; kyori=1.5; jikan=2}; 
{kiten="営団成増"; shuten="和光市"; keiyu="有楽町線"; kyori=2.1; jikan=3}; 
] 

(* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

let add pair = match pair with
    (a, b) -> a + b


let test1 = add (0, 0) = 0
let test2 = add (3, 5) = 8
let test3 = add (3, -5) = -2


type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
} ;;

(* --------------------- *)

let test1 = {kanji = "新宿"; kana = "しんじゅく"; romaji = "sinjuku"; shozoku = "JR"}

let hyoji e = e.shozoku ^ ", " ^ e.kanji ^ "(" ^ e.kana ^ ")"

let rec contain_zero lst = match lst with
    [] -> false
  | first :: rest -> if first = 0
                     then true
                     else contain_zero rest

let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n::first) :: add_to_each n rest


let test4 = add_to_each 1 [[2]; [2;3]; [2;3;4]] = [[1;2];[1;2;3];[1;2;3;4]]

let rec prefix lst = match lst with
    [] -> []
  | first :: rest -> [first] :: add_to_each first (prefix rest)

let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest -> if n < first then n::lst else first::insert rest n 
                   
let test100 = insert [1;2;6;7] 5 = [1;2;5;6;7];;

let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert (ins_sort rest) first;;

let test2 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8];;


let rec minimum lst = match lst with
    [] -> max_int
  | first :: rest ->
     let min_rest = minimum rest in
     if first <= min_rest
     then first
     else min_rest

let test_minimum = minimum [2;3;1;345;34] = 1

(* 問題12.1 *)
type eki_t = {
    namae: string;
    saitan_kyori: float;
    temae_list: string list;
}

(* 問題12.2 *)
(* global_ekimei_listからeki_tに変換する *)
let rec make_eki_list lst = match lst with
    [] -> []
  | first :: rest -> {namae=first.kanji;
                      saitan_kyori=infinity;
                      temae_list=[]
                     } :: make_eki_list rest

let test = make_eki_list global_ekimei_list


let rec shokika lst kiten =  match lst with
    [] -> []
  | first :: rest -> if first.namae = kiten
                     then {namae=first.namae;
                           saitan_kyori=0.0;
                           temae_list=[first.namae]} :: (shokika rest kiten)
                     else first :: (shokika rest kiten)
                                     
let test = shokika (make_eki_list global_ekimei_list) "池袋"



(* ----- 重複の削除 ----- *)

let rec insert_hira lst n = match lst with
    [] -> [n]
  | first :: rest -> if n.kana < first.kana then n::lst else first::(insert_hira rest n)

(* かな順でソート *)
let rec ins_sort_hira lst = match lst with
    [] -> []
  | first :: rest -> insert_hira (ins_sort_hira rest) first

let test = ins_sort_hira global_ekimei_list

let rec tyouhuku sorted_lst = match sorted_lst with
    [] -> []
  | first :: [] -> [first]
  | first :: second :: rest -> if first.kana = second.kana
                               then first::(tyouhuku rest)
                               else first::(tyouhuku (second :: rest))

let seiretsu lst = tyouhuku (ins_sort_hira lst)

let testa = seiretsu [{kanji="北";kana="きた";romaji="kita";shozoku="a"};
                      {kanji="南";kana="みなみ";romaji="kita";shozoku="a"};
                      {kanji="北";kana="きた";romaji="kita";shozoku="a"};
                      {kanji="東";kana="ひがし";romaji="kita";shozoku="a"}
                     ]


let test2 = seiretsu global_ekimei_list


let compose f g =
  let h x = f (g x)
  in h

let time2 x = x * 2
let add3 x = x + 3

let test = (compose time2 add3) 4



let twice f =
  let g x = f (f x)
  in g

let test1 = (twice twice)
let test2 = (test1 add3) 10


(* 繋がってるかどうか、繋がっていて最短距離が小さかったら更新 *)

let rec ekikan_kyori p q lst = match lst with
    [] -> None
  | first :: rest -> if ((first.kiten = p.namae && first.shuten = q.namae)
                         || (first.kiten = q.namae && first.shuten = p.namae))
                     then Some first.kyori
                     else ekikan_kyori p q rest
                            


let rec sum lst = match lst with
    [] -> 0
  | first :: rest -> first + sum rest

let rec fold_right f lst init = match lst with
    [] -> init
  | first :: rest -> f first (fold_right f rest init)

let take_less n lst = List.filter (fun x -> x < n) lst

let take_greater n lst = List.filter (fun x -> x > n) lst

let take_eq n lst = List.filter (fun x -> x = n) lst

(* quick_sort int list -> int list *)
let rec quick_sort lst = match lst with
    [] -> []
  | first :: rest -> quick_sort (take_less first rest)
                     @ [first] @ (take_eq first rest)
                     @ quick_sort (take_greater first rest)
                   

let test = quick_sort [1;1;4;3;6;8;7;9;2;4;3]



let rec gcd m n = if n = 0
                  then m
                  else gcd n (m mod n)


let test = gcd 24 36


(* type eki_t = {
 *     namae: string;
 *     saitan_kyori: float;
 *     temae_list: string list;
 * } *)
let rec minimum_eki_t lst = match lst with
    [] -> raise Not_found
  | first :: [] -> first
  | first :: rest ->
     let min_rest = minimum_eki_t rest in
     if first.saitan_kyori < min_rest.saitan_kyori
     then first
     else min_rest
     
let saitan_wo_bunri lst =
  let min = minimum_eki_t lst in
  (min, List.filter (fun x -> x <> min) lst)
    

let test = saitan_wo_bunri [{namae="hoge1";saitan_kyori=1.0;temae_list=[]};
                            {namae="hoge2";saitan_kyori=0.4;temae_list=[]};
                            {namae="hoge3";saitan_kyori=9.4;temae_list=[]}]
(* fold_right使った版 *)
let saitan_wo_bunri_sub eki (item, lst) = 
  if eki.saitan_kyori < item.saitan_kyori
  then (eki, item :: lst)
  else (item, eki :: lst)
  
let saitan_wo_bunri2 lst = match lst with
    [] -> raise Not_found
  | first :: rest -> List.fold_right saitan_wo_bunri_sub rest (first, []) 

type distance_t = {
    kyori: float;
    total : float;
}

let total_distance lst =
  let rec hojo lst total0 = match lst with
      [] -> []
    | {kyori = k; total = t} :: rest ->
       {kyori = k; total = total0 +. k}
      :: hojo rest (total0 +. k)
  in hojo lst 0.0



let koushin1 ekikan_list p q =
  let kyori_opt = ekikan_kyori p q ekikan_list
  in
  match kyori_opt with
    None -> q
  | Some kyori -> if q.saitan_kyori > kyori
                  then {namae=q.namae;saitan_kyori=kyori;temae_list=q.namae::p.temae_list}
                  else q
                
let test = koushin1 global_ekikan_list
             {namae="代々木上原";saitan_kyori=999.0;temae_list=["代々木上原"]}
             {namae="代々木公園";saitan_kyori=10.0;temae_list=[]}
         
let koushin ekikan_list p v = List.map (koushin1 ekikan_list p) v
                
let test = koushin global_ekikan_list {namae="代々木上原";saitan_kyori=999.0;temae_list=["代々木上原"]} [{namae="代々木公園";saitan_kyori=10.0;temae_list=[]}]

 (* dijkstra_main : eki_t list -> ekikan_t list -> eki_t list *)
let rec dijkstra_main eki_list ekikan_list = match eki_list with
    [] -> []
  | lst -> 
     let (eki, bunri_eki_list) = saitan_wo_bunri2 lst
     in let koushin_go_list = koushin ekikan_list eki bunri_eki_list
        in eki :: (dijkstra_main koushin_go_list ekikan_list)

let rec romaji_to_kanji romaji ekimei_list = match ekimei_list with
    [] -> ""
  | first :: rest -> if first.romaji = romaji
                     then first.kanji
                     else romaji_to_kanji romaji rest

let test = romaji_to_kanji "myogadani" global_ekimei_list

let make_initial_eki_list ekimei_list kiten =
  List.map (fun ekimei ->
      if ekimei.kanji = kiten
      then
        {namae=ekimei.kanji;
         saitan_kyori=0.0;
         temae_list=[ekimei.kanji]}
      else
        {namae=ekimei.kanji;
         saitan_kyori=infinity;
         temae_list=[]})
           ekimei_list
  
let rec get_last_one lst = match lst with
    [] -> raise Not_found
  | last :: [] -> last
  | _ :: rest -> get_last_one rest
                                            
let dijkstra kiten_romaji shuten_romaji =
  let seiretsu_list = seiretsu global_ekimei_list in
  let kiten_kanji = romaji_to_kanji kiten_romaji seiretsu_list in
  let shuten_kanji = romaji_to_kanji shuten_romaji global_ekimei_list in
  let initial_eki_list = make_initial_eki_list global_ekimei_list kiten_kanji in
  let ret = dijkstra_main initial_eki_list global_ekikan_list in
  get_last_one (List.filter (fun eki -> eki.namae = shuten_kanji) ret)

let test = dijkstra "ikebukuro" "ogikubo"

