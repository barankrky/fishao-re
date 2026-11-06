package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.types._262f244aaecbd05b76c0b35e;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.model.types._5b7284c7fd381f8e2dcb8905;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.dialogs._a14563ccb60ddde4936b7186;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.empty;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import protocol.api.base.EErrorType;
   import protocol.sr.ErrorResp;
   
   public class _532cdbb4a995ec5c253adbc5 extends _a14563ccb60ddde4936b7186
   {
      
      private static var _4bc85de9f6e181f30965beb9:Vector.<String>;
      
      private static var _c236354524a5d21d3e8611f7:Vector.<_3e150da9e23ba0916ccbf8e9>;
      
      private static var _afd3f73522e3a44887a6c237:Vector.<String>;
      
      public var handlerReportSuccess:Function;
      
      private var _9782c4533e8f466cfa818298:_4958d20007bef43d6fa5624d;
      
      public function _532cdbb4a995ec5c253adbc5()
      {
         super();
      }
      
      private static function _634cc1f3e096bee265a3ff68() : Vector.<String>
      {
         var _loc1_:Vector.<_262f244aaecbd05b76c0b35e> = null;
         var _loc2_:_262f244aaecbd05b76c0b35e = null;
         if(_afd3f73522e3a44887a6c237 == null)
         {
            _afd3f73522e3a44887a6c237 = new Vector.<String>();
            _loc1_ = _262f244aaecbd05b76c0b35e.getAll();
            for each(_loc2_ in _loc1_)
            {
               _afd3f73522e3a44887a6c237.push(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫刁勸勗剀剱劉制剫剏剡創刽剛劌刃","劖劵剣勶劇剁制切劲劶剼创勿刚割剌") + _loc2_.name));
            }
         }
         return _afd3f73522e3a44887a6c237;
      }
      
      private function _cb16ac4547d539fef8296305() : Vector.<String>
      {
         var _loc1_:_3e150da9e23ba0916ccbf8e9 = null;
         _4bc85de9f6e181f30965beb9 = new Vector.<String>();
         _c236354524a5d21d3e8611f7 = new Vector.<_3e150da9e23ba0916ccbf8e9>();
         var _loc2_:Vector.<_3e150da9e23ba0916ccbf8e9> = _3e150da9e23ba0916ccbf8e9.getAll();
         for each(_loc1_ in _loc2_)
         {
            if(_loc1_.selectable && this._9a6469399625f8e75d518074(_loc1_))
            {
               _4bc85de9f6e181f30965beb9.push(_c2ad9d37d7be0097d6d2e977.get(_loc1_.name));
               _c236354524a5d21d3e8611f7.push(_loc1_);
            }
         }
         return _4bc85de9f6e181f30965beb9;
      }
      
      private function _9a6469399625f8e75d518074(param1:_3e150da9e23ba0916ccbf8e9) : Boolean
      {
         return !(this._9782c4533e8f466cfa818298.key == null && this._9782c4533e8f466cfa818298.reportKey == null && param1 == _3e150da9e23ba0916ccbf8e9.DISMISS_REPORT);
      }
      
      private function _9e61898a349b56a09df7b9ff(param1:Event) : void
      {
         periodDropdown.visible = _c236354524a5d21d3e8611f7.length > actionDropdown.selectedItemIndex && _c236354524a5d21d3e8611f7[actionDropdown.selectedItemIndex].hasTime;
         userDropdown.visible = !(_c236354524a5d21d3e8611f7.length > actionDropdown.selectedItemIndex && _c236354524a5d21d3e8611f7[actionDropdown.selectedItemIndex] == _3e150da9e23ba0916ccbf8e9.DISMISS_REPORT);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         applyButton.handler = this._39bd5b2805aa776d12dd4722;
      }
      
      private function _39bd5b2805aa776d12dd4722(param1:MouseEvent) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = null;
         var _loc3_:_262f244aaecbd05b76c0b35e = null;
         var _loc4_:_3e150da9e23ba0916ccbf8e9 = null;
         var _loc5_:String = null;
         var _loc6_:int = userDropdown.selectedItemIndex;
         var _loc7_:int = actionDropdown.selectedItemIndex;
         if(_loc7_ == (-2024297020 ^ -746490117 ^ 0x7F55ADA0 ^ -730035872))
         {
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ყႇ႔ဈါာთဌჼဋပႌပႃီဲှႰფ၊၊ჂနၞႧင჻ၬ","ყიჀႋცၐၦႤႿჳ်ႮႧႌၱၐ")));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         _loc4_ = _c236354524a5d21d3e8611f7[_loc7_];
         if(_loc6_ == (-1297009144 ^ 0x55DE0643 ^ 0x7EA9E0F8 ^ 0x66392F4C) && _c236354524a5d21d3e8611f7[_loc7_] != _3e150da9e23ba0916ccbf8e9.DISMISS_REPORT)
         {
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺劫劊劻勲劜别勢勓刯勍刿勖劎勦刮劕剋動剆刖刵勝刕劤刲劘劣","勩劗刬剮努剽劉劬劄劗劓刖勘剀劵剑")));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         var _loc8_:int = periodDropdown.selectedItemIndex;
         if(_c236354524a5d21d3e8611f7[_loc7_] == _3e150da9e23ba0916ccbf8e9.COMMUNICATION_BAN || _c236354524a5d21d3e8611f7[_loc7_] == _3e150da9e23ba0916ccbf8e9.FULL_BAN)
         {
            if(_loc8_ == (-829790401 ^ 0x4934C9BC ^ 0x3C77FF73 ^ 0x4436AE0F))
            {
               _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
               _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
               _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨掶捛揊揽挪揗捲揋掙掽揵掋揽掓揧揀揄捄挻揭捊挙捃措捠挳按捧揨挫捏捥换捔掼","捥挆挻掁捚揬掿捫揭捌揨掔揦捠捁揃")));
               _loc2_.closeOnOk = true;
               _loc2_.show();
               return;
            }
            _loc3_ = _262f244aaecbd05b76c0b35e.getAll()[_loc8_];
         }
         if(_loc6_ <= (0x304E30BF ^ 0x4D03CE9F ^ -1512505284 ^ -661324260))
         {
            _loc5_ = this._9782c4533e8f466cfa818298.abuserUsername;
         }
         else
         {
            _loc5_ = this._9782c4533e8f466cfa818298.reporterUsername;
         }
         var _loc9_:String = scrollText.field.text;
         if(empty(_loc9_))
         {
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿捝挕挌挲挦揺捾掂揄捶採揺捋捤捊排掋挋挺挱捛揙揣掜掐挈掌挅捩","挖掜掝掽挷捫掀掿掽揢挸掭揅挖挨捤")));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         app.moderatorModel._1acd900dad3c29322932e068(this._9782c4533e8f466cfa818298.reportKey,this._9782c4533e8f466cfa818298.key,_loc5_,_loc4_,_loc3_,_loc9_,this._dfd08f82ef857912d25b299c);
      }
      
      private function _dfd08f82ef857912d25b299c(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:String = null;
         var _loc3_:_6e3e496e7a4ab1988577523d = null;
         var _loc4_:_6691abcab801c2433d32324a = null;
         var _loc5_:ErrorResp = param1 as ErrorResp;
         if(_loc5_ != null)
         {
            var _loc6_:String = _loc5_.descr;
            switch(EErrorType.USER_IS_BIG_SPENDER.toString() === _loc6_ ? -1698914237 ^ -1623303816 ^ 0x0D80E633 ^ 0x08021F08 : -112865432 ^ 0x4E7038E5 ^ -803954839 ^ 0x672168E5)
            {
               case 0:
                  _loc2_ = _85b2141a2303f6545d411d7a.EST_MESSAGE_USER_IS_BIG_SPENDER;
            }
         }
         else
         {
            _loc2_ = _85b2141a2303f6545d411d7a.EST_MESSAGE_BAN_APPLIED;
            _loc3_ = GameSwf.profileSwfDialog;
            if(_loc3_ != null)
            {
               _loc3_.close();
            }
         }
         if(_loc2_ != "")
         {
            _loc4_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc4_.closeOnOk = true;
            _loc4_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_loc2_));
            _loc4_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
            _loc4_.show();
         }
         if(_loc2_ == "" || _loc2_ == _85b2141a2303f6545d411d7a.EST_MESSAGE_BAN_APPLIED)
         {
            close();
         }
         if(this.handlerReportSuccess != null)
         {
            this.handlerReportSuccess();
         }
      }
      
      public function _27d0c2c0e8a772401e2175c6(param1:_4958d20007bef43d6fa5624d) : void
      {
         this._9782c4533e8f466cfa818298 = param1;
         show();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<String> = null;
         super.activate();
         actionDropdown.selectedItemIndex = -390836200 ^ 0x5E12FEFF ^ 0x5A7F4C55 ^ 0x13261D4D;
         periodDropdown.selectedItemIndex = 0x0BD156AC ^ 0x51669791 ^ -1697357704 ^ 0x3F9C5EBA;
         userDropdown.selectedItemIndex = 0x371B2C37 ^ -883275302 ^ 0x31C066E3 ^ 0x327EFCF1;
         if(this._9782c4533e8f466cfa818298.status == _5b7284c7fd381f8e2dcb8905.CLOSED)
         {
            userDropdown.create(new <String>[this._9782c4533e8f466cfa818298.abuserUsername]);
            userDropdown.selectedItemIndex = -490263609 ^ 0x0DD8976D ^ -175175581 ^ 0x1A90B4C9;
         }
         else
         {
            _loc1_ = new Vector.<String>();
            if(this._9782c4533e8f466cfa818298.abuserUsername != null)
            {
               if(this._9782c4533e8f466cfa818298.reporterUsername != null)
               {
                  _loc1_.push(this._9782c4533e8f466cfa818298.abuserUsername + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("助删劑勰勏募削刕剹勥刬動","列劘剁劵動券剐刡刌勖副剚刈勤剷刨") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿勜剶刱剑劬劰効剿別劝劒勎劄勇剸剽勖剈勃","勇剠効动刈剡势劺勓勥剤劐剰副劔勧")) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊削剹剉创劯剪剐劦剮","劌剎勁勃勦劾刳劅劫劈勑剗勍刐劏刓"));
               }
               else
               {
                  _loc1_.push(this._9782c4533e8f466cfa818298.abuserUsername);
               }
            }
            if(this._9782c4533e8f466cfa818298.reporterUsername != null)
            {
               _loc1_.push(this._9782c4533e8f466cfa818298.reporterUsername + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၄႔ဧိႨყၝ႙ႤဵႧၵ","ၬ၏ႌထႧექႂႏင჈ဎႬჇတ်") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭剥削剩刄劺剬刼刑劖効刃刲勾劕刍劈剆劇劥剦勀劇勭","劖劽务刲剼勞剩勺剴勸刽剿初剧創剞")) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("券勬劖刮劼勷劑勫劶刬","効勈劋剑劋剛剼刍刞務勥勻劕剣剓勢"));
            }
            userDropdown.create(_loc1_);
         }
         actionDropdown.create(this._cb16ac4547d539fef8296305());
         actionDropdown.addEventListener(Event.CHANGE,this._9e61898a349b56a09df7b9ff);
         periodDropdown.create(_634cc1f3e096bee265a3ff68());
      }
      
      override public function _ec9e8fded1f21e9a06d314c7() : void
      {
         _app.dialogManager.showDialogWithOverlay(this);
      }
   }
}

