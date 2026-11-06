package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _0802595643aded3b9dcf335d extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected static const INSTANCE_NAME_LABEL:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋劇剈刄勂割劸剢初刽劘勲劮動刃动剛剆","利剳勩刍剪劅劶劜劺刺剦切刕初勓勲");
      
      private var _ccd6b0479f792d28379994fa:DisplayObjectContainer;
      
      private var _bee99c19102478c98cac3dcd:TextField;
      
      public function _0802595643aded3b9dcf335d(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._ccd6b0479f792d28379994fa = param2;
         super(param1,this._ccd6b0479f792d28379994fa);
         this.init();
      }
      
      public function set label(param1:String) : void
      {
         this._bee99c19102478c98cac3dcd.text = param1;
      }
      
      private function init() : void
      {
         this._bee99c19102478c98cac3dcd = Debug.assertProperty(this._ccd6b0479f792d28379994fa,INSTANCE_NAME_LABEL,TextField);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._ccd6b0479f792d28379994fa.alpha = -1127513621 ^ -1941388570 ^ -1157143800 ^ -1954275324;
         var _loc3_:Object = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჈ဋၾႷდၑၵშႶဣၧႴႄၣနၕႃၪ","ထၼკ႔ႵჃჺု჌ဟ၇ဤ႙Ⴂွန")):0x4F33556F ^ -433569021 ^ 0x0AC88B19 ^ -1546412683};
         TweenCube.to(this._ccd6b0479f792d28379994fa,0x58D569EA ^ 0x35A461F2 ^ 0x2BD5E503 ^ 0x46A4ED18,_loc3_);
      }
   }
}

