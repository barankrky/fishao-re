package com.ax3.fishao.view.dialogs.fruits.views
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _ccb4e4f9c95c5b9aadd2c60e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _4d11b5219e436521a66d6ac5:DisplayObjectContainer;
      
      private var _299a0253b4b8d5fa507b45a2:_1e21f5ea8cd03625232da448;
      
      private var _6cbe32a7f2728a9c6b05a403:TextField;
      
      public function _ccb4e4f9c95c5b9aadd2c60e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._4d11b5219e436521a66d6ac5 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._299a0253b4b8d5fa507b45a2.items = param1;
      }
      
      public function get itemsOnPage() : int
      {
         return this._299a0253b4b8d5fa507b45a2.itemsOnPage;
      }
      
      private function init() : void
      {
         this._6cbe32a7f2728a9c6b05a403 = Debug.assertProperty(this._4d11b5219e436521a66d6ac5,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘刧劌刧劍別刲刷勸刐劎剴剏勊劗刪劶刿刳勅剐剨剩剘剅刘则勳势动勨勶勔剘剠剼剽劼剛刺効创劁刡剀刺","勋助助勖刜剒動势勋刑劐动劂劇勠劄"),TextField);
         this._6cbe32a7f2728a9c6b05a403.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FRUITS_CRUSH_LABEL_ITEMS_INVENTORY);
         this._299a0253b4b8d5fa507b45a2 = new _1e21f5ea8cd03625232da448(controller);
         var _temp_3:* = this._299a0253b4b8d5fa507b45a2;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -549455936 ^ -758882204 ^ -2117769407 ^ -1942032154;
         _temp_3.size = new Point(_temp_1,_temp_1);
         var _temp_6:* = this._299a0253b4b8d5fa507b45a2;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = 0x0C87D6ED ^ 0x0608CD34 ^ -585185559 ^ -678306512;
         _temp_6.offset = new Point(_temp_4,_temp_4);
         var _temp_9:* = this._299a0253b4b8d5fa507b45a2;
         var _temp_8:* = §§findproperty(Point);
         var _temp_7:* = -1568307017 ^ -2039566897 ^ -2043241014 ^ -1562527560;
         _temp_9.gap = new Point(_temp_7,_temp_7);
         this._299a0253b4b8d5fa507b45a2.source.x = -28533003 ^ 0x06A256AB ^ -25874551 ^ 0x069BE7D2;
         this._299a0253b4b8d5fa507b45a2.source.y = 0x4EEF3A6E ^ -1902029642 ^ -2036311982 ^ 0x46EE36A8;
         this._4d11b5219e436521a66d6ac5.addChild(this._299a0253b4b8d5fa507b45a2.source);
      }
   }
}

