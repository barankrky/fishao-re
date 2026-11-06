package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _5d4744298d281de23246856d extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected static const INSTANCE_NAME_INDICATOR:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီၯဟ႘ဠღႠჇჯႪႼႛၸჅტ჻႕ဗျჼၢႨვႬ႔Ⴥ","ယႊဇဘၐၥჃჾဤ၎ဝႜၥႼუအ");
      
      private var _289e13adb76547e4ead24b6a:DisplayObjectContainer;
      
      private var _2df2293e3bb674f07f51b116:DisplayObject;
      
      private var _be4d272830aa2e979f4f4886:Number;
      
      public function _5d4744298d281de23246856d(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._289e13adb76547e4ead24b6a = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set percent(param1:Number) : void
      {
         param1 = limit(param1,0x64899948 ^ 0x167D5C4C ^ 0x1633594F ^ 0x64C79C4B,-1291422496 ^ -401916164 ^ -1328280698 ^ -338083330);
         this._2df2293e3bb674f07f51b116.width = this._be4d272830aa2e979f4f4886 * param1 / (-436138420 ^ -187822593 ^ 0x3D683A38 ^ 0x2FA739EF);
      }
      
      private function init() : void
      {
         this._2df2293e3bb674f07f51b116 = Debug.assertProperty(this._289e13adb76547e4ead24b6a,INSTANCE_NAME_INDICATOR);
         this._be4d272830aa2e979f4f4886 = this._2df2293e3bb674f07f51b116.width;
      }
   }
}

