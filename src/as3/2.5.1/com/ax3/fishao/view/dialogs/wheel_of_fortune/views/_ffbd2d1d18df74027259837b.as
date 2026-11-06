package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import flash.display.DisplayObjectContainer;
   
   public class _ffbd2d1d18df74027259837b extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _ff6006619eb8643b6d26b19a:DisplayObjectContainer;
      
      private var _7e33f2575bc52352ec149514:_516bdd84a596664686efe940;
      
      private var _20f3765a37154cfdff7d8935:_13d62ae00137449166a5430b;
      
      public function _ffbd2d1d18df74027259837b(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._ff6006619eb8643b6d26b19a = param2;
         this.init();
      }
      
      public function get viewWheelRewards() : _516bdd84a596664686efe940
      {
         return this._7e33f2575bc52352ec149514;
      }
      
      public function get viewWheelPointer() : _13d62ae00137449166a5430b
      {
         return this._20f3765a37154cfdff7d8935;
      }
      
      public function set rewards(param1:Array) : void
      {
         this._7e33f2575bc52352ec149514.rewards = param1;
      }
      
      public function get pointerRewardType() : String
      {
         return this._7e33f2575bc52352ec149514.pointerRewardTypeCurrent;
      }
      
      private function init() : void
      {
         this._7e33f2575bc52352ec149514 = new _516bdd84a596664686efe940(controller,Debug.assertProperty(this._ff6006619eb8643b6d26b19a,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挅捦揻掻揆掐揼捌挺探捳捿挥捇指掉推捣揲挃掯揠捁揢揈捿挶持捧掤揱握挀捗捤揧掿掂挜掓","捎捵捷挹揣捪掳揪揤揸授揵掯挻捶捨")));
         this._20f3765a37154cfdff7d8935 = new _13d62ae00137449166a5430b(controller,Debug.assertProperty(this._ff6006619eb8643b6d26b19a,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၥႍၐဣ჻၁ဏဆဦნვၱဥႆდခႫၗႦႆ၆ႃნၫჵპၹცဋ၌၅၌Ⴈ႙ဩჲ၌ဏဇႶ","ႸႛჄႵჰႴႢစႻთသႰႰၟၝვ")));
      }
      
      public function _78057b666f71707da176fab7() : void
      {
         this._7e33f2575bc52352ec149514._78057b666f71707da176fab7();
      }
      
      public function _471a55365bf6043a770d3c83() : void
      {
         this._7e33f2575bc52352ec149514._471a55365bf6043a770d3c83();
      }
      
      public function _e3a3cacc6ff47d66620f39a2(param1:_60d64d32c61de9fe092aecc7) : void
      {
         this._7e33f2575bc52352ec149514._e3a3cacc6ff47d66620f39a2(param1);
      }
   }
}

