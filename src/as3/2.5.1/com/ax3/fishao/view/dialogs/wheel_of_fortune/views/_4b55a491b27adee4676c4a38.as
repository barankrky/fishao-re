package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._8ecc041b6b4976ac13bca1ac;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _4b55a491b27adee4676c4a38 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _0505eadafa7b67871a3a1fa1:DisplayObjectContainer;
      
      private var _0c78d3a3975c9c7c4768bf15:_ab72f7798754bf7a51d8acb3;
      
      private var _f38de1cd0054d7ec0405b6ee:TextField;
      
      private var _4bfcdc32b371d5a076d8c4be:TextField;
      
      private var _a0770c8c1a64ec2b9f0abc9f:TextField;
      
      private var _fbd9c6f82b07c0f266dbde7e:FrameButtonWrapper;
      
      private var _ddceb9408d78d1ab990b46ed:_8ecc041b6b4976ac13bca1ac;
      
      public function _4b55a491b27adee4676c4a38(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._0505eadafa7b67871a3a1fa1 = param2;
         super(param1,this._0505eadafa7b67871a3a1fa1);
         this.init();
      }
      
      public function get buttonSpinFree() : FrameButtonWrapper
      {
         return this._fbd9c6f82b07c0f266dbde7e;
      }
      
      public function get buttonSpinPaid() : _8ecc041b6b4976ac13bca1ac
      {
         return this._ddceb9408d78d1ab990b46ed;
      }
      
      public function get labelDescription() : TextField
      {
         return this._f38de1cd0054d7ec0405b6ee;
      }
      
      public function get labelTimeLeft() : TextField
      {
         return this._4bfcdc32b371d5a076d8c4be;
      }
      
      private function init() : void
      {
         this._0c78d3a3975c9c7c4768bf15 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刡勛剎剤勇刜剳勢刅刁劾勾初劒刹勤剌列剮刊剑分勺剸勦勩","劈剐刃刘劒劯创劄剌劸勸剅剄剹勂剉")));
         this._0c78d3a3975c9c7c4768bf15.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_TITLE);
         this._a0770c8c1a64ec2b9f0abc9f = Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧၯအႝႽတၯငၮၻჾჟခႩႭၙႆၯ႐ၱၠၤဃ၎႖ჳၦჶ","ႀႱၽၴဩဩ၌ဵ၈ႷၹၕႾევ၏"),TextField);
         this._a0770c8c1a64ec2b9f0abc9f.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_PRIZE);
         this._f38de1cd0054d7ec0405b6ee = Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴓ჻ქႾစႬဠ၄ၴფ႘ဖႀၒႫႯဃჿႊჲႽသိေလဲჴစჼ၄ჹ၀ၽဟႡဒ႒၀ၴჃ","ႇჽဢၥဪ჌႒ဋဌვဠၹაႏ၉ၾ"),TextField);
         this._f38de1cd0054d7ec0405b6ee.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_FREE_SPIN_DESCRIPTION);
         this._4bfcdc32b371d5a076d8c4be = Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႟ႸႾႇဃႵႫၿႮႠၽဈႼჱႶႜၑၓუცှၥყჃ႗ဳႸ႕ფငႁဆႝე","ဏჭွმჲဩ႘ႄႏံზၱჾႎ႑ტ"),TextField);
         this._fbd9c6f82b07c0f266dbde7e = new FrameButtonWrapper();
         this._fbd9c6f82b07c0f266dbde7e.process(Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判劰勣剽劦劎剺勯劖剽勋別勲剼勞勗劦助劥勇勾勨勂劔剻劏劒势剂劍副剏劘刐勀刳","劍勍剣刢劤努刎剹劊刾剐剾勭刀勿剭")));
         this._fbd9c6f82b07c0f266dbde7e.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_fbd9c6f82b07c0f266dbde7e,param1);
         };
         this._fbd9c6f82b07c0f266dbde7e.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_BUTTON_SPIN_FREE);
         this._ddceb9408d78d1ab990b46ed = new _8ecc041b6b4976ac13bca1ac();
         this._ddceb9408d78d1ab990b46ed.process(Debug.assertProperty(this._0505eadafa7b67871a3a1fa1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰捅挧揞挴挪捘揳揙捄掋揹挌掅掎挞持揼挪揚挻掞提捈揩揩捉换挴掐揲挜揗挏捤揅","挄掦掳捜挫掘捰捼挤揙捺捎捠挅掀挼")));
         this._ddceb9408d78d1ab990b46ed.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_ddceb9408d78d1ab990b46ed,param1);
         };
         this._ddceb9408d78d1ab990b46ed.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_BUTTON_SPIN_PAID);
      }
   }
}

