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
   
   public class _3bf19953db4932608db7f4a8 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _c35219c520479293681dc5b4:DisplayObjectContainer;
      
      private var _b45aea3d2204defce358b662:_1e21f5ea8cd03625232da448;
      
      private var _a4ff5a32568a47d201c2ea2e:TextField;
      
      public function _3bf19953db4932608db7f4a8(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._c35219c520479293681dc5b4 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._b45aea3d2204defce358b662.items = param1;
      }
      
      public function get itemsOnPage() : int
      {
         return this._b45aea3d2204defce358b662.itemsOnPage;
      }
      
      private function init() : void
      {
         this._a4ff5a32568a47d201c2ea2e = Debug.assertProperty(this._c35219c520479293681dc5b4,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刏勧劅剁刎劾刳刊勣勁務勊勆劯勿勋办勓劏刋刚刿剤剴剠剁勶勸劣剟别剠剢劝劸劣劳劔剥劲制勊剾勗","勊剸勩刱刌剝分剐劇劵勿剞劳刱劘刽"),TextField);
         this._a4ff5a32568a47d201c2ea2e.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FRUITS_CRUSH_LABEL_ITEMS_SELECTED);
         this._b45aea3d2204defce358b662 = new _1e21f5ea8cd03625232da448(controller);
         this._b45aea3d2204defce358b662.size = new Point(0x77F79F29 ^ -1934509711 ^ 0x60C5D330 ^ -1685850773,0x7C6BCDA6 ^ 0x103C9F00 ^ 0x57DAC179 ^ 0x3B8D93DE);
         var _temp_3:* = this._b45aea3d2204defce358b662;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x297A04E1 ^ 0x5A7506D0 ^ 0x61C217DF ^ 0x12CD15EE;
         _temp_3.offset = new Point(_temp_1,_temp_1);
         this._b45aea3d2204defce358b662.gap = new Point(-766595426 ^ -694087572 ^ 0x432775B2 ^ 0x47C8CB43,-511269153 ^ 0x51BEC580 ^ -1195891704 ^ 0x08804758);
         this._b45aea3d2204defce358b662.source.x = 0x269B1AA2 ^ -1446348219 ^ 0x4A94566A ^ -976931192;
         this._b45aea3d2204defce358b662.source.y = 0x731EA36D ^ -254334055 ^ 0x5278985C ^ -776925046;
         this._c35219c520479293681dc5b4.addChild(this._b45aea3d2204defce358b662.source);
      }
   }
}

