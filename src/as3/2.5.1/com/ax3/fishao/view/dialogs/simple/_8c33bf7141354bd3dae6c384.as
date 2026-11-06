package com.ax3.fishao.view.dialogs.simple
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs._095f74ed3dbeaa01adf720f9;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _8c33bf7141354bd3dae6c384 extends _095f74ed3dbeaa01adf720f9
   {
      
      protected static const INSTANCE_NAME_LABEL_TITLE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဟႽ႙းႬႍ၌၇პ჉ိ၇ქစႸႚဎჅ႟წၙჄ႔ၭသჼ჌ၢ","Ⴀဗႇჽဒლၫჺၧჱ၆Ⴐჲ၏ღႼ");
      
      protected static const INSTANCE_NAME_LABEL_DESCRIPTION:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刾剨删刡勤劵剫劭勝劆劁勄勃勧劏勽刾刘券剣勅勶利剑刜动刦刓刏劤勇刃劈劣剁劬劁刷劍勦","刋势勞勺劸劙剄劔刑剴募刲剐勈劲刭");
      
      protected static const INSTANCE_NAME_LABEL_BUTTON_CLOSE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪捴捋挐揻掀掖挢掕掱揾揭掞捑揼掲挻捵採掺捴掣揭授挑推挄掾挺挷","揲揲挙揎挕握挀揜挱挙挤掖捾挡捍揦");
      
      private var _ba538750a561f56488b5367a:DisplayObjectContainer;
      
      private var _735955f3ed079009719cbd78:TextField;
      
      private var _a66d7765fb65a39dc39bea69:TextField;
      
      private var _8cb6e78cbe5111ac3a25c766:Sprite;
      
      public function _8c33bf7141354bd3dae6c384(param1:DisplayObjectContainer)
      {
         super();
         this._ba538750a561f56488b5367a = Debug.assertNotEqual(param1,null);
         addChild(this._ba538750a561f56488b5367a);
         this.init();
      }
      
      public function get buttonClose() : Sprite
      {
         return this._8cb6e78cbe5111ac3a25c766;
      }
      
      public function set title(param1:String) : void
      {
         this._735955f3ed079009719cbd78.text = param1;
      }
      
      public function get labelDescription() : TextField
      {
         return this._a66d7765fb65a39dc39bea69;
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:int = 0x5AB7AC5F ^ 0x2351754A ^ -1965369992 ^ -1232809266;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x09ED8315 ^ 0x449F5A10 ^ -91623593 ^ -230430479))
            {
               case 0:
                  this._a66d7765fb65a39dc39bea69.text = param1;
                  if(this._a66d7765fb65a39dc39bea69.textHeight < this._a66d7765fb65a39dc39bea69.height)
                  {
                     _loc2_ = 0x6F5965B8 ^ -1898419800 ^ 0x76C4ED32 ^ -755155069;
                  }
                  else
                  {
                     _loc2_ = 0x7DE64845 ^ -1240639840 ^ -172447557 ^ 0x7BEB68FC;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._a66d7765fb65a39dc39bea69.y += (this._a66d7765fb65a39dc39bea69.height - this._a66d7765fb65a39dc39bea69.textHeight) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揑掷揠掸提挀揃挭掳挥捑揑挈捽揣捾描掜捸挅掸揟揧揌","插捕揅揎捚持掿掌挬揀挙捍掉掓揽掉");
                  _loc2_ = -773249894 ^ 0x2EF2C503 ^ 0x589A7ADB ^ -499563040;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _4f254116765eb1a39d6712be(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Object = param1;
         switch(this._8cb6e78cbe5111ac3a25c766 === _loc4_ ? -498005245 ^ -485731365 ^ 0x280E9732 ^ 0x2953CFEA : -307453643 ^ 0x40C15398 ^ 0x79D4DEA4 ^ -726062072)
         {
            case 0:
               this._ba7fe333230ac51496d90cb8();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      protected function _ba7fe333230ac51496d90cb8() : void
      {
         this._8cb6e78cbe5111ac3a25c766.removeEventListener(MouseEvent.CLICK,this._94487d1249efdaae147884f5);
         super.close();
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return true;
      }
      
      private function _94487d1249efdaae147884f5(param1:MouseEvent) : void
      {
         this._4f254116765eb1a39d6712be(this._8cb6e78cbe5111ac3a25c766,param1);
      }
      
      private function init() : void
      {
         this._735955f3ed079009719cbd78 = Debug.assertProperty(this._ba538750a561f56488b5367a,INSTANCE_NAME_LABEL_TITLE,TextField);
         this._a66d7765fb65a39dc39bea69 = Debug.assertProperty(this._ba538750a561f56488b5367a,INSTANCE_NAME_LABEL_DESCRIPTION,TextField);
         this._8cb6e78cbe5111ac3a25c766 = Debug.assertProperty(this._ba538750a561f56488b5367a,INSTANCE_NAME_LABEL_BUTTON_CLOSE,Sprite);
         this._8cb6e78cbe5111ac3a25c766.buttonMode = true;
         this._8cb6e78cbe5111ac3a25c766.useHandCursor = true;
         this._8cb6e78cbe5111ac3a25c766.addEventListener(MouseEvent.CLICK,this._94487d1249efdaae147884f5,false,-675161333 ^ -214405422 ^ -2362299 ^ -618511972,true);
      }
   }
}

