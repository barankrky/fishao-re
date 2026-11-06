package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.model.info._c4d45de32d45523b37ad0cdf;
   import com.ax3.fishao.model.vo._c6fb360a8d529bb15ba382c3;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.MouseEvent;
   import protocol.sr.ErrorResp;
   
   public class _1619f6ed50f25d49b777ab9f extends _e5c44abc2f353546d1147bf1
   {
      
      private var _82d55b46a3a850bddd2a9228:_c6fb360a8d529bb15ba382c3;
      
      public function _1619f6ed50f25d49b777ab9f()
      {
         super();
      }
      
      override protected function buyHandler(param1:_c6fb360a8d529bb15ba382c3) : void
      {
         this._82d55b46a3a850bddd2a9228 = param1;
         amountPanel.okButton.handler = this._2add3cb2a519f8dd0ada8fa0;
         amountPanel.show(param1);
      }
      
      private function _2add3cb2a519f8dd0ada8fa0(param1:MouseEvent) : void
      {
         var _loc2_:_c6fb360a8d529bb15ba382c3 = null;
         var _loc3_:int = amountPanel._f5aac4b01eaed85f442fcab6();
         if(_loc3_ > (0x56D3A89C ^ -1613467752 ^ 0x687809CD ^ -1585459511))
         {
            _loc2_ = _c6fb360a8d529bb15ba382c3(amountPanel.item);
            _dfa25706e58a240c1e33e5c6.sellFishFscExtension._3d2a6d31a485421facc249c3(_loc2_.id,_loc2_.type,_loc3_,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._f7edc0d2fb80ad95f7a7074c));
         }
         _soldItemIndex = list.items.indexOf(this._82d55b46a3a850bddd2a9228);
         amountPanel.hide();
      }
      
      private function _f7edc0d2fb80ad95f7a7074c(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Boolean = param1 is ErrorResp;
         this._1d038ea93790601d27ff67ae();
         _c253fa7e09283fa181e79b00();
         var _loc3_:String = "";
         var _loc4_:_6691abcab801c2433d32324a = app.dialogFactory._5afc77ddaa6019528749a6fb();
         _loc4_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
         _loc4_.closeOnOk = true;
         if(this._82d55b46a3a850bddd2a9228 != null || !_loc2_)
         {
            _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_054_UI_Buy_click);
            _loc3_ = _c2ad9d37d7be0097d6d2e977.template(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႚგ႖ဎႅჄზვၫဦ჉჊႘ဗံျႄ၎ဝშმ჋ჺ့ႁဦႤკ၆ဉჩႷဒၽၒၦမძၟჷႏჄညႸჳჃႸჾအၼ႙ဳၽဣუဳၶჀჺၙဟჄ","ჟ჻ၜႳၺჂ၀ტკ႘ႮရၓုႥ၂"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႎၠ჻ღႨႨဗႴყၗၱჷဳၠူၑ","჎ႦႦႴဘန၎ႪၦဃႵၢၒჟ၊჋")):this._82d55b46a3a850bddd2a9228.title});
         }
         else
         {
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振揌捥掶捉揨挤揔捎掎揜捓揌捩挀捦掔揲掵揇挑捨换揙掭捙捌捦捤挱援掫挜挭挪揳揓掭掽捀捉掯揇捷揪排捺捏握揱揾掅挥捬挤揈揼捰捋挸挼捜掯捞","揶掺換捝掾揳挶挒掫挳挚挔掍挡捥捝"));
         }
         _loc4_._4b5d5535760fe8919ccfbd43(_loc3_,false);
         _loc4_.show();
         var _temp_3:* = _loc4_;
         var _temp_2:* = -123063049 ^ 0x29024AFF ^ -722044088 ^ 0x055E0540;
         _temp_3.centerToRect(_temp_2,_temp_2,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
      }
      
      private function _1d038ea93790601d27ff67ae() : void
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_c6fb360a8d529bb15ba382c3 = null;
         var _loc3_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.fish;
         var _loc4_:Vector.<_c6fb360a8d529bb15ba382c3> = new Vector.<_c6fb360a8d529bb15ba382c3>();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.quantity == (-475706078 ^ -962435197 ^ 0x1C21A0ED ^ 0x39268A4C) || !(_loc1_.type == _67282af25befe9778e5c8dd1.FISH.id || _loc1_.type == _67282af25befe9778e5c8dd1.FISH_SHINY.id)))
            {
               _loc2_ = new _c6fb360a8d529bb15ba382c3();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _loc1_.type;
               _loc2_.amount = _loc1_.quantity;
               _loc2_.title = _c2ad9d37d7be0097d6d2e977.get(_67282af25befe9778e5c8dd1.FISH.name + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წკွ၄ဘჭ႖ყငၳ","ჰბွ჎၆ၲၨ჉လႹၤၻ႞ჲვႳ") + _loc1_.id);
               if(_loc1_.type == _67282af25befe9778e5c8dd1.FISH_SHINY.id)
               {
                  _loc2_.title += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掘捭捝掟挜挡挑挞捜捿持指","揥挾捭接掵挴捼掛捧揘援挱排挕捶揦") + _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧၚီဎႦနႚထတၧၕ႘ჍႬ၏ႜူိစჷ၅ႄႚၧၙ၎ၔ჏ჸჿးႵညျငဘ","ႂၝၾგძဩႽဨ჋ဿႿၤ႕ၶ်჉")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措挄揢挰掣掻掝挘捖掴","掃捝掯捽揘揻捷措挿捘捽掕揊捥掅捤");
               }
               _loc2_.fishImageUrl = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼刑刜勔劣勅刴刮剴刬勊剘勽勔势刯刚刖勩勂剈劚勳劼刉劯刡動剩励刞劈劕办剺勂劬勷勫勣剈勶剎别","劲剙勂勇劫剘剺务剕剱刳刀刳刱劤剓") + _loc1_.id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剓劕勰勋劽划剫刲劐刔勱刽剷勘劧功勢刕勈剡勐劂劅刘剀刺","勡剽勿劮剤劽劑力劶劏刍剹劭劚剃割"));
               _loc2_.worth = _loc1_.worth;
               _loc4_.push(_loc2_);
            }
         }
         items = _loc4_;
         if(items.length == (-1842689132 ^ -368268133 ^ -1778096685 ^ -299760932))
         {
            this.close();
         }
      }
      
      override public function show() : void
      {
         super.show();
         this._1d038ea93790601d27ff67ae();
      }
      
      override public function close() : void
      {
         GameSwf.currentLocationDialog._9a62ebd0db0249ee0917d4c7();
         GameSwf.instance.tradeDialog = null;
         super.close();
      }
   }
}

