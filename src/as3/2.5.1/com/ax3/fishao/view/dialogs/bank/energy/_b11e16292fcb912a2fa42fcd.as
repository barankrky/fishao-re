package com.ax3.fishao.view.dialogs.bank.energy
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class _b11e16292fcb912a2fa42fcd extends _76eb705b121f63aff7a08e4d
   {
      
      private var _7ac9607ded1252c3708e56a5:Object;
      
      private var _357d1087ab7d5128892d9603:Array;
      
      private var _9977c628eac4d3789fb953b8:Dictionary = new Dictionary(true);
      
      public function _b11e16292fcb912a2fa42fcd()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var i:int = -94430095 ^ 0x77B7D272 ^ 0x097F51C3 ^ -2070437952;
         var buyEnergyText:String = null;
         var discountField:_1408d94400cd9851158c4009 = null;
         super._935ac2966ddad68dfc449202();
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         tabChildren = false;
         title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措捺捈揇捣揨掋提掻挘挫挅挚挝捘掖揫掿揺挷推揸捡揸挨捶揀捶掹掫控掙捱捗捖挛挵振揳掱","捼揠掅掋挗掔挬挅捋揨掘授揃捦捷揑"));
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
         i = 0x04194874 ^ 0x39CAFCA5 ^ 0x76975CB4 ^ 0x4B44E864;
         while(i <= (-828368744 ^ -2111986846 ^ 0x03D7B5B4 ^ 0x4F6A0E4B))
         {
            buyEnergyText = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揱換挝揻揶挠掵揋揝挮揢掓按挴挤揹掟掴描揌揺揌捜掋挖捰捋捵捈揫挿揸挬揗揘掇挒掞揗捯掂持挹掖捘挫振捵","掅掿揠换捍揟捒掝掚挐挿揪捋掙揄捹"));
            TextField(MovieClip(this[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提指挦挵捉挝捱挝捦捯挠揽揖捧換揸","揌揙掣插挀揾揺捩挝掤挄揇握捅掻挞") + i]).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勑创勽勭务務刪刞勃剿勶勷刅剸勭勆剏劉剳刚勀劽勫勉","剞剎劣劋剢剽劲劐勋剡剥劽别刱剅劔"))).text = buyEnergyText;
            this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႬჭႎჀთ႞ၶျဆႱ၌႞ႀ႑ႧჹზႭၫႫၳေၩ၍ჶန","ქဤၾჄခၪႳသသႏტၘၺၓႦဍ") + i] = new FishaoButtonWrapper();
            FishaoButtonWrapper(this[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎刜刮剆劦勂勠刞勇剙剖剹刵刼劃动劭划勪务劘前剁刅分剮","刭动勠劊剶勔劓剷剀到劵勪剶剃劋力") + i]).process(MovieClip(MovieClip(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႁႢႭကႦၢჸႉင၌Ⴑႃი၎နဌ","႔ၖယႌဴအဓჳဥႩ჊ါႊჽႆჭ") + i]).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘჱჴაႯღ၎ၿၖၟხၴ်းဋဍ၄ၴဢშၹ჻ၧဨႂჰ","ღხပႇၓၸႝႷჵၺဦတჸႾ჌ဇ"))));
            FishaoButtonWrapper(this[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振挲捽掑揂揱掅揝挙挠捰掿挘捌挓掆挳损挰掦揲挚挚挻挝挏","捂揶捺捘捛捌掸掚插掔揼揸揼掖換捜") + i]).handler = this._6d7da43cc09183d7dc94dda2;
            discountField = new _1408d94400cd9851158c4009();
            discountField.process(TextField(MovieClip(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥၴဒဈစၽ၂Ⴢၮ჊Ⴌၾჟეღဨ","ႝ၆Ⴜღဍ၄သၻဌႊ၁၅Ⴋလ၏ၽ") + i]).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢာ၎ပဖჟႱါ჆მბဣ჎ဴიၶჩႢპှတ္၀ီ","ပၫႹကႊ႐၎ეႨၱႿ၆ႁဆ႕ႆ"))));
            this._9977c628eac4d3789fb953b8[i] = discountField;
            i++;
         }
         buyButton1.visible = true;
      }
      
      private function _6d7da43cc09183d7dc94dda2(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:int = -1545910728 ^ 0x07B3C539 ^ 0x33C32902 ^ -1750357501;
         if(this._7ac9607ded1252c3708e56a5.hasOwnProperty(FishaoButtonWrapper(DisplayObject(param1.target).parent).label))
         {
            _loc6_ = int(this._7ac9607ded1252c3708e56a5[FishaoButtonWrapper(DisplayObject(param1.target).parent).label]);
         }
         for each(_loc2_ in this._357d1087ab7d5128892d9603)
         {
            _loc3_ = _loc2_.price;
            _loc4_ = _loc3_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧჅၔ჈Ⴛ၇႓Ⴙ႒ၵ","၅ူႨူ၂ၟ၎ჱဘဆြႻჍქჽ႒"));
            _loc5_ = _loc4_[-1706657388 ^ 0x0DBB3B6B ^ 0x776D2362 ^ -527408740];
            if(_loc2_.energyCount == _loc6_)
            {
               if(_loc5_ == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍捀捬掣掯揜揾挡捔揦掖捒","捳揆捝援挺掊损揇掰捜挭掫挹捕揨掤") && app.user.fishbucks < _loc4_[-627414178 ^ 0x44C44E32 ^ -1751656643 ^ 0x09C9F251])
               {
                  GameSwf.instance._cb81036d0354ae254b0556b1();
                  close();
                  return;
               }
               if(_loc5_ == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴇ႑ჿშၺႎသႼჁႁკၛ","ဍთႈც၂႕ႺჃლჯဪႣ჎ႁ჏ဃ") && app.user.fishcoins < _loc4_[-1982891783 ^ -1787514099 ^ 0x410DA5EB ^ 0x5DB66E1F])
               {
                  GameSwf.instance._e6f0a7b005cacf7751286e97();
                  close();
                  return;
               }
            }
         }
         _dfa25706e58a240c1e33e5c6.buyEnergyExtension._289b95e3780da3da5f06a2c5(_loc6_);
         close();
      }
      
      public function setData(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         this._357d1087ab7d5128892d9603 = param1;
         if(line1 == null)
         {
            setTimeout(this.setData,0x74DAC443 ^ -1556181754 ^ 0x1B1DF76E ^ -856047865,param1);
            return;
         }
         this._7ac9607ded1252c3708e56a5 = {};
         var _loc4_:int = -513349226 ^ 0x0B0EF6FE ^ -577036634 ^ 0x37F301CE;
         while(_loc4_ < param1.length)
         {
            TextField(MovieClip(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညငეფ့ႬဆჁႛစးပჰ၆ၧၘ","Ⴘ႕ჇှჾၩჵဨღႝႽ၁၉၃ၜၓ") + (_loc4_ + (0x3B1727D8 ^ -755100582 ^ -795860157 ^ 0x397910C0))]).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掏挄掹揽掴掺授捒揫接挷揿掍探掽挦揼揆挼捸掅揯揱揞挺揳捂掷授捘","措掑捩揎挺挑捉捨掓授掅捾掿揾捻捜"))).text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၇ဝ၆ၰဲჩ့ႡဒႠမၞႩဴာ၌ჶၵၕထვဓၓၣဃၜူၑၺუႸჅ","ႁဈႂၛဳဃპႭႪႌၔ၆မ၈ၣძ")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剉勥删剟剤动劷勥劒劃刲刟勋勋劔势剜剚劫刻务剕","募力剻勥务刔刢剈勩勍券勨刭剐劥勔"),param1[_loc4_].energyCount);
            (this._9977c628eac4d3789fb953b8[_loc4_ + (0x1AC2FDEF ^ 0x24F300A8 ^ -36969579 ^ -1007018285)] as _1408d94400cd9851158c4009).text = param1[_loc4_].free > (0x10A774F2 ^ 0x0C360A8E ^ 0x16C11C32 ^ 0x0A50624E) ? _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("副勀勆劸劮剑効創利劒剆刻勞刋劁刧剅劙劃动刣剞劾剱刌别剑勫刡刴刕刧","剡勢剭刼务刭努劃刭勃劃功劆剝刦勛")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劆勍剄勌劂划勺剭刢刵功勵创劫劧勶剙劓勲劼券劆","創刱刄剌刮勃刢勚勷刳刮勇効勸勥刕"),param1[_loc4_].free) : "";
            _loc2_ = param1[_loc4_].price;
            _loc3_ = _loc2_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼჇႲႋနႀဌဣၼჶ","ၽჇဨၗႅჲ့ၵၝ჻ၗၙჅႽ႔ၰ"));
            if(_loc3_[-1881775746 ^ 0x70AA087E ^ 0x090129B7 ^ -159563594] == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋剙劖勖勋剦剩剏剥勏剼勅","势剾剼剂刡刜劮剑剟别劵勃剙勗功勛"))
            {
               FishaoButtonWrapper(this[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍控损捌挀挞挘揯挞揟捂掖揎挃掮捦挭揀揣掑掶挷挰捝据揠","挐掲挒挬捌掼捺捱挳揱換挨捀捱掬捼") + (_loc4_ + (0x540DA792 ^ 0x79581F63 ^ 0x6B373435 ^ 0x46628CC5))]).showFishBucksIcon();
            }
            else
            {
               FishaoButtonWrapper(this[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲挽挣掜揥捙掵揥援挼捿捽捳捦掛挺接揨措捪捨掜掝掼揧挓","掃挮挢挐捕挤挰掬损揗捡捎揨挂揢揔") + (_loc4_ + (0x05B2F749 ^ 0x0872E536 ^ -96634255 ^ -134387697))]).showFishCoinsIcon();
            }
            FishaoButtonWrapper(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("စႾაၴဓშၙာ၉၆ၤရႌဪ၁ဩဪစჷၨၜၬაႻီ႒","၈၁ၚႯၘ၅Ⴅ၊ၩႮၫဴဏქမဦ") + (_loc4_ + (0x0BE7DE51 ^ -1877786916 ^ 0x29672A43 ^ -1298937137))]).label = _loc3_[0x7773BE96 ^ 0x1FCEA1FD ^ 0x55035EC9 ^ 0x3DBE41A2];
            this._7ac9607ded1252c3708e56a5[_loc3_[0x6273DC6B ^ 0x745722BF ^ 0x71DDDB5F ^ 0x67F9258B]] = param1[_loc4_].energyCount;
            _loc4_++;
         }
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
   }
}

