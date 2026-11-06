package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._cbc4c237a89e1388cf8768b8;
   import com.ax3.fishao.model.vo._b37fd2bf0fee2c3dcbb24252;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class _0d3ce2ad35f3477bc8fda6f0 extends _8071087ebe26c264282580d0
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var filterText:TextField;
      
      public var filterInput:TextField;
      
      public var title:TextField;
      
      public var whichFriend:TextField;
      
      public var friend:TextField;
      
      public var homePoints:TextField;
      
      public var online:TextField;
      
      public var list:_03cf4a1c7de9f33d761a6a1d;
      
      public var items:Vector.<_b37fd2bf0fee2c3dcbb24252> = new Vector.<_b37fd2bf0fee2c3dcbb24252>();
      
      protected var _filteredItems:Vector.<_b37fd2bf0fee2c3dcbb24252> = new Vector.<_b37fd2bf0fee2c3dcbb24252>();
      
      protected var _filterTimeout:uint = 0;
      
      public function _0d3ce2ad35f3477bc8fda6f0()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揟掎捩挢推捵掴捧握挭揄捈捠揕挬挰揽挸掿挲掕掜捚揊捏插挘掾揲挷揓捿捽挩掋掕揯揼挠挬捑挕挧揫捍掠挼掺掑捶","揶掳捘挣揟揬揚挏挲捘捆捺掿捩捋掭");
         super(_loc1_);
      }
      
      public function _e4382dd0c880f8636c6d2eea(param1:Vector.<_b37fd2bf0fee2c3dcbb24252>) : void
      {
         var _loc2_:int = 0x66645CF4 ^ 0x58B2A208 ^ 0x575C9789 ^ 0x5AB77613;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-798660378 ^ 0x597F9AA8 ^ 0x0344E8EC ^ -1184692794))
            {
               case 0:
                  this._5de017f52f212a6cb1c23559();
                  _loc2_ = -1150400234 ^ -1294783504 ^ 0x3640E921 ^ 0x0CC094A2;
                  break;
               case 1:
                  return;
               case 2:
                  this.items = param1;
                  this._filteredItems = this.items.concat();
                  if(this.list != null)
                  {
                     _loc2_ = 0x7061C33F ^ 0x2DC19621 ^ 0x0183DDEE ^ 0x6F1E9794;
                  }
                  else
                  {
                     _loc2_ = -1109530989 ^ 0x614F9871 ^ 0x4EE075C6 ^ -1588652991;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5de017f52f212a6cb1c23559() : void
      {
         var _loc1_:_b37fd2bf0fee2c3dcbb24252 = null;
         var _loc2_:_cbc4c237a89e1388cf8768b8 = null;
         var _loc3_:Vector.<_b37fd2bf0fee2c3dcbb24252> = this._filteredItems;
         var _loc4_:int = -492090326 ^ 0x4DCCE929 ^ 0x3988F9BF ^ -1762698052;
         this.list.removeAll();
         for each(_loc1_ in _loc3_)
         {
            _loc4_++;
            _loc2_ = _cbc4c237a89e1388cf8768b8(this.list.add(_loc1_,_loc4_ == _loc3_.length));
            _loc2_.buyHandler = this._74ef5fb7a53c3d36ba880cd8;
         }
      }
      
      protected function _74ef5fb7a53c3d36ba880cd8(param1:_b37fd2bf0fee2c3dcbb24252) : void
      {
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.closeButton.handler = this._adde655619795e2968e0f590;
         this.filterInput.addEventListener(Event.CHANGE,this._3d3cf53345937800e32dcecf);
         this.filterInput.addEventListener(FocusEvent.FOCUS_IN,this._802d3e1196daf3b0dce342ae);
         this.filterInput.addEventListener(MouseEvent.MOUSE_OUT,this._1130d642c897c3901fdfdef2);
         this.filterInput.text = "";
         this.filterText.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛဵသ႑႕ႯႛႶჩქၧჸတყႥზ႔နჶၺႮဵိႹႛၼႉႃႋဢႣ်ၣဢვ၅ဤჀ၆ႏဳ჊ၑၺ჏჆ြၝညႰၾဋဳမၱႩၱဤဠႨ္႒ၨၘႛႥ჏Ⴤ჏დႜဈီტၹღႷჅႥჵ၆ၕငႵ","ဍၦညტၱထჟၶႃၱႺ႘ცჷჳၴ"));
         this.title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႒ႌ႒ဣტၩ႒ၭဉႺ။ၕႀၺႼၝცდႋ၆ၤႜშჇစ၉ႴႫ႒ၼၟဎ၉ႂႌ႓ႾღტႁဍჸဌხၪၩဋႽၘၥ၎လႫႀႝႃ჆ႸၹႺ၂ၲ","႗ၞ၊ქათლဖခူႁ჆႖ၙဿၣ"));
         this.whichFriend.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢႈႽ჌დသၢႨშၸဧၵၨကგုჍႃ၇ိဪჃჸ၆စ။ჼ႑ဩႡူဓႝၝဍრႩၨ႘ႚნစ၇ဇဪႸၲუၸႋဟႥდခစၽ၁႒Ⴋ၇၂ၟჾွႝၴჴႢႈႆ჌၇၉჻","჈჉ႲჂၩქဢ჎ဢငၰფႻდပ჆")).split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲插掜捚捵捓掅接挣掯揹捔捠掏挿挔掊採揘挴握捥揆捠挿掣挜揃","掷掛挹揔挜捍挱揲挥掵捜掠揊挰掆提")).join(app.user.username);
         this.friend.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴍწ႞ဪ၃თႁရ၊ლႭჁဧ჉჋ჩႫၬნტၧႻႦၵႧჰჰထ၏ၥၼဒჼ၀ထၕၬႡဏဋႳၴဝლႫငဳၤၿჃဿၯဘ႗ყზႃှၷၮာႠထၲ","႔ႜဠჩၳ႗Ⴥဝიး်ၛဲჽဤა"));
         this.homePoints.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴂტოၮဨჸၓႀ჈ႊპခၸဝဍရဿႷჍპჳ့ဇგကဒႁႲပဉဓၿ၀ၙႝ჋ღဢႇၪၦუ႘ဘႰလႾჟვရ჻ုဢႩႌჅლႾ၈၄၆ჹ၀ဤჴს჋ဧ၅ညၽဓ","ႝჅ႓သၬဠჳსზဃოჴႸჃჄႹ"));
         this.online.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掫挻捞挾捶换捿挟掂掸揥按揎揦捋指捩揅換挄捬掴採挓捥捸挧揖掸揻挺挜揷捕掩挀挅捽挾揃掟掕掦挑捌捩掰揷揺捺挸揈揻揃捜揁挻挡挪援挧捯掦","揧捎挨插揓掤揦挋揷提挃揦挚揈揦挊"));
         this.filterText.autoSize = TextFieldAutoSize.LEFT;
         this.filterInput.x = this.filterText.x + this.filterText.width + (-228296833 ^ 0x1BEC221D ^ -134407635 ^ 0x1E754F5E);
         (bg as MovieClip).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揹揩挍揝掼掙掀捅掻捹揭揢揉掉挪捜掦挾挤捵捭揨揚掟捌捁挂授挱揙揟挡掿掀掚揽捭揪","挬挛掯挭捪挍挎排挃掿揦捵掳挤掛挈")).x = this.filterInput.x - (-596412366 ^ 0x5C57B938 ^ 0x34CD6048 ^ -1259757238);
         this._c253fa7e09283fa181e79b00();
         super._935ac2966ddad68dfc449202();
      }
      
      private function _1130d642c897c3901fdfdef2(param1:MouseEvent) : void
      {
         stage.focus = this.filterInput;
      }
      
      private function _802d3e1196daf3b0dce342ae(param1:FocusEvent) : void
      {
         stage.focus = this.filterInput;
         this.filterInput.text = "";
         this._c08bd25141a949d8232f7f74();
      }
      
      private function _3d3cf53345937800e32dcecf(param1:Event) : void
      {
         var _loc2_:int = 0x5DC37D2C ^ 0x57279F0B ^ 0x5EE918D1 ^ -1216398477;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x02D77BDD ^ 0x5192865C ^ 0x6B4D6B80 ^ -612739196))
            {
               case 0:
                  if(this._filterTimeout)
                  {
                     _loc2_ = -2011850060 ^ -2118540474 ^ -2071798600 ^ 0x6E5C24CE;
                  }
                  else
                  {
                     _loc2_ = -1469904199 ^ -603440200 ^ -504806427 ^ 0x76F0B363;
                  }
                  break;
               case 1:
                  clearTimeout(this._filterTimeout);
                  _loc2_ = 0x685EC0B6 ^ 0x22CD3304 ^ -1441711910 ^ 0x03F00AEF;
                  break;
               case 2:
                  this._filterTimeout = setTimeout(this._c08bd25141a949d8232f7f74,0x5231ED86 ^ 0x2954999E ^ -632485356 ^ -1591181720);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c08bd25141a949d8232f7f74() : void
      {
         var _loc1_:_b37fd2bf0fee2c3dcbb24252 = null;
         var _loc2_:String = this.filterInput.text.toLowerCase();
         this._filteredItems.length = -1800615132 ^ 0x0B0E962A ^ 0x055D35BC ^ -1694537550;
         if(_loc2_.length > (0x3737F918 ^ -1030852913 ^ -1780311887 ^ 0x605B0F66))
         {
            for each(_loc1_ in this.items)
            {
               if(_loc1_.friendName.toLowerCase().indexOf(_loc2_) > (0x2F943FB5 ^ 0x7EA90D01 ^ -1806137974 ^ 0x3A9A48C1))
               {
                  this._filteredItems.push(_loc1_);
               }
            }
         }
         else
         {
            this._filteredItems = this.items.concat();
         }
         this._5de017f52f212a6cb1c23559();
      }
      
      private function _adde655619795e2968e0f590(param1:MouseEvent) : void
      {
         GameSwf.currentLocationDialog.declineEntrence = true;
         close();
      }
      
      public function _c253fa7e09283fa181e79b00() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_cbc4c237a89e1388cf8768b8);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = -456734640 ^ 0x28D4050E ^ -1378050143 ^ 0x61CE52FA;
         this.list.itemFactory = _loc1_;
         this._5de017f52f212a6cb1c23559();
      }
   }
}

