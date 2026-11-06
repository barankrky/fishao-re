package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.CollectionsWidget;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _b1c568080240cc3772c55d90 extends CollectionsWidget
   {
      
      var _temp_17:* = §§findproperty(ColorMatrix);
      var _temp_16:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掜措捠揭掠揣掷挞揅揸捦挘揀掐换挖捚挓捜揨掏掣揵掣","挴掟揝捎掂掣挑揕掘推插排挮挪揶揝");
      var _temp_15:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捅挩揬揿揹挀揽挛挴挬揷揖挞揘捰挫揕掼挚插挖掑捑捕","掖挥揤挣揚揕挙捡掭揖揉挺揁揾揘掱");
      var _temp_14:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("加勓劫剥剥剀務剡剚剝勺勐剮刨勉務劯列劵勫刎努券剟","勧剾刵剟剧勴勝勶剻劢募勿劋刐刧刽");
      var _temp_13:* = -1261893442 ^ -1204235281 ^ 0x35F68F50 ^ 0x39075401;
      var _temp_12:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("჻ထၝფၮღჀႴမ႕ႵსჯზჂဏჴႰၳဃႎႬჍၣ","ჩჯ႞ၧ၂ჽလၓၑტႯსၠჃွႱ");
      var _temp_11:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၃ၖၰ၎Ⴎႊၤცჿႌၡ჏ႚညျႉႏူა჆჉၈ၩႆ","၁ၢႠူၐჺႴ჎ဗოဉთႈလქဒ");
      var _temp_10:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勰則判努勄勑劐刪劎剜劅剱勊勷劮勻剸力劀刎剕刏劏勆","刓剟励剟劁則剻剠剁勩剅劎剬剖勛剧");
      var _temp_9:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揜掸揃捞推挆挟捞捙掺挆捶掙掍探捫挿挏挪揨揢捊掏揊","揨掗捃挮挐挚挹揗挽掔挍揃挿揞掃掮");
      var _temp_8:* = 0x08F793C3 ^ 0x74AB6EBD ^ -586102998 ^ -1588839852;
      var _temp_7:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刖劲剷努刍勏勢劘剔劾剣刴刄剜剾势剤助勲勤勊刪刼創","劲剴券勬勌刈刏剉剼前勼勝剼刐刪剚");
      var _temp_6:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဒဂ႟ၷႯႛႢၯჿာဥრဃႪျဵၵ႗ႬၽၽჽာႪ","ჲ္၍ဍစთူჾ჎Ⴗဤ၏კၥჩ჎");
      var _temp_5:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勺剁劢勵劖劏剧勡勦劆刢制剔刾勃刻割劸力刑勫劢勧刾","剭剩刊勬劌剱刦勚助劣勢勸剶劺刋刓");
      var _temp_4:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劮剼勁剙劲劃勾刡刟劼功労剄劓剥勂刯勁刳刵剖刘剶勞","勶劼剫刪剥劘剕劥刕刘勡勚劮剬勢剻");
      var _temp_3:* = 0x25920DBD ^ -2032496251 ^ 0x6FDCAEFC ^ -862702908;
      var _temp_2:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ြူႠဣၿ႒჆ცင჎ჴဂၯၧၦჰၩჶၤႚ၈ၔၮ႐","ၳဧနဨၷ჌့ჰႺိယၜၡၭႤს");
      var _temp_1:* = 0x05F2FFC7 ^ 0x39E67FB4 ^ 0x1906AE39 ^ 0x25122E4A;
      
      private static var _eb185dd747a2d4a64d16c719:ColorMatrix = new ColorMatrix([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,-480701086 ^ 0x184DC3AC ^ -1479674457 ^ 0x5CD92368,-1605075626 ^ -806628181 ^ 0x2E024A54 ^ 0x41BDE3A9]);
      
      private static var _e2b5756634adec842520e97d:Array = [_eb185dd747a2d4a64d16c719.filter];
      
      private var _ad73499e41176b0b9ceeabc3:int;
      
      public function _b1c568080240cc3772c55d90()
      {
         super();
         name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂挅挠挰挸挸掠掾捺挆援掓挝掵捚掌据捁揟捞揩揋揗揙捉捋挏捤","揄捶挎揞捉捦捝探掗揃揿挪揋描掂揬");
         addEventListener(MouseEvent.CLICK,this._279b51db86fe3ea19995c7e2);
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.ROLL_OVER,this._04d3d1186048bb07dcb809dd);
         TextField(tooltip.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄါႡႚႍညစჸငჷၦ္Ⴐ၌ငႱႱႉ","႙ၢჯၣ႟ထႝစ჉ႿႥႄჿ႘၉ၼ"))).text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဈ၁၊ჁႎლႷႜქღႀყႇႠჼႇၹ့၊ၽခႪဘႅႆႷုစၪატႌიၶၟႊၤဣၭ჋း჎ၠႲႥპၪუ႐ၱႷႩ","ႄႧႎჲၴႈဠႥၼလၢწფႷႬု"));
         this._ad73499e41176b0b9ceeabc3 = tooltip.x;
         tooltip.x -= tooltip.width;
      }
      
      private function _04d3d1186048bb07dcb809dd(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this._736f06dddfbe4d4ee0d9a3cf);
         removeEventListener(MouseEvent.ROLL_OVER,this._04d3d1186048bb07dcb809dd);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဇႩႶუ჎ႍწ႕ဪყჇჩၵဧჶႁဿჽယၙအႊ႒Ⴣ","ၪიတ჉႟ဳჩဳဢဒဖვရဎဢ႒"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀუႣဤქ၌ჱၕყည","ၜဳႷဒၞီၷ၇ငႃွႏႧჭ၄႗")):this._ad73499e41176b0b9ceeabc3},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚劂劏劧勮剁剸副剳剭剪劷劅剖剗勶","剭剏剥刿刷劌劔勐剻剧刹刼割刚刕剡")):Cubic.easeOut});
      }
      
      private function _736f06dddfbe4d4ee0d9a3cf(param1:Event) : void
      {
         removeEventListener(MouseEvent.ROLL_OUT,this._736f06dddfbe4d4ee0d9a3cf);
         addEventListener(MouseEvent.ROLL_OVER,this._04d3d1186048bb07dcb809dd);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挵掊掄捼推挌揁捹捚挈换挶挃揻捕挎捘掖揿揝捋捑掐掙","揑掇揳揎揶挒挜掰掑捜揉挿掄捡掃揊"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬揚揚掴掻损揇掖揧揶","揁揓掔掎捠揠掷掟揷揿揺挤掱挭捽捩")):this._ad73499e41176b0b9ceeabc3 - tooltip.width},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဉၛႾေၡჾႌလႠჂဖၝႣჰၛု","ჇႨႈ်ါ်ဇူၣၱრဆလၢჃၭ")):Cubic.easeOut});
      }
      
      private function _279b51db86fe3ea19995c7e2(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
         app.dialogFactory._0256d600dfa24acf3e18390c().show();
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -1196830689 ^ -503406365 ^ -114189129 ^ -1278498839;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x0A43882F ^ 0x7F8FE6BA ^ 0x2F36A40C ^ 0x4957813B))
            {
               case 0:
                  if(parent != null)
                  {
                     _loc1_ = 0x24093700 ^ -1283994880 ^ 0x78C9FBBC ^ -65385441;
                  }
                  else
                  {
                     _loc1_ = 0x14BD427C ^ 0x5A3DA878 ^ 0x6DE35467 ^ 0x30CEF5C3;
                  }
                  break;
               case 1:
                  parent.removeChild(this);
                  _loc1_ = -1329369398 ^ 0x62A536BB ^ 0x5BC5B16C ^ -1710316867;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function deactivate() : void
      {
         var _loc1_:int = -2016431368 ^ 0x0F993AAB ^ 0x1AC0A9BA ^ 0x4CB17CB5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2172F999 ^ -518733510 ^ 0x0A275BE6 ^ 0x14663E1B))
            {
               case 0:
                  return;
               case 1:
                  removeEventListener(MouseEvent.CLICK,this._279b51db86fe3ea19995c7e2);
                  _loc1_ = -1362143854 ^ 0x2ECA201D ^ 0x06F524F3 ^ 0x58D70C22;
                  break;
               case 2:
                  if(hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = 0x5C628D8F ^ 0x2EA55326 ^ 0x2CB43272 ^ -2141933180;
                  }
                  else
                  {
                     _loc1_ = -235809052 ^ -415733200 ^ 0x2FB62EFE ^ -413610124;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function disable() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this._04d3d1186048bb07dcb809dd);
         removeEventListener(MouseEvent.ROLL_OUT,this._736f06dddfbe4d4ee0d9a3cf);
         removeEventListener(MouseEvent.CLICK,this._279b51db86fe3ea19995c7e2);
         this.filters = _e2b5756634adec842520e97d;
      }
      
      public function enable() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this._04d3d1186048bb07dcb809dd);
         addEventListener(MouseEvent.CLICK,this._279b51db86fe3ea19995c7e2);
         this.filters = [];
      }
      
      override public function get height() : Number
      {
         return -469921429 ^ -1345421921 ^ 0x2BCC21C3 ^ 0x67FFCD7C;
      }
   }
}

