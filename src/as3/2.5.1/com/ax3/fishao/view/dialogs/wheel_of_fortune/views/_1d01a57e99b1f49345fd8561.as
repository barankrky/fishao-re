package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _1d01a57e99b1f49345fd8561 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _886468a8c0ae5c9d1cc578fd:DisplayObjectContainer;
      
      private var _5b7e16960902e8b6ae385826:_73899a4de8f83c8d2c26f545;
      
      private var _f7ef5fd6752a7ba24eb627a2:MovieClip;
      
      public function _1d01a57e99b1f49345fd8561(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._886468a8c0ae5c9d1cc578fd = param2;
         this.init();
      }
      
      public function set text(param1:String) : void
      {
         this._5b7e16960902e8b6ae385826.text = param1;
      }
      
      public function set rewardType(param1:String) : void
      {
         this._f7ef5fd6752a7ba24eb627a2.gotoAndStop(param1);
      }
      
      private function init() : void
      {
         this._f7ef5fd6752a7ba24eb627a2 = Debug.assertProperty(this._886468a8c0ae5c9d1cc578fd,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႚႌჼဃါၧဘ႟Ⴅყဪვဨ႔၀႑Ⴅ႑ဴံဳဗჸႪၽၐၓႨ","ၯၥၚႱჷျွ႐ဵრၠဧႃჶႷႊ"));
         var _loc1_:TextField = Debug.assertProperty(this._886468a8c0ae5c9d1cc578fd,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挔掲挀捓捏握掵揎捉揌挙挷授掾捬挺揟挦挃揜挤揼掗捛捳挂揬掾挍捡","揮换揤掏探按掆掵捰掌挳揓捀捫掯揻"));
         this._5b7e16960902e8b6ae385826 = new _73899a4de8f83c8d2c26f545(_loc1_);
      }
   }
}

