package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._9e3f9276aaf5cba0766361f2;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.mediators._458f27be309c3864556e3018;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import flash.events.MouseEvent;
   
   public class _4fc3571d6b736c387c8f6b79 extends _fd000bf0462a2592c042c058
   {
      
      private var _15b718b77a01d356ad46e199:Object;
      
      public function _4fc3571d6b736c387c8f6b79()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         okButton.handler = this._7fef1941dbd802af560fdfa5;
         shareButton.visible = false;
         okButton.x = bg.width / (-229737910 ^ 0x7B8250B2 ^ -2089010105 ^ 0x0AB016BD) - okButton.width / (-675282877 ^ 0x31098AA2 ^ 0x4391EF43 ^ -1520933472);
         labelShareProgress.visible = false;
         checkShareProgress.visible = false;
         checkShareProgress.state = _89027603939c39853027fd04.UNSELECTED;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _7fef1941dbd802af560fdfa5(param1:MouseEvent) : void
      {
         if(app.user.oldLevel < (0x8ECAFE ^ -1182957539 ^ 0x62DC7894 ^ -617663884) && app.user.level >= (-1454896178 ^ 0x4B94AFAE ^ 0x14450BEE ^ -157700211))
         {
            GameSwf.instance._a04e28c145a0bf5c127f8e7d();
         }
         app.user.oldLevel = app.user.level;
         this.close();
      }
      
      public function _3d866f07adb02a6079215c17() : void
      {
         var _loc1_:Vector.<Object> = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:uint = uint(-963765250 ^ -227637485 ^ -1715877247 ^ -1386654100);
         var _loc9_:Array = null;
         var _loc10_:Object = null;
         var _loc11_:_9e3f9276aaf5cba0766361f2 = null;
         var _loc12_:Array = [];
         levelTextField.text = this._15b718b77a01d356ad46e199.level;
         shareButton.enable();
         availableList.visible = false;
         nowAvailableLabel.visible = false;
         if(this._15b718b77a01d356ad46e199[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣措掍挳挿掚捽挡挠措挠捫捺挝揁挐挮挤掉揩捃控揫捂掍捈挑揚揅揌捋掔","援揁挡控挓揖揖挀捑挭挹揬揤捬捥挽")] != null)
         {
            _loc7_ = this._15b718b77a01d356ad46e199.newLocations.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别势剫劯刐制勌刅剀刓","到到劲刃分剧勧勲勁刅刱割删劊刹劆"));
            _loc8_ = uint(0x0A0BE16A ^ 0x1B569C4D ^ -1928033053 ^ -1672875580);
            while(_loc8_ < _loc7_.length)
            {
               _loc2_ = {};
               _loc2_.type = _9e3f9276aaf5cba0766361f2.TYPE_LOCATION;
               _loc2_.id = _loc7_[_loc8_];
               _loc12_.push(_loc2_);
               _loc8_++;
            }
         }
         if(this._15b718b77a01d356ad46e199[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏნၣ၀჌ႛ႖၏ႋၮဆჱჹ႟Ⴣ႞იလဴရဈႦჯၫႇုဵႚ","ှ၁၍ဆဤ႟ႚဦ၅ႌბၥჅႝႫဨ")] != null)
         {
            _loc9_ = String(this._15b718b77a01d356ad46e199.newClothes).split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴏ჻၌Ⴂဎၑဗိႄႈ","ျႄရჭဈေႧါႆჾ၃ဍჵံთჺ"));
            _loc8_ = uint(0x6A933838 ^ 0x33A4ACA5 ^ -717132526 ^ -1938359921);
            while(_loc8_ < _loc9_.length)
            {
               _loc2_ = {};
               _loc2_.type = _67282af25befe9778e5c8dd1.CLOTHE.id;
               _loc2_.id = String(_loc9_[_loc8_]).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴈდი႗ပဥၚ။Ⴃჷ","ရჶႠဓ჊჌ჿႎა႓ၐ႖Ⴧၤჰ჉"),"");
               _loc12_.push(_loc2_);
               _loc8_++;
            }
         }
         _loc1_ = app.looksDict.getAll();
         for each(_loc3_ in _loc1_)
         {
            _loc10_ = {};
            if(_loc3_.req != null && _loc3_.req != "")
            {
               _loc10_ = JSON.parse(String(_loc3_.req));
               if(_loc10_.player_level_req != null)
               {
                  if(parseInt(_loc10_.player_level_req) == this._15b718b77a01d356ad46e199.level)
                  {
                     _loc2_ = {};
                     _loc2_.type = _67282af25befe9778e5c8dd1.CLOTHE.id;
                     _loc2_.id = _loc3_.id;
                     _loc12_.push(_loc2_);
                  }
               }
            }
         }
         _loc1_ = app.rodsDict.getAll();
         for each(_loc4_ in _loc1_)
         {
            if(parseInt(_loc4_.player_level_req) == this._15b718b77a01d356ad46e199.level)
            {
               _loc2_ = new Object();
               _loc2_.type = _67282af25befe9778e5c8dd1.ROD.id;
               _loc2_.id = _loc4_.id;
               _loc12_.push(_loc2_);
            }
         }
         _loc1_ = app.baitsDict.getAll();
         for each(_loc5_ in _loc1_)
         {
            if(parseInt(_loc5_.player_level_req) == this._15b718b77a01d356ad46e199.level)
            {
               _loc2_ = new Object();
               _loc2_.type = _67282af25befe9778e5c8dd1.BAIT.id;
               _loc2_.id = _loc5_.id;
               _loc12_.push(_loc2_);
            }
         }
         _loc1_ = app.resourcesDict.getAll();
         for each(_loc6_ in _loc1_)
         {
            _loc10_ = new Object();
            if(_loc6_.req != null && _loc6_.req != "")
            {
               _loc10_ = JSON.parse(String(_loc6_.req));
               if(_loc10_.player_level_req != null)
               {
                  if(parseInt(_loc10_.player_level_req) == this._15b718b77a01d356ad46e199.level)
                  {
                     _loc2_ = new Object();
                     _loc2_.type = _loc6_.type_id;
                     _loc2_.id = _loc6_.id;
                     _loc12_.push(_loc2_);
                  }
               }
            }
         }
         if(this._15b718b77a01d356ad46e199[_9e3f9276aaf5cba0766361f2.TYPE_ENERGY] != null)
         {
            _loc2_ = new Object();
            _loc2_.type = _9e3f9276aaf5cba0766361f2.TYPE_ENERGY;
            _loc12_.push(_loc2_);
         }
         if(this._15b718b77a01d356ad46e199[_9e3f9276aaf5cba0766361f2.TYPE_TRADING] != null)
         {
            _loc2_ = new Object();
            _loc2_.type = _9e3f9276aaf5cba0766361f2.TYPE_TRADING;
            _loc12_.push(_loc2_);
         }
         var _loc13_:int = int(_loc12_.length);
         if(_loc13_ > (0x2B0FC126 ^ 0x53294BAB ^ 0x32DF700A ^ 0x4AF9FA87))
         {
            availableList.visible = true;
            nowAvailableLabel.visible = true;
            _loc8_ = uint(0x2468FAA7 ^ 0x0AC71A60 ^ -1024250980 ^ -329462949);
            while(_loc8_ < _loc13_)
            {
               _loc11_ = _9e3f9276aaf5cba0766361f2(availableList.add(_loc12_[_loc8_]));
               _loc11_.elementData = _loc12_[_loc8_];
               _loc8_++;
            }
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this._3d866f07adb02a6079215c17();
      }
      
      public function setData(param1:Object) : void
      {
         this._15b718b77a01d356ad46e199 = param1;
      }
      
      override public function onShowComplete() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_066_MUS_Tournament_win);
      }
      
      override public function show() : void
      {
         var _loc1_:int = 0x25CBD8AA ^ 0x6D1409C8 ^ 0x4DE3DF14 ^ -1461713793;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x55FAEA58 ^ -1823994531 ^ 0x7DB5B28B ^ 0x16DB5F87))
            {
               case 0:
                  if(!app.fishboxLevelUpMediator.fishboxPrizeDialogShown)
                  {
                     _loc1_ = -1113996799 ^ -233801299 ^ -1689300712 ^ 0x791AE0BC;
                  }
                  else
                  {
                     _loc1_ = 0x2C302FC3 ^ -1406910654 ^ -1805453787 ^ -1179980631;
                  }
                  break;
               case 1:
                  super.show();
                  _loc1_ = -649033400 ^ 0x0816606A ^ -869343735 ^ -1330365152;
                  break;
               case 2:
                  return;
               case 3:
                  app.fishboxLevelUpMediator.addEventListener(_458f27be309c3864556e3018.FISHBOX_DIALOG_CLOSED,this._100983f08b37bfddcd9245e4);
                  _loc1_ = 0x2FFCE381 ^ 0x4F9C4EB2 ^ 0x2320B1AA ^ -291760494;
                  break;
               case 4:
                  if(!app.fishboxLevelUpMediator.hasEventListener(_458f27be309c3864556e3018.FISHBOX_DIALOG_CLOSED))
                  {
                     _loc1_ = 0x33D8A0F7 ^ -1105166175 ^ -826060787 ^ -286819759;
                  }
                  else
                  {
                     _loc1_ = 0x75C2082A ^ -2116945207 ^ 0x45069621 ^ 0x1CC96EC9;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _100983f08b37bfddcd9245e4(param1:* = null) : void
      {
         app.fishboxLevelUpMediator.removeEventListener(_458f27be309c3864556e3018.FISHBOX_DIALOG_CLOSED,this._100983f08b37bfddcd9245e4);
         this.show();
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}

