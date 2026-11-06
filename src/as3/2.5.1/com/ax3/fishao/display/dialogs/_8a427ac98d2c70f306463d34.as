package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model._5c61816df588994ab1b4dbe4;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model._b36cda25dcea2f0c0dfacd2c;
   import com.ax3.fishao.model.info._c4d45de32d45523b37ad0cdf;
   import com.ax3.fishao.model.vo._4570af2a509c6469de588ba4;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.features._f49970bf420b737db92228d1;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.empty;
   import flash.events.Event;
   import protocol.sr.BuyResourceErrorResp;
   import protocol.sr.GetDataResp;
   
   public class _8a427ac98d2c70f306463d34 extends _eaf1c366e9817b3f7cf20d19
   {
      
      private var _4e0be0eea39496d83eba22e9:_f49970bf420b737db92228d1;
      
      public function _8a427ac98d2c70f306463d34()
      {
         super();
      }
      
      private static function _b018d385ddff6b4d684cdbd9(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:int = -1905218981 ^ 0x28AA5B31 ^ -1974924661 ^ 0x2C93FBE1;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type.id == _67282af25befe9778e5c8dd1.SHINY_POTION.id && !GameSwf.instance.managerFeatures.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_SHINY_FISH))
            {
               param1.splice(_loc3_,0x24B0AF94 ^ -486860207 ^ 0x310ED146 ^ -146447230);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function _7f2d45246484a0a1eec4d6b0(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:int = 0x03D49D6B ^ 0x5248FCD3 ^ 0x7A0EFADF ^ 0x2B929B67;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == _67282af25befe9778e5c8dd1.CLOTHE && _loc2_.id == (-1640236915 ^ 0x46755BA5 ^ 0x273D566F ^ -9177924))
            {
               param1.splice(_loc3_,0x6E9C3FD4 ^ -1499075202 ^ 0x39BE1407 ^ -242760020);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function _175735f3d0dbaec00c2d5842(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:int = -1014670682 ^ 0x069D7DF3 ^ -1372384589 ^ 0x6B2B35E6;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == _67282af25befe9778e5c8dd1.BAIT && _loc2_.id == (-846475674 ^ -474434818 ^ 0x7F1AE995 ^ 0x51299520) && !GameSwf.instance.managerFeatures.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_LOCATION_TREE_CAVE))
            {
               param1.splice(_loc3_,-1436408678 ^ -163470102 ^ 0x4BA81AC5 ^ 0x178B9AB4);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function _0585dac9cf49038da385f561(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:int = 0x3E226411 ^ -568695811 ^ 0x0BA1F7BD ^ -342233007;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == _67282af25befe9778e5c8dd1.BAIT && (_loc2_.id == (0x25614FAF ^ -1524379352 ^ -2115604193 ^ 0x01A4EFA9) || _loc2_.id == (-129149974 ^ 0x582D4A12 ^ 0x5508A8EA ^ -177688288) || _loc2_.id == (0x571967A1 ^ -1532627912 ^ 0x629546C0 ^ -1859529366) || _loc2_.id == (-2083494332 ^ 0x747F1C1B ^ 0x67EBC323 ^ -1874544312)))
            {
               param1.splice(_loc3_,-1758098934 ^ -847938202 ^ 0x46F7805B ^ 0x1CB77736);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function _f299f1e8d095bbbc36221c4a(param1:int) : String
      {
         var _loc2_:int = 0x34628FC6 ^ 0x5CE9F47B ^ 0x7416F7CB ^ -1012833452;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3ACF4D4A ^ 0x4D497580 ^ 0x5C83D7FB ^ -197591021))
            {
               case 0:
                  if(param1 > (0x2EBF7524 ^ 0x124C824E ^ 0x4CAC5512 ^ 0x705FA278))
                  {
                     _loc2_ = 0x28A51935 ^ 0x5A4172A8 ^ 0x2DB32142 ^ -2140428801;
                  }
                  else
                  {
                     _loc2_ = -1311194332 ^ 0x0725904A ^ 0x7CCA3D7B ^ 0x150B8136;
                  }
                  break;
               case 1:
                  return _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱剘劔刢剐刂剣劚剼剺劭勅勾刁劾勪剡勥勮劬刍劺勇刓劅剸初刬劋勖効労刋刴勩助剴勠剮刽功劤刴剏","剝剨刃剙勂剞劁勯删剪剓勖刪勣刓勩"));
               case 2:
                  return String(param1);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _397fc3a864fc0302e470d150(param1:_5e1bab759fcaea6d1f84faa7 = null) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = null;
         if(param1 is BuyResourceErrorResp)
         {
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刯剛到剛劐劚剼刻勯剔刕劌勲劵勤切剎別剆勑劦劭劌勄办勏創剘勭勜刺別剧剀","刓劁剐刵剴劁剹剐勃初動削剒助募剙")));
            _loc2_.show();
            this._c6dfee25a681a215bb8668ed();
         }
         else
         {
            this._c6dfee25a681a215bb8668ed();
         }
      }
      
      private function _e22a1aa87289cdbadd1f69b7(param1:GetDataResp) : void
      {
         var _loc2_:int = -261615774 ^ 0x794538CF ^ 0x0DEA7DCD ^ -2067314080;
         var _loc3_:Vector.<_4570af2a509c6469de588ba4> = null;
         var _loc4_:_4570af2a509c6469de588ba4 = null;
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦刵劮勤刏劝勈剙劆勣勇勶劅劉劺剹勈勘励劺勔券办剣剐別刉刢劔刘勮勅勉劏初勳勋剓劝剦列劙剼剨剄剩勼剻剩勯","刅劯剭刯刍刓剌剓努剧前副则勧剓刁")))
         {
            _loc2_ = parseInt(param1.data.amountOfRodsToBuyLeft);
            _loc3_ = _10e702843f372f16c578cdaa();
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.id == _b36cda25dcea2f0c0dfacd2c.FISHAO_ROD_ID)
               {
                  _loc4_.amount = _loc2_;
                  _loc4_.description = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢勣勁勺募剣剼刼勴刓剷剒勾勐刂刻劀勷剟剋刜勲勥助勠刾","勐劆剋剚勊剫勴刯劏利創勐勖勮刴勉") + _loc4_.id,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勉勗劬剴刔刣劍刻剪勾剧到創動劙划勉勛別剛","励剧勏剐劾剀刄勓劺劥募劶劄刴刃制")):_loc4_.amount});
               }
            }
            if(tabs != null && tabs.currentTab == TAB_ID_RODS)
            {
               list._6d5360dc76898e470b88eb2e();
            }
         }
      }
      
      override public function show() : void
      {
         tabChildren = false;
         super.show();
         this._4e0be0eea39496d83eba22e9 = GameSwf.instance.managerFeatures;
         this._9e1811b9a972a44e89bed9e4();
         this._f483755c7d6a73bee362a74d();
         this._dee06a3b86fa4346b5562149();
      }
      
      protected function _9e1811b9a972a44e89bed9e4() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Vector.<Object> = app.rodsDict.getAll();
         var _loc5_:Vector.<_4570af2a509c6469de588ba4> = new Vector.<_4570af2a509c6469de588ba4>();
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.price_fishcoins > (-1237475025 ^ 0x21A3FDCC ^ -1325330770 ^ 0x269F524D) && _loc1_.appear_in_shop == (0x2AE483B6 ^ -96495058 ^ -1238077578 ^ 0x66EF76EF))
            {
               _loc2_ = new _4570af2a509c6469de588ba4();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.ROD;
               _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掰挞捙捻捤揨捨挑換捳挅捆掛挤揅揗","揩掗揭挠挸掽揀挐掍揋揈掹掬授提掔") + _loc1_.id);
               _loc2_.description = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制勭劙剶制劶剖剼劵勈剥刕勻剬刍剳初劤勾劚剟効勖剴刭刀","剂勬勴勾勝勐剈励勓劍剔勬副勻勵勃") + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.param1 = _c2ad9d37d7be0097d6d2e977.get(_b36cda25dcea2f0c0dfacd2c._6afdbb0897d13bba750a785b(_loc1_.length));
               _loc2_.param2 = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc1_.quality_power);
               _loc2_.param3 = _f299f1e8d095bbbc36221c4a(_loc1_.quality_duration);
               _loc2_.amount = -1716271876 ^ -1859038784 ^ -341593972 ^ 0x1CDEDA4F;
               _loc3_ = parseInt(_loc1_.player_level_req);
               _loc2_.playerLevelReq = _loc3_;
               if(_loc3_ > app.user.level)
               {
                  _loc2_.blockReason = _c2ad9d37d7be0097d6d2e977.template(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揇挑捴揺掾掲捎挖捻提掿挌揔挬捰捽捸挙掶掁捶揰挤捥揁掅挣挩捠捹","掣掋挑掴捆挳捀挓捇揝掱控捸挏揷掲"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤揝挹捠捐措捁捊掽挱挧换捰掌捘挙掆揇","揙捄挂捎揔揼揈揆描捐捑捨挝换挍捫")):_loc3_});
               }
               if(_loc1_.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("势劓剟勰办则剼助勴删劮剌勀勧则剌勲刯劀副","劇剛剄劀剄切刷剀勽剰务剟劯制勲剭")) && !empty(_loc1_.colors))
               {
                  _loc2_.colors = _91aad973ddd3030366bf3e1f._a29bf4f8a421055fadc062e4(_loc1_.colors);
               }
               _loc2_.imageUrl = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.ROD.name,_loc2_.id));
               _loc5_.push(_loc2_);
            }
         }
         _loc5_.sort(_4570af2a509c6469de588ba4._31249d24d327d467b3b29cd3);
         _0295e548f2c52738caf51390(_loc5_);
      }
      
      protected function _f483755c7d6a73bee362a74d() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Vector.<Object> = app.baitsDict.getAll();
         var _loc5_:Vector.<_4570af2a509c6469de588ba4> = new Vector.<_4570af2a509c6469de588ba4>();
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.price_fishcoins > (0x1BC45209 ^ -350512768 ^ -1856964881 ^ 0x618F3D66))
            {
               _loc2_ = new _4570af2a509c6469de588ba4();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.BAIT;
               _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲挫揇挜掻挶挷掊挴捡揞掍掇掴揿掬掓捎","揸掓挑挕揚揸揪揄掆掇掍挗挪挓揨损") + _loc1_.id);
               _loc2_.description = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸揟挹掄揫掹捬挾揧挨掳揸按揟捔掞捻揭揅掴掔捕挗挍捸揞揼捘","捷捳捽挍挸捿挡挒描捐挜捭捅捐换挧") + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.param1 = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝掻挊捜捕挽揁探挒挵持掇捾揋挴揝揞捑捭捽揰揭挴捡掞捗捵揟挕控捋掀捋挩挲捤","提插捵挟挿掰揅挴揲捊捴挛挓挄揑掰") + _loc1_.category);
               _loc2_.param2 = _f299f1e8d095bbbc36221c4a(_loc1_.quality_duration);
               _loc2_.param3 = null;
               _loc3_ = parseInt(_loc1_.player_level_req);
               _loc2_.playerLevelReq = _loc3_;
               if(_loc3_ > app.user.level)
               {
                  _loc2_.blockReason = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒劧劎刲劽勭刷勨判劲列刎劻劆剓剏劇剼刮剭剥刷劌割剓勛券刄刏劏","判勋効劯剙刅剐助劄剪勭剋劫劂剩刃"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勃刖劝刷劊勣剓副勏勷刓刁剢勾勛刓刋勯","功勽劇刳勯劔勰剃労務刻剡刳劅勍劥")):_loc3_});
               }
               _loc2_.imageUrl = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.BAIT.name,_loc2_.id));
               _loc5_.push(_loc2_);
            }
         }
         _loc5_ = _175735f3d0dbaec00c2d5842(_loc5_);
         _loc5_ = this._3ecbf77b45624855adb89a59(_loc5_);
         _loc5_ = _0585dac9cf49038da385f561(_loc5_);
         _loc5_.sort(_4570af2a509c6469de588ba4._31249d24d327d467b3b29cd3);
         _d99237f25a85e17e1e39e298(_loc5_);
      }
      
      protected function _dee06a3b86fa4346b5562149() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Vector.<Object> = app.resourcesDict.getAll();
         var _loc7_:Vector.<Object> = app.looksDict.getAll();
         var _loc8_:Vector.<Object> = app.extraFloatsDict.getAll();
         var _loc9_:Vector.<Object> = _loc6_.concat(_loc7_).concat(_loc8_);
         var _loc10_:Vector.<_4570af2a509c6469de588ba4> = new Vector.<_4570af2a509c6469de588ba4>();
         for each(_loc1_ in _loc9_)
         {
            if(_loc1_.price_fishcoins > (0x5FA87D70 ^ 0x1EAC101D ^ 0x0F367AE1 ^ 0x4E32178C))
            {
               _loc2_ = new _4570af2a509c6469de588ba4();
               if(_loc1_.type_id == null)
               {
                  if(_loc1_.param == null)
                  {
                     _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剽剿削刘劚勷剠剣剉勘効刏劕剛刾刨劯刋刀劌","劎劚勜劄制刘努劸剳剭募削剧募勑刖") + _loc1_.id);
                     _loc1_.type_id = _67282af25befe9778e5c8dd1.FLOAT.id;
                  }
                  else
                  {
                     _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劑創勗勇剟剦动剗剧划刷勥剻劰剑劕労勎刲勔","劉勮勤劇刡刼劵勂剂刓剺劅刱勵劈劺") + _loc1_.id);
                     _loc1_.type_id = _67282af25befe9778e5c8dd1.CLOTHE.id;
                  }
               }
               else
               {
                  _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("插捸掆挘挃挲挏挝挂掸描掱援掰揄揥揝捧掙揿","捁援掠揬掷揶掘揁掘挨挶挜捠挃揨揦") + _loc1_.id);
               }
               _loc2_.id = _loc1_.id;
               _loc3_ = {};
               if(_loc1_.param != null && String(_loc1_.param) != "")
               {
                  _loc3_ = JSON.parse(String(_loc1_.param));
               }
               _loc4_ = {};
               if(_loc1_.req != null && _loc1_.req != "")
               {
                  _loc4_ = JSON.parse(String(_loc1_.req));
                  if(_loc4_.player_level_req != null)
                  {
                     _loc5_ = parseInt(_loc4_.player_level_req);
                     _loc2_.playerLevelReq = _loc5_;
                     if(_loc5_ > app.user.level)
                     {
                        _loc2_.blockReason = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("功刌勍劼助则剠剢刉剩劶勢勃剝劶勆勆劐刊劤勫勍勸刏剣办劺剽勔勦","刎剤剡列划劂剻剬劺剈劶剡助剩削則"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挠掣掷揌换掵掶揜推挡捱捸挾揟挧捌挻揊","挭揳挈挛提挊掯揖挟掿捩掸揳探掋挔")):_loc5_});
                     }
                  }
               }
               if(_loc1_.type_id == _67282af25befe9778e5c8dd1.FISH_RADAR.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.FISH_RADAR;
                  _loc2_.param1 = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁切务勂勇動劙刓剴劳刧勇劍勆剺刼勋努勨券劜剂剂刎劦勶制刢劉别勀剳剠勢勅办劵勻劬劣剷勺刑勅劔办","劺刷勔劕刚創劝别刉剔劝剎刲劎勢刞") + _loc3_.accuracy);
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.LUCK_POTION.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.LUCK_POTION;
                  _loc2_.param1 = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၃ယჩ႗ႀၫည႒ღჷႃთჿჱჟუၡ჎ါၛჿၑႋ჏ီၕ჋ၯ၄ဆႥထုၢေჯၺဿჍငၜ჌Ⴄ၍ထႇႩၱၢႮဘၖႶဘ","၈ჿჿၠ၍ხညმၥႂუဲႱნჀპ") + _loc3_.desc_type);
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.MAGIC_WATCH;
                  _loc2_.param1 = _loc3_.percent + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჅၚဂျႊუგჸႼႁ","ძၯဤဠႝဦჅჅည჉ႧႬ၈Ⴞ႒ွ");
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.EXP_BOOSTER.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.EXP_BOOSTER;
                  _loc2_.param1 = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺჷჺဉႏဏႵၸჭ၊","ოၚჼსဉၥနၷွჹဘჼႅႛႥჁ") + _loc3_.exp_multiple;
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.SHINY_POTION.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.SHINY_POTION;
                  _loc2_.param1 = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸი႞ညჅၵოზၝထ","ၒၔဒဉာၿჍ႙ထၖႵႎ၊ဆ၉ၔ") + _loc3_.chance_multiply;
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.POWER_BOOSTER.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.POWER_BOOSTER;
                  _loc2_.param1 = (_loc3_.power_multiply - 1) * (-1317400242 ^ -940934608 ^ -1282613399 ^ -987974541) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽挙揦挼掵揦揳掻捻掷","揢捅掕挆掸掵揧掗捄揕揃掍捚捣掺揾");
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == _67282af25befe9778e5c8dd1.CLOTHE.id)
               {
                  _loc2_.type = _67282af25befe9778e5c8dd1.CLOTHE;
                  _loc2_.param1 = null;
                  _loc2_.param2 = null;
                  _loc2_.param3 = null;
               }
               else
               {
                  if(_loc1_.type_id != _67282af25befe9778e5c8dd1.FLOAT.id)
                  {
                     continue;
                  }
                  _loc2_.type = _67282af25befe9778e5c8dd1.FLOAT;
                  _loc2_.param1 = null;
                  _loc2_.param2 = null;
                  _loc2_.param3 = null;
               }
               _loc2_.name = _c2ad9d37d7be0097d6d2e977.get(_loc2_.type.name + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭოႢၗჍ္ႧწၑႬ","ၐჀღნၱ၈့ჇႄႄჯႤ჏ဌဏჷ") + _loc2_.id);
               _loc2_.description = _c2ad9d37d7be0097d6d2e977.get(_loc2_.type.name + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჲ။၇ႜშ၁ძ၁ဆჾႣჭႍည၌ႍნၪေႏ","჌ႌၽဏႊဵေၳၻီႹတჄႊဳၚ") + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.imageUrl = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_loc2_.type.name,_loc2_.id));
               _loc10_.push(_loc2_);
            }
         }
         _loc10_ = _b018d385ddff6b4d684cdbd9(_loc10_);
         _loc10_ = _7f2d45246484a0a1eec4d6b0(_loc10_);
         _loc10_.sort(_4570af2a509c6469de588ba4._31249d24d327d467b3b29cd3);
         _98f8153eef734032a0b78ea7(_loc10_);
      }
      
      private function _0fdc9706964e97ed4c0c9aa6(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:int = -1524795389 ^ 0x70EDD74C ^ 0x4179B6BF ^ -1802954256;
         var _loc4_:_c4d45de32d45523b37ad0cdf = null;
         var _loc5_:Vector.<_4570af2a509c6469de588ba4> = new Vector.<_4570af2a509c6469de588ba4>(-965189466 ^ -1973741352 ^ -121699390 ^ -1264813124);
         var _loc6_:_5c61816df588994ab1b4dbe4 = app.user.inventory;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.id;
            var _loc9_:_67282af25befe9778e5c8dd1 = _loc2_.type;
            switch(_67282af25befe9778e5c8dd1.CLOTHE === _loc9_ ? -886394716 ^ 0xEBBC9D ^ -1765429276 ^ 0x5D04A3DD : (_67282af25befe9778e5c8dd1.FLOAT === _loc9_ ? -633217064 ^ 0x46901E89 ^ -576450834 ^ 0x4175CFBE : (_67282af25befe9778e5c8dd1.ROD === _loc9_ ? -1777488053 ^ -2049960680 ^ 0x130389DA ^ 0xDE338B : (_67282af25befe9778e5c8dd1.BAIT === _loc9_ ? 0x3F7E7615 ^ -1494157353 ^ 0x44A30B24 ^ -584217883 : 0x5A044AC7 ^ -1016510206 ^ -96542152 ^ 0x6353E1F9))))
            {
               case 0:
               case 1:
                  _loc4_ = _loc6_._f994fb3e7bb1cf109d5d4fb8(_loc2_.id,_loc2_.type.id);
                  if(_loc4_ == null)
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               case 2:
                  if(_loc3_ == _a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_FISHAO)
                  {
                     if(!_loc6_._88040a71c9259bc9709481fd(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_FISHAO))
                     {
                        _loc5_.push(_loc2_);
                     }
                  }
                  else
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               case 3:
                  if(_loc3_ == _a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_STAR_LURE || _loc3_ == _a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_MONKFISH_LURE || _loc3_ == _a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_PELICAN_LURE)
                  {
                     if(!_loc6_._d7d791b553eda20fa3fef4f5(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_FISHAO))
                     {
                        _loc5_.push(_loc2_);
                     }
                  }
                  else
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               default:
                  _loc5_.push(_loc2_);
            }
         }
         return _loc5_;
      }
      
      override protected function buyHandler(param1:_4570af2a509c6469de588ba4, param2:int) : void
      {
         var _loc3_:String = null;
         super.buyHandler(param1,param2);
         if(param1.selectedColor != null)
         {
            _loc3_ = param1.selectedColor.name;
         }
         if(param2 == _67282af25befe9778e5c8dd1.FISHCOINS.id)
         {
            if(app.user.fishcoins >= param1.priceFishcoins)
            {
               _dfa25706e58a240c1e33e5c6.paymentExtension._68476dd870159e6d13f9ed50(param1.type.id,param1.id,param2,_loc3_,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._397fc3a864fc0302e470d150));
            }
            else
            {
               GameSwf.instance._e6f0a7b005cacf7751286e97();
            }
         }
         else if(param2 == _67282af25befe9778e5c8dd1.FISHBUCKS.id)
         {
            if(app.user.fishbucks >= param1.priceFishbucks)
            {
               _dfa25706e58a240c1e33e5c6.paymentExtension._68476dd870159e6d13f9ed50(param1.type.id,param1.id,param2,_loc3_,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._397fc3a864fc0302e470d150));
            }
            else
            {
               GameSwf.instance._cb81036d0354ae254b0556b1();
            }
         }
      }
      
      private function _3ecbf77b45624855adb89a59(param1:Vector.<_4570af2a509c6469de588ba4>) : Vector.<_4570af2a509c6469de588ba4>
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.type == _67282af25befe9778e5c8dd1.BAIT && (_loc2_.id == (-1841691611 ^ 0x7800C0FB ^ 0x6A6DBD68 ^ -2141750888) || _loc2_.id == (-323461195 ^ -1414352355 ^ -1460145121 ^ -268625512) || _loc2_.id == (-1404547942 ^ -174243502 ^ 0x6E566BFC ^ 0x37836604)) && !this._4e0be0eea39496d83eba22e9.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_LOCATION_PIRATE_CAVE))
            {
               _loc2_.blockReason = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_BLOCK_REASON_PIRATE_CAVE);
            }
         }
         return param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         app.user._c2cb288bf8bd6f749d06eb93(this._b23899280734717381bf610c);
         app.user._b4cae3abe96a2089ccbc80fc(this._b23899280734717381bf610c);
         this._b23899280734717381bf610c();
         this._c6dfee25a681a215bb8668ed();
      }
      
      private function _c6dfee25a681a215bb8668ed() : void
      {
         _dfa25706e58a240c1e33e5c6.paymentExtension._9b229cc5d6fc047631849e2e(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._e22a1aa87289cdbadd1f69b7));
      }
      
      private function _b23899280734717381bf610c(param1:Event = null) : void
      {
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         app.user._c9d56ed8e8557c55b8235f4f(this._b23899280734717381bf610c);
         app.user._8577097c0ec141ab849ff3ae(this._b23899280734717381bf610c);
      }
   }
}

