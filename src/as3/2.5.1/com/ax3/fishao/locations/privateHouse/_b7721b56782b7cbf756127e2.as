package com.ax3.fishao.locations.privateHouse
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._cedbbc6214f1b88b66549120;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.npc._1d9d6706e4ef1124ff985b0c;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.locations.privateHouse.interior.model._ab4ccf9b7110f9feab05f612;
   import com.ax3.fishao.locations.privateHouse.model._2713ec585daceb8ad62e2797;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.features._f49970bf420b737db92228d1;
   import com.junkbyte.console.Cc;
   import protocol.sr.MvUsrToResp;
   import protocol.sr.PrivateHousePondFishResp;
   import protocol.sr.UpdateResp;
   
   public class _b7721b56782b7cbf756127e2 extends _cedbbc6214f1b88b66549120
   {
      
      private var _eb93145095bb20604340850f:String;
      
      private var _0b2d39e80a6321c14d23efee:_1d9d6706e4ef1124ff985b0c;
      
      public var pondFish:Array = [];
      
      private var _0b1b395770ad44e51d2ad1c2:_87a2b64ec17c6fb7cbdd79f4;
      
      private var _015d3ca89d44772cbccc9ca3:_f49970bf420b737db92228d1;
      
      public function _b7721b56782b7cbf756127e2(param1:int)
      {
         super(param1);
         this._015d3ca89d44772cbccc9ca3 = GameSwf.instance.managerFeatures;
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(PrivateHousePondFishResp,this._23c5cab68eecd546486bd3ea);
      }
      
      public static function _504069c79de6f40c22f781b0() : Array
      {
         var _loc1_:int = -470719710 ^ -1392449191 ^ 0x297F27C9 ^ 0x678EADB2;
         var _temp_2:* = _8e13ffc955ce803f9ca06283;
         var _temp_1:* = 0x4E2F3F04 ^ -1954779404 ^ 0x2EA99DBF ^ -335885245;
         var _loc2_:Array = _temp_2._5ce3f4e8aa24a7bd3ffb9787([_temp_1,_temp_1]);
         var _loc3_:int = -1829513819 ^ -43407821 ^ -731482441 ^ -1141111519;
         while(_loc3_ < (0x1065D72D ^ 0x31C5B6FD ^ -2087857199 ^ -1574063603))
         {
            if(_loc3_ == (0x61F9B623 ^ -1905382391 ^ -1043256009 ^ 0x2E46B71E) || _loc3_ == (0x224DE959 ^ 0x4FC06E89 ^ 0x21F23756 ^ 0x4C7FB08F))
            {
               _loc1_ = -575628194 ^ 0x0893C731 ^ -56566959 ^ 0x2983803C;
               while(_loc1_ < (0x7A36FA14 ^ 0x4F71E11C ^ 0x11BE1ECC ^ 0x24F905CE))
               {
                  _loc2_[_loc1_][_loc3_] = _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED;
                  _loc1_++;
               }
            }
            else if(_loc3_ > (0x5A7B6990 ^ 0x55257C38 ^ -897809648 ^ -987588933) && _loc3_ < (0x528FE55A ^ 0x0480ACCF ^ -1905514760 ^ -664572060))
            {
               _loc2_[0x329E15C9 ^ -1742903786 ^ -532869044 ^ 0x4ABE6391][_loc3_] = _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED;
               _loc2_[0x37CEBAFE ^ -202703580 ^ 0x1882F359 ^ -593054582][_loc3_] = _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED;
            }
            else
            {
               _loc2_[-1260176571 ^ -199784695 ^ -14138727 ^ -1076035888][_loc3_] = _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED;
               _loc2_[-127655947 ^ -1790246804 ^ 0x26AB19CC ^ 0x4B840653][_loc3_] = _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function _1cc1dd4be4594fcb554c6422() : Array
      {
         var _temp_2:* = _8e13ffc955ce803f9ca06283;
         var _temp_1:* = -2090621767 ^ -946522060 ^ 0x23D58477 ^ 0x672318F6;
         return _temp_2._5ce3f4e8aa24a7bd3ffb9787([_temp_1,_temp_1]);
      }
      
      public static function _abf5b4e2c9a3c3c456df85e0() : Array
      {
         var _temp_2:* = _8e13ffc955ce803f9ca06283;
         var _temp_1:* = -1734807465 ^ 0x4DDEE65F ^ 0x7C9ECA47 ^ -1445405629;
         return _temp_2._5ce3f4e8aa24a7bd3ffb9787([_temp_1,_temp_1]);
      }
      
      public function _d37c5041e20b55b245fc8af7() : String
      {
         return this._eb93145095bb20604340850f;
      }
      
      public function _b08f0108843ba7e9cd50f5a9(param1:String) : void
      {
         this._eb93145095bb20604340850f = param1;
      }
      
      public function get breederRexNPC() : _1d9d6706e4ef1124ff985b0c
      {
         return this._0b2d39e80a6321c14d23efee;
      }
      
      public function get isOwnHouse() : Boolean
      {
         return this._eb93145095bb20604340850f == app.user.username;
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._0b1b395770ad44e51d2ad1c2 = (dialog as _c24229eda44b942058106fae).locationLayersBase as _87a2b64ec17c6fb7cbdd79f4;
      }
      
      private function _23c5cab68eecd546486bd3ea(param1:PrivateHousePondFishResp) : void
      {
         this.pondFish = JSON.parse(param1.pondFishes) as Array;
         this._6b66eebfa60e655ef2108e62();
      }
      
      override protected function _385ebea194610867f27f43da(param1:MvUsrToResp) : void
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = _9aa9d817a9effb1ee3c32474(param1.login);
         if(Boolean(_loc2_ && _loc2_.fieldChar && !(_loc2_.fieldChar is _c9513c48978d5034cc9ff2f4)) && Boolean(_loc2_.fieldChar.position) && (_loc2_.fieldChar.isOnForceMove || param1.y < _67f8febc099eaa05c48aa41e.PRIVATE_HOUSE_GARDEN_HEIGHT - (-1245833394 ^ 0x21325613 ^ 0x1861EEA0 ^ -1930579988) && _loc2_.fieldChar.roomCurrent != _2713ec585daceb8ad62e2797.EPP_GARDEN))
         {
            return;
         }
         super._385ebea194610867f27f43da(param1);
      }
      
      override protected function _b86e073791e56b2bb6e2315e(param1:String, param2:Object) : _810c4ade948afb64e9c7ee25
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         var _loc4_:_810c4ade948afb64e9c7ee25 = null;
         var _loc5_:Boolean = param1 == _e42949745420bb5a55035b31.ENN_REX;
         if(!this.isOwnHouse && _loc5_)
         {
            return _loc4_;
         }
         _loc4_ = super._b86e073791e56b2bb6e2315e(param1,param2);
         if(_loc5_)
         {
            _loc3_ = _npcMap[param1];
            this._0b2d39e80a6321c14d23efee = _1d9d6706e4ef1124ff985b0c(_loc3_.fieldChar);
         }
         return _loc4_;
      }
      
      override public function _80557ec7c85c6def233bada4() : void
      {
         _1cf0cdd2a2d449dc47167bcb();
         app.char.isFreeze = false;
         _db484614a71f0398bdc80d31();
         _dfa25706e58a240c1e33e5c6.locationExtension._0bcd23177a136eba1c7dbe4f(this._eb93145095bb20604340850f,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb());
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         try
         {
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴏၯ႞ၿႴၮႇჷ့Ⴡჯ჻ၑჍჁူჃჳფၢႸပကႲၴၶ၏ჟ","ၡის၈უၛႲဎთၳ၏ჴჂქႺဇ")))
            {
               this.pondFish = response.getArrayData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒刬剂刉勿劋刎别剝分副前勚勀勹勅初勰勽劷劌剅刬刹勳刖剙创","劁劌列刐劺勓利勴劔勡勽勘劵勍劖勥"));
               this._6b66eebfa60e655ef2108e62();
            }
            super._74c869ae3d29b2df7f677f8a(response);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("動勲劖剞划券刨勛劦勯勌劫剫勋刷剙剒劔劔勻勒勴刵剙剎劢勵勳劣努刜剰剓剶勬勒剞剉刴剐剕劊剗剰勐剧劖刺勹刱勰劝刕務剗剫刜劾剛劏勵剩創剭刬勒刍删刢劥劶劐勼剮刲劒剷剟刄剋剜勆刲劮刬剓剽剅","剥剿勽勊勽剓剒剞創剅劶効剉前刦剞"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("前劓劊列劺劯削划勲剘劐勶勦劙劜剦劏剭劅剠勗勶効勐勦劃勴剪","励務劸劫勭劁劲剨剢剆剺勠勱勂分劈"));
         }
      }
      
      public function _6b66eebfa60e655ef2108e62() : void
      {
         this._0b1b395770ad44e51d2ad1c2._viewBoardFish.tooltipText = this._7820bf0791107ffd85f84e1f();
      }
      
      private function _7820bf0791107ffd85f84e1f() : String
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0x652FBFAE ^ 0x3AF37FBE ^ -2015958115 ^ -670422131;
         var _loc4_:int = -1702965801 ^ -1825368791 ^ -663146754 ^ -785058304;
         if(this.pondFish != null)
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("္სၓဿဩၰပၭჲქဧპာჿაၢႠွჿ၁ၩဲၞხီ჻ၼ႞႑ဃၳღწ჻႔ႁၣဒႦლံე်ზႵ၉ဧၝၺညႽჷႚႵၼၽၞဝჲၥ","ဵ၂Ⴡဴနთზრ်Ⴁ႙ၬႅ႘တႰ")).split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剮切刏刊劕劍勓劘勶刧副劔剷刣剆剚剚勈剩勚劚剣勄刜","劵刑刏创劧勘刂刿勅利勲削剳劦勞剁")).join(this.pondFish.length);
            if(this.isOwnHouse)
            {
               _loc1_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵ჌ჴზဟၞႅ჎ၐတბႣ","ဤႥၵგဵჯშမႸლၫႠႂႾႛქ");
               if(this.pondFish.length == (0x35B9FD75 ^ -1039647028 ^ -1957812699 ^ 0x7CFFE59C))
               {
                  _loc1_ = _loc1_.substr(-1937694571 ^ -343865869 ^ 0x69A7BE8C ^ 0x0EA79BEA,_loc1_.length - (0x40D02F80 ^ -1259908660 ^ -1553637648 ^ 0x575220BE));
               }
               _loc2_ = [];
               _loc3_ = 0x3F61BACB ^ -805371028 ^ -919728495 ^ 0x39B0B736;
               while(_loc3_ < this.pondFish.length)
               {
                  _loc2_[_loc3_] = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掾措掞揽捑揙挌揟捦揞指损捐挠掘控挾揟","揘挴挑揙揳挴掜捩揠挡揓挘揕挡揪挠") + this.pondFish[_loc3_]);
                  _loc3_++;
               }
               _loc2_.sort();
               _loc4_ = -704956819 ^ 0x135341BF ^ 0x7D1FC789 ^ -1145589669;
               while(_loc4_ < this.pondFish.length)
               {
                  _loc1_ += _loc2_[_loc4_];
                  if(_loc4_ < this.pondFish.length - 1)
                  {
                     _loc1_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჲჃဍჁၹი၌ဵႈႯအႢ","ဲႲ၄ჃဍဣჂၔၠ႒გဗႨထႯႏ");
                  }
                  _loc4_++;
               }
            }
            return _loc1_;
         }
         return "";
      }
      
      public function _076c30ed1ae4d50b047c6cf6() : void
      {
         var _loc1_:Boolean = this._015d3ca89d44772cbccc9ca3.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_SECOND_FLOOR);
      }
      
      override public function destroy() : void
      {
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(PrivateHousePondFishResp,this._23c5cab68eecd546486bd3ea);
         super.destroy();
      }
   }
}

