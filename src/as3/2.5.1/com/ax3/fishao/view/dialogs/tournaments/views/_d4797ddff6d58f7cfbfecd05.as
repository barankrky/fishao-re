package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _d4797ddff6d58f7cfbfecd05 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _559c8f3080e54d992f83a1cc:DisplayObjectContainer;
      
      private var _c994ec52b95a3213eb891326:TextField;
      
      private var _837933950e61ee145e556ebe:TextField;
      
      private var _3814064b12690e69ca00e33f:_cadb36e9d7306d009284e6e4;
      
      public function _d4797ddff6d58f7cfbfecd05(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._559c8f3080e54d992f83a1cc = param2;
         super(param1,this._559c8f3080e54d992f83a1cc);
         this.init();
      }
      
      public function set level(param1:int) : void
      {
         this._c994ec52b95a3213eb891326.text = param1.toString();
      }
      
      public function set login(param1:String) : void
      {
         this._837933950e61ee145e556ebe.text = param1;
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this._3814064b12690e69ca00e33f.isReady = param1;
      }
      
      public function set statusText(param1:String) : void
      {
         this._3814064b12690e69ca00e33f.label = param1;
      }
      
      private function init() : void
      {
         this._c994ec52b95a3213eb891326 = Debug.assertProperty(this._559c8f3080e54d992f83a1cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚劵剞刣剌剘勞刯刚勷剰剬刻劄勍勛刬勿勘剙劔刃勎勰劝勘劕劵","勡剌劶創副劺刲刴剑劔刖劰刔刋刌剴"),TextField);
         this._837933950e61ee145e556ebe = Debug.assertProperty(this._559c8f3080e54d992f83a1cc,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸႡ၌ဎႜ჊ဦჱ၉ჴႃჄჀဨဳၷုစႍဃစ჊ႨႴႩၽၢဏ","၌ဴ႗ၱ႑ႱဋဩႨၠႾႂჟიႢံ"),TextField);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._559c8f3080e54d992f83a1cc,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揄捛挕掠揎揔揺捭掉掤捃掑援揪捿挑捠捇掮揞挙掊挣捶揞揽掞掺","掇捇指揥揤挢掵揋挼揯捲挱挊掿提揻"),DisplayObjectContainer);
         this._3814064b12690e69ca00e33f = new _cadb36e9d7306d009284e6e4(controller,_loc1_);
      }
   }
}

