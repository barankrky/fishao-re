package com.ax3.fishao.view.dialogs.friends
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.friends._c8850dfef8e9ca8ba5cbc114;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   import com.ax3.fishao.view.wrappers.impl.friends._b027927f1ffe1b9ec7fd35ff;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.getDefinitionByName;
   import flash.utils.setTimeout;
   import protocol.sr.profile.ProfileFriendsResp;
   
   public class _d70ad1304265e0cc5008801f extends _a02e524fd5591a034dca48c6
   {
      
      private static const _f8ee5fffddc75bc6c9c28199:uint = -771527379 ^ -443657927 ^ -1408037135 ^ -1684131092;
      
      private var _a06b166775ce06936ef2e852:uint = 0;
      
      private var _a12d9849d94927a81422947b:uint = 0;
      
      private var _a580f76f7aa43f5073f03487:Vector.<Object>;
      
      private var _0f2be4690131325339b455fe:String;
      
      private var _7e40b6b9489c777ac5c1d2de:int;
      
      private var _d9009db9e81ef1b573393573:Vector.<Object>;
      
      public function _d70ad1304265e0cc5008801f()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         btnClose.handler = function(param1:MouseEvent):void
         {
            close();
         };
         title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴚ၉ၕჅჶჼ၌ဎဲဵၪႽၼာိ჈Ⴗျ႒အყလႼ჏ၐ၄႙ၑဏဇၦဆ","ႬှဖႩီႬხႤჅၛည႟ၢრ႙၈"));
         lblFilter.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺剚刞办勩勳削勶刚刲劫劽务勇剶剭勸剉剄劅剦勶创劼制剫列剏刢刽刕勃剬劸剙劯勩剚勉勿劆刣劼刭","劋勁到勖劚剒勄劖刚到剚勄勹剮剰剨"));
         inpFilter.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶揄掋揁捥挃控捪掍损掆挠捋捰揣掆揬揷捰挲捥据挫挍揧掀掕捙挍插捥挞措掩挾排掤揤掛捊揦挒握揃","挴捾揫挟揂掺挖揿捠揳揖掸掿挟挢捳"));
         lblName.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၝႀႦႪნ჌ဌဒ႓ေႏჱၢဈနჸ","ႤၱညဳჳၗၳႹ၈უწႽჴဉჱဗ"));
         lblLastWorld.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒劥剉劤勁劈剾劀劣剡劓分剌剼劼创劗刏刕剡劸剜効劊刕勂","動剫勻勪劝劻刐剶刓刘勹勖勩勫劲初"));
         lblActions.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑掻捣掺揹挊掚挳捱捆揉挩掚捚揪排揫握挭捛掣挷","援揟掼掬挞掂挅揿挅插掌损揪指捺挮"));
         btnPreviousPage.handler = this._a25a75bfaf13ac62a430d4bd;
         btnNextPage.handler = this._3977c64289fb2c11169dd6ca;
         inpFilter.addEventListener(Event.CHANGE,this._b193a3b18e8889f1abdd5932);
         inpFilter.addEventListener(FocusEvent.FOCUS_IN,this._d4cac3e017641c9c11edaea3);
         inpFilter.addEventListener(MouseEvent.MOUSE_OUT,this._415b6f36280c00f7c5965839);
         listSet.removeChildren();
         _dfa25706e58a240c1e33e5c6.profileExtension._d78ec813ab093e3df7589ea2(app.user.username,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3592f1fba617cce6ece0f5c8));
      }
      
      private function _3977c64289fb2c11169dd6ca(param1:MouseEvent) : void
      {
         if(this._a06b166775ce06936ef2e852 + (0x39C2915E ^ -1193565523 ^ 0x0CBF155D ^ -1918490961) <= this._a12d9849d94927a81422947b - 1)
         {
            ++this._a06b166775ce06936ef2e852;
         }
         this._33b0cfcd2aba1246a8d77276();
         this._cfb40ca8241e1f14cd371876();
      }
      
      private function _a25a75bfaf13ac62a430d4bd(param1:MouseEvent) : void
      {
         if(this._a06b166775ce06936ef2e852 - 1 >= (-476183714 ^ -1141631025 ^ -449796218 ^ -1118129385))
         {
            --this._a06b166775ce06936ef2e852;
         }
         this._33b0cfcd2aba1246a8d77276();
         this._cfb40ca8241e1f14cd371876();
      }
      
      private function _415b6f36280c00f7c5965839(param1:MouseEvent) : void
      {
      }
      
      private function _d4cac3e017641c9c11edaea3(param1:FocusEvent) : void
      {
         var _loc2_:int = 0x4D59A5D8 ^ 0x77B3A16F ^ 0x0E0AE925 ^ -1885240140;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1496540430 ^ 0x7ECEC060 ^ 0x3E0749FA ^ 0x5D447A4F))
            {
               case 0:
                  inpFilter.text = "";
                  _loc2_ = 0x54872A43 ^ 0x182BD8C9 ^ -966553948 ^ 0x318E150B;
                  break;
               case 1:
                  stage.focus = inpFilter;
                  if(inpFilter.text.indexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("တဢႽၡဦဍ჻႖ႂრႼ႟Ⴙთ","ၜႰბოშၺၺဲဥႇძဠဪႢႄ჈")) > (0x0818924A ^ -430393615 ^ -1482723355 ^ -1239370591))
                  {
                     _loc2_ = -1203048318 ^ 0x78C65F3B ^ 0x77027525 ^ 0x0CCFB3BB;
                  }
                  else
                  {
                     _loc2_ = 0x0454B5BE ^ -756188915 ^ 0x085BAE11 ^ 0x65A30B87;
                  }
                  break;
               case 2:
                  this._759cb7589d7d3e3b54c9d430();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b193a3b18e8889f1abdd5932(param1:Event) : void
      {
         var _loc2_:int = 0x5826F0F8 ^ -913222007 ^ 0x234E0EEC ^ 0x4E8F33E3;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1722599409 ^ 0x6F36BECB ^ -1124162668 ^ -1225933268))
            {
               case 0:
                  this._7e40b6b9489c777ac5c1d2de = setTimeout(this._759cb7589d7d3e3b54c9d430,0x694B2FCA ^ -1714997702 ^ -1090188829 ^ 0x4F891077);
                  return;
               case 1:
                  clearTimeout(this._7e40b6b9489c777ac5c1d2de);
                  _loc2_ = -158803983 ^ 0x4EE84A54 ^ -701862859 ^ -1841534228;
                  break;
               case 2:
                  if(this._7e40b6b9489c777ac5c1d2de)
                  {
                     _loc2_ = 0x70F75834 ^ -1117852481 ^ -1564115325 ^ -1826991755;
                  }
                  else
                  {
                     _loc2_ = -226363327 ^ 0x159F6A4A ^ -1335376141 ^ -1425027196;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _759cb7589d7d3e3b54c9d430() : void
      {
         var _loc1_:_c8850dfef8e9ca8ba5cbc114 = null;
         var _loc2_:String = inpFilter.text.toLowerCase();
         if(_loc2_.length > (-1332885780 ^ 0x01E38451 ^ -1136652611 ^ 0x0D2E4C00))
         {
            this._a06b166775ce06936ef2e852 = -418998562 ^ 0x4AE58DE0 ^ 0x131640CE ^ -1091216400;
            this._d9009db9e81ef1b573393573.length = 0x6AF02B27 ^ 0x3C2EFE05 ^ 0x0844A26E ^ 0x5E9A774C;
            for each(_loc1_ in this._a580f76f7aa43f5073f03487)
            {
               if(_loc1_.name.toLowerCase().indexOf(_loc2_) > (-1372099668 ^ -1736446290 ^ 0x7C9B77E2 ^ -1255404257))
               {
                  this._d9009db9e81ef1b573393573.push(_loc1_);
               }
            }
         }
         else
         {
            this._d9009db9e81ef1b573393573 = this._a580f76f7aa43f5073f03487.concat();
         }
         this._d9009db9e81ef1b573393573.sort(this._265981fff9f27cfa30686a5e);
         this._33b0cfcd2aba1246a8d77276();
         this._cfb40ca8241e1f14cd371876();
      }
      
      private function _265981fff9f27cfa30686a5e(param1:_c8850dfef8e9ca8ba5cbc114, param2:_c8850dfef8e9ca8ba5cbc114) : int
      {
         if(param1.status && param2.status)
         {
            if(param1.name.toLowerCase() > param2.name.toLowerCase())
            {
               return -559429825 ^ 0x1CE99C60 ^ -1921570989 ^ 0x4F397C0D;
            }
            if(param1.name.toLowerCase() < param2.name.toLowerCase())
            {
               return 0x01B6ADB6 ^ -225258097 ^ 0x1FB85BCB ^ 0x1363DC0D;
            }
            return 0x7174148C ^ -1241410913 ^ -1568154246 ^ 0x65F25B69;
         }
         if(param1.status && !param2.status)
         {
            return -468451996 ^ 0x42AF8B7B ^ -2129943212 ^ -666358604;
         }
         if(!param1.status && param2.status)
         {
            return -463375736 ^ 0x5FBAE816 ^ 0x3A0260EE ^ -2116421007;
         }
         if(param1.name.toLowerCase() > param2.name.toLowerCase())
         {
            return -1860301805 ^ 0x5BDB298B ^ -1799273581 ^ 0x5E04660A;
         }
         if(param1.name.toLowerCase() < param2.name.toLowerCase())
         {
            return 0x06D5CB08 ^ 0x3525AD60 ^ 0x7D6EE9AF ^ -1319014344;
         }
         return 0x5F8B4906 ^ 0x78EA79AF ^ -317430561 ^ -898280330;
      }
      
      private function _3592f1fba617cce6ece0f5c8(param1:ProfileFriendsResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0x6CEBECAF ^ 0x775EF9B7 ^ -1011212913 ^ -670103401;
         var _loc8_:uint = uint(-1941791855 ^ -792707861 ^ -1400350223 ^ -267714933);
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         this._a580f76f7aa43f5073f03487 = new Vector.<Object>(0x71E5CA30 ^ 0x438881A5 ^ -1521350292 ^ -1757461767);
         this._d9009db9e81ef1b573393573 = new Vector.<Object>(-97225445 ^ 0x65BA7C2E ^ 0x157A6EBC ^ -1963694199);
         this._a06b166775ce06936ef2e852 = 0x1B252812 ^ -728845495 ^ -790586361 ^ 0x1F4B075C;
         var _loc12_:Object = JSON.parse(param1.friends);
         if(_loc12_ is Array)
         {
            lblNoFriends.text = "";
            _loc2_ = _loc12_ as Array;
            _loc3_ = 0x1CCF751D ^ 0x058CC8A6 ^ 0x028F5933 ^ 0x1BCCE488;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_].status == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂဋိ႞Ⴉჶႍ႕Ⴆအဓႁჼგပႉ","ႂႳ၄ၑ႞။စჅႪ჉ၐႈႧ၊စႩ");
               _loc5_ = _loc2_[_loc3_].login;
               _loc6_ = _loc2_[_loc3_].lastServer;
               _loc7_ = parseInt(_loc2_[_loc3_].level);
               _loc8_ = parseInt(_loc2_[_loc3_].lastLoginTime);
               _loc9_ = _loc2_[_loc3_].trade == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡ့ာံါჭွဂჄ္კႥႫ႙ၻႺ","჉ၶდၺုုႼဋტဆ်ဧၽဝႵႼ");
               _loc10_ = this._0f2be4690131325339b455fe == app.user.username;
               _loc11_ = this._0f2be4690131325339b455fe == app.user.username;
               this._cca0fac3a9160b92652aaefc(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
               _loc3_++;
            }
            this._d9009db9e81ef1b573393573 = this._a580f76f7aa43f5073f03487.concat();
            this._d9009db9e81ef1b573393573.sort(this._265981fff9f27cfa30686a5e);
            this._33b0cfcd2aba1246a8d77276();
            this._cfb40ca8241e1f14cd371876();
         }
         else
         {
            lblNoFriends.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("労劑勺刌劷功勻剀剤剈刍劣剋勽劦刃勯劗刚剆勬刯刃劾剴刔刓刷勛勊劉剗劁劉劰勓","勰删勂勈别劁剸勝劃勹剚勹剜創勋募"));
         }
      }
      
      private function _cfb40ca8241e1f14cd371876() : void
      {
         lblPages.text = this._a06b166775ce06936ef2e852 + (0x0518F51B ^ 0x6CB9AC3D ^ 0x1D2A4AF5 ^ 0x748B13D2) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挹揖捀振掸捷挿掀揗捷","挹揭揯捲掀掗探捭捇捓掕捘挙捂挠捒") + _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჈ေჍၯჭဵခ႞ၣၝဪၼ","ၞთ၁ဤၿၒႧჇဃဇၑდႊငჁဈ")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捞捩捪揚挷挎挬揝揊掊","捺揮捼掔揁揹揵揇掱捠挺捫揯捗捵捠") + (this._a12d9849d94927a81422947b > (0x37669EB9 ^ -955123656 ^ -1936609493 ^ 0x7CE6C9AA) ? this._a12d9849d94927a81422947b : 0x7340EADE ^ -785577412 ^ -746551941 ^ 0x71ED6598);
         if(this._a06b166775ce06936ef2e852 == (0x04F88AC0 ^ -376209696 ^ 0x6DB86A47 ^ -2133615001))
         {
            btnPreviousPage.disable();
         }
         else
         {
            btnPreviousPage.enable();
         }
         if(this._a12d9849d94927a81422947b == (-457579965 ^ -914433218 ^ 0x50981468 ^ 0x7D5F2D14) || this._a06b166775ce06936ef2e852 + (-2111693574 ^ 0x680AC63B ^ -977990136 ^ 0x2F9DD4C8) == this._a12d9849d94927a81422947b)
         {
            btnNextPage.disable();
         }
         else
         {
            btnNextPage.enable();
         }
      }
      
      private function _33b0cfcd2aba1246a8d77276() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:_b027927f1ffe1b9ec7fd35ff = null;
         var _loc3_:uint = this._a06b166775ce06936ef2e852 * _f8ee5fffddc75bc6c9c28199;
         var _loc4_:uint = _loc3_ + _f8ee5fffddc75bc6c9c28199 > this._d9009db9e81ef1b573393573.length ? this._d9009db9e81ef1b573393573.length : uint(_loc3_ + _f8ee5fffddc75bc6c9c28199);
         var _loc5_:Class = getDefinitionByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴆႊ၍Ⴥႉၑဢ႒ၯၨႭညႴჍၮဇခႨႬဩႃၶဏၗဗၘჍဎဍၾႇ႘჆ၪၵგႡႯ","Ⴄ႕უჇჁၒფ။ဖဘჱღႚိႳၖ")) as Class;
         var _loc6_:Number = this._d9009db9e81ef1b573393573.length / _f8ee5fffddc75bc6c9c28199;
         if(_loc6_ - int(_loc6_) > (-2125178465 ^ 0x7AECE9B6 ^ -2021223707 ^ 0x7C3E22CC))
         {
            this._a12d9849d94927a81422947b = int(_loc6_) + (-109755330 ^ -1726038012 ^ -1437376732 ^ -902243553);
         }
         else
         {
            this._a12d9849d94927a81422947b = int(_loc6_);
         }
         listSet.removeChildren();
         var _loc7_:uint = uint(-899401838 ^ -1140203845 ^ -1640515867 ^ -396730420);
         while(_loc3_ < _loc4_)
         {
            _loc1_ = new _loc5_();
            _loc2_ = new _b027927f1ffe1b9ec7fd35ff(this._d9009db9e81ef1b573393573[_loc3_] as _c8850dfef8e9ca8ba5cbc114,_loc1_);
            _loc1_.y = _loc7_ * (-892717477 ^ -266402691 ^ -1259411026 ^ -1908679762);
            listSet.addChild(_loc1_);
            _loc2_.onDeleteHandler = this._fad42611010ac4ee16139016;
            _loc2_.onTradeHandler = this._599124948028caf0be341545;
            _loc2_._c9aef71caac01218bc064356();
            _loc7_++;
            _loc3_++;
         }
      }
      
      private function _599124948028caf0be341545(param1:_c8850dfef8e9ca8ba5cbc114) : void
      {
         GameSwf.instance.managerTrade._60019a144b136cb1a56690b2(param1.name,_3f231537217a2498942b645b.ETT_PLAYER);
         close();
      }
      
      private function _cca0fac3a9160b92652aaefc(param1:Boolean, param2:String, param3:String, param4:int, param5:uint, param6:Boolean, param7:Boolean, param8:Boolean) : void
      {
         this._a580f76f7aa43f5073f03487.push(new _c8850dfef8e9ca8ba5cbc114(param1,param2,param4,param6,param3,param5,param7,param8));
      }
      
      private function _fad42611010ac4ee16139016(param1:String) : void
      {
         _dfa25706e58a240c1e33e5c6.profileExtension._46a604d2efeef8efc5da45f2(param1,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._340e4408f57e2d3caed2dc59));
      }
      
      private function _340e4408f57e2d3caed2dc59(param1:Object) : void
      {
         _dfa25706e58a240c1e33e5c6.profileExtension._d78ec813ab093e3df7589ea2(app.user.username,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3592f1fba617cce6ece0f5c8));
      }
   }
}

