package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.model._3f4737ed54f687ba620c6ace;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.MouseEvent;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.activation.SendActivationMailResp;
   
   public class _4cdd6757f62e93d227b74e27 extends _22aa38b6046858616ce831b6
   {
      
      private var _3a1cbb7bbb55d6cbf46b4238:_3f4737ed54f687ba620c6ace;
      
      public function _4cdd6757f62e93d227b74e27()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         titleLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖掇挜挡捊揘掘挞掻推挾揵挕掩挣捕捱捥掅捝挠揟掙揇捪捌揲捪捨挬挥挢揀捤捵捐揔捛挏捵挞挣掮揗挋掮捺插捒揾揌揺挲挸捅掵挚揗挏掇採掸揇捯揍掁","挫採挻措掠挳捴接揘捾挆挰掲捘措挀"));
         headLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺劻勵剆募勈刦利刽勐刃剙劏刈剋刺剤刉勜刽勨刁勂刿劗剜別初刹劝劇剟剂剃勊劾剚劧刧劳创募勻劢剷割剤劖剗到劢剳剗刣勼劌剪勧剌効勩劧剜勫","劻剪刞劝劼劏勌劫剸勬劤刾剡劲勑剢")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၥჁ჏၎ၫჵყႧ႓ႼၾჳჯၶႝႋဤႊწဟၮၲႀၡႩၙဖၝ","ၿღဋၔၓဏ႒ႝႳჾႾၩၢႌတჲ"),app.user.username);
         mailLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揨捑揗揞捲捓插掠捫掛换掘捋捍揙揱挚揓挬揣捍掋揬捜捚推掃揈揂挜掶捘捰揸捨捡握捠捾掀揞揘揮捰捕捜挛掀挗掼挊掓揌揣掫挏捖掉捳揍捈挩揆挙揿捨捭捏挂挈振掘揹掑","掿掱掲揉换揤揮捷捖掟掖揑捽掷捥揃"));
         this._3a1cbb7bbb55d6cbf46b4238 = GameSwf.instance.gameSettings;
         mailField.text = "";
         confirmMailButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙掓揌捬掺挾捾揓揙挞挟掟捷提挄挄捞捄挗掰捈捪捔掂挏揙捱掷揔捴捭挟揔掴捔掑捧捦挌捸挳掸捥挮掳掉揫挑指揲揻描揺挊援掤捠掶挸捉揩揁捇採掼揎揚捺","挙捈挍揸捺挾捡捭揓挙挩挵掂掭揊挷"));
         confirmMailButton.handler = this._d6c6254298f9c8bf8d37d11c;
         closeButton.handler = this._3e11316921dcf3962ab51e42;
         super._935ac2966ddad68dfc449202();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      private function _d6c6254298f9c8bf8d37d11c(param1:MouseEvent) : void
      {
         confirmMailButton.disable();
         _dfa25706e58a240c1e33e5c6.profileExtension._5032c23458208213494a5e43(mailField.text,this._3abeb373922c963392e14873);
      }
      
      private function _3abeb373922c963392e14873(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = null;
         if(param1 is RegisterErrorResp)
         {
            confirmMailButton.enable();
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩ၊ၥ့ႩစၿႚႤၝჇჁျႃႭ჈ჷ၏၁წ჆ူဠ႙თဟျ჋","ႚၗჁႀკ႟ဣဗဎႠွႶჹဪႦၯ") + RegisterErrorResp(param1).descr),false);
            _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
         }
         else if(param1 is SendActivationMailResp)
         {
            if((param1 as SendActivationMailResp).mailSent)
            {
               GameSwf.instance.gameSettings.email = mailField.text;
               this._7733c7005bd64940d35106a9(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劭劇剷刟劮刹勯勛勯劂剬刡分勈剓刡勪劜勳删刾利刉勨勐刘勝剨劅劶刧劫劈勾勋劌劦劒别劋劍刃劲剪切劄劅勊刿勥划劮到剹劮勶办刍劝勐剄勎勫刎","刮勚剌励刧勞劰剱刺劥勁刮勡删勜劶")));
               close();
            }
         }
      }
      
      private function _7733c7005bd64940d35106a9(param1:String) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = app.dialogFactory._5afc77ddaa6019528749a6fb();
         _loc2_._4b5d5535760fe8919ccfbd43(param1);
         _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.show();
      }
      
      override public function show() : void
      {
         var _loc1_:int = 0x1B93CA05 ^ 0x77B8BD6F ^ -811933739 ^ 0x4E04E242;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x32F43190 ^ -1503133792 ^ 0x4F936674 ^ 0x36B5E2BB))
            {
               case 0:
                  super.show();
                  return;
               case 1:
                  if(confirmMailButton != null)
                  {
                     _loc1_ = 0x59F777A6 ^ -2023747193 ^ -393645048 ^ -609527598;
                  }
                  else
                  {
                     _loc1_ = -677123371 ^ 0x660EF313 ^ 0x72ADA653 ^ 0x2EB5F56A;
                  }
                  break;
               case 2:
                  if(mailField != null)
                  {
                     _loc1_ = 0x01FADD12 ^ 0x6B000BB7 ^ 0x2A1CBACA ^ -1387059565;
                  }
                  else
                  {
                     _loc1_ = 0x59091DDF ^ -1456571836 ^ 0x0F5C0CFD ^ 0x12CE2198;
                  }
                  break;
               case 3:
                  mailField.text = "";
                  _loc1_ = -1116520396 ^ -159908592 ^ 0x76C33E62 ^ -797783624;
                  break;
               case 4:
                  confirmMailButton.enable();
                  _loc1_ = 0x14EC1A14 ^ -680636747 ^ 0x585F07A1 ^ 0x766819FF;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3e11316921dcf3962ab51e42(param1:MouseEvent) : void
      {
         close();
      }
   }
}

