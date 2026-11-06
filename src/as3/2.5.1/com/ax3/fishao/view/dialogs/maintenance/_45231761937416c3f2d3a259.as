package com.ax3.fishao.view.dialogs.maintenance
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.dialogs._0499b052ad03d68cbcb62e2a;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _45231761937416c3f2d3a259 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _7c01dc2e62578439cf920de4:uint;
      
      private var _93bf768dcd4377282dc49907:uint;
      
      public function _45231761937416c3f2d3a259()
      {
         super();
         this._7c01dc2e62578439cf920de4 = -132730812 ^ 0x0857A310 ^ 0x4A99A5B2 ^ -1160202522;
         this._93bf768dcd4377282dc49907 = -804467303 ^ 0x47C858FF ^ -727785102 ^ 0x435A7414;
      }
      
      public static function _c31664f755cb8875b11f02ba() : void
      {
         var _loc1_:_0499b052ad03d68cbcb62e2a = app.dialogFactory._81f3d76d345f5c0307101733();
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თၫႝႎႴ၅၇ၥძဋႛဧထၷ၁ီუႉჾ၈სဦႶၱჺထႴუ၏ၖბკဲაၶჺ၃ႎၜရჵႰႢဴჍဣႜဦၥძ","ႌၺါညႈ၎ႃზၖယႲၽႳအၠ჋"));
         _loc1_.show();
         _0737efdbd5337ba3fbc64b2e.GAME_FIELD_LAYER.visible = false;
         _0737efdbd5337ba3fbc64b2e.DIALOG_LAYER.visible = false;
         _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN.visible = false;
      }
      
      public function get maintenanceTime() : uint
      {
         return this._7c01dc2e62578439cf920de4;
      }
      
      public function get maintenanceIn() : uint
      {
         return this._93bf768dcd4377282dc49907;
      }
      
      public function _22bc15aea605f70091d1f36a(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._7c01dc2e62578439cf920de4 = param1.maintenanceTime;
         this._93bf768dcd4377282dc49907 = param1.maintenanceIn;
         if(param1.maintenanceTime > (-770821516 ^ -1278044117 ^ 0x0C10BCE7 ^ 0x6DCC16B8) && param1.maintenanceIn <= (0x27972CCF ^ -1805426786 ^ -1099499522 ^ 0x0D8284AF))
         {
            _c31664f755cb8875b11f02ba();
         }
      }
   }
}

