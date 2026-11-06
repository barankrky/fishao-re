package com.ax3.fishao.model.profile.inventoryPanelData
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.info._3aaebb69caa0055ca844b9f3;
   import com.ax3.fishao.model.profile._5b25b89cb3368976ba33f1ea;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import protocol.sr.profile.ProfileInventoryResp;
   
   public class _72a5694e3d55896612e21a2b extends _5b25b89cb3368976ba33f1ea
   {
      
      public var itemsList:Vector.<Object>;
      
      public var typesNamesList:Vector.<String>;
      
      private var _99bf3b682c345b212da5f78d:Object;
      
      public function _72a5694e3d55896612e21a2b()
      {
         super();
         this.itemsList = new Vector.<Object>(0x204444DE ^ 0x2AE67C01 ^ 0x46FA9094 ^ 0x4C58A84B);
         this.typesNamesList = new <String>[_c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚揚掱挌掞掣捣揗捬掁捯掏揝揿","捽捰揄掔挙掿揓捔揱挸捩挾捿掺揾掊")),_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭挑掽排掂揢捚揌掓挞挩挍挟捽揮挋","揎揪揚持掯捲捚挻挽掇揎捀揤挻掕揀")),_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓剋刲剆劗剮勫勛勯剙勘劾勣勏劵則","劫勃剋劢劥刀勖剝勠勛剻劵列剁勶勠")),_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ေညဲၬ။ტခႃშႹႍၝသဣႷბငႻჱ၌","ႝ႕၈ွၑჭჅဎჅ့႑ჵဇတႌე")),_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勼劀剽劇劈勹到勸剠刏剪劎劬剻劝别勑劉勭劺勿剽勩刑删动剎勤効劜","剝劦刨劬効剃勯剽刐剕劸剞劰刊剭勝")),_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈勠劮刚勶勹劒初劝剜剤刮剈則劮初劲効","勿劗勍剆初勹勮劝勜劉劇劬刼削勞勼")),_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募勸勋刘刿勂勊刏剗创劌剆勢勫勾刼剬剧","剷劘刵剤勎劬劵勰勣劾剟力刼剛劢剿"))];
         this._99bf3b682c345b212da5f78d = {};
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劝剔勤勄创剉劻刞剻剡刺劗剧則勀刄","刳剞勻劔劲勜剢劦剫剁刧剃刮刀剘刧"))] = _67282af25befe9778e5c8dd1.ROD.id;
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挼挼捩掆挛指挢掾掱挹捪挲掝捐揁捙","挀挚挂捭捂控挝捃挗挗捝捙挭挤捉损"))] = _67282af25befe9778e5c8dd1.BAIT.id;
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剡勖剰勊剰划刌剚勯剆勜劐勱剷勥募労剻","劲勃剖劤務剢功刂勓剶剢劥努勏刉勝"))] = _67282af25befe9778e5c8dd1.OTHER.id;
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刾剌到勡别剚则刵划劢办刾勹勠勾劊劢剷","劳剀刕勠劰劧刾刏刈剰剌剧刱劾动刅"))] = _67282af25befe9778e5c8dd1.CLOTHE.id;
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺捏捩捜掫掗挫挞捂捾挍揋掾授揮掻掘排挋採","揟掟挿挋掯捨捝掙掶挔揣捠捘掃挣揇"))] = _67282af25befe9778e5c8dd1.FISH.id;
         this._99bf3b682c345b212da5f78d[_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳၟႄႝႚ၈ဉၰၙဇჰ၊ဤႵႌွ်ုၶါႤ჈ါံ႒ဦ၉ဴရႰ","ძჇဩფၣႵဴჵჵც႗ႩშးჅႁ"))] = _67282af25befe9778e5c8dd1.DECORATION.id;
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.itemsList = new Vector.<Object>(0x06604B70 ^ -1108477096 ^ -933785384 ^ 0x73DA20F0);
         super.load(param1,param2);
         _dfa25706e58a240c1e33e5c6.profileExtension._d6dc6652dfcd292e55a1d008(_login,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._f14a18223182720ca67dda4b));
      }
      
      public function _69ae2bbec37739b97c563a4a(param1:String) : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = new Vector.<Object>(0x1B9B330B ^ 0x29AC610E ^ -684565724 ^ -452654815);
         var _loc3_:Boolean = this._99bf3b682c345b212da5f78d[param1] == null;
         var _loc4_:Number = -1841012445 ^ 0x5CF06024 ^ 0x6BB479AE ^ -1526695767;
         while(_loc4_ < this.itemsList.length)
         {
            if(_loc3_ || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == this._99bf3b682c345b212da5f78d[param1] || this._99bf3b682c345b212da5f78d[param1] == _67282af25befe9778e5c8dd1.OTHER.id && (_3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.OTHER.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.FISHBOX.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.LUCK_POTION.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.FISH_RADAR.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.EXP_BOOSTER.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.SHINY_POTION.id || _3aaebb69caa0055ca844b9f3(this.itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.POWER_BOOSTER.id || _3aaebb69caa0055ca844b9f3(this
            .itemsList[_loc4_]).type == _67282af25befe9778e5c8dd1.FLOAT.id))
            {
               _loc2_.push(this.itemsList[_loc4_]);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function _f14a18223182720ca67dda4b(param1:ProfileInventoryResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0x3AE37888 ^ 0x78660A37 ^ -1165616426 ^ -133994391;
         var _loc6_:int = -1159025311 ^ -1140671395 ^ -1216903762 ^ -1314941806;
         var _loc7_:int = -391300605 ^ 0x12495763 ^ 0x5D0254E4 ^ -1478084220;
         this.itemsList = new Vector.<Object>(-1939952636 ^ 0x0F3D115B ^ 0x5531A5B2 ^ -699262739);
         if(param1.inventory)
         {
            _loc2_ = JSON.parse(param1.inventory);
            if(_loc2_ is Array)
            {
               _loc3_ = _loc2_ as Array;
               _loc4_ = -229893618 ^ 0x5D40D7C1 ^ -928480134 ^ 0x67A449B5;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = int(_loc3_[_loc4_].resourceId);
                  _loc6_ = int(_loc3_[_loc4_].resourceType);
                  _loc7_ = int(_loc3_[_loc4_].qualityLeft);
                  this._e3391619b24b03801e803eb1(_loc5_,_loc6_,_loc7_,-1067798758 ^ 0x172F1329 ^ 0x535D194F ^ -2077710980);
                  _loc4_++;
               }
            }
         }
         _callback();
      }
      
      private function _e3391619b24b03801e803eb1(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.itemsList.push(_3aaebb69caa0055ca844b9f3._92fe2acd593846a5c8ee986f(param2,param1,param3,param4));
      }
   }
}

