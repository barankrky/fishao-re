package com.ax3.fishao.view.wrappers.communication.helpers.club
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.communication.helpers.base._a7dc8a3213f2486db7d1e5d8;
   import com.brokenfunction.json.decodeJson;
   
   public class _60b266702dacdf18eef417af extends _a7dc8a3213f2486db7d1e5d8
   {
      
      public function _60b266702dacdf18eef417af()
      {
         super();
      }
      
      override public function _a041ffa049d7e26753d6bdbc(param1:String, param2:String) : void
      {
         super._a041ffa049d7e26753d6bdbc(param1,param2);
         var _loc3_:Object = decodeJson(param2);
         var _loc4_:String = Debug.assertProperty(_loc3_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力助剡劻刁劃刦刊刟劇努刃剪办刃勭効勩劋刵剗刓剓剃","删劼剦剎剔動劣勪勹勏劮削刮券刓削"));
         var _loc5_:String = _c2ad9d37d7be0097d6d2e977.get(_loc4_);
         var _loc6_:int = Debug.assertProperty(_loc3_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫勑剪刺勫勱務刟剆劖刖刻劷办劝刘刃初剘劰勐剼","剤勾刦刺劤划劒勬勢剑勍剱刊劘剾刻"));
         var _loc7_:String = _c2ad9d37d7be0097d6d2e977._8bb94da62349a1ea78211a86(_loc6_);
         var _loc8_:Boolean = Debug.assertProperty(_loc3_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩპဨဩၝეႃးღ჊ဴႣဳჱჇ႑ၟ၂ჅၲႯၘ","წ၅ჩီ႘ႱჲႻၪ၌Ⴐၱၺ႙ဉၐ"));
         var _loc9_:String = _c2ad9d37d7be0097d6d2e977.get(_loc8_ ? _85b2141a2303f6545d411d7a.EST_COMMON_SALT : _85b2141a2303f6545d411d7a.EST_COMMON_FRESH);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,app.user.username);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_loc7_);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,_loc9_);
         _body = _loc5_;
      }
   }
}

