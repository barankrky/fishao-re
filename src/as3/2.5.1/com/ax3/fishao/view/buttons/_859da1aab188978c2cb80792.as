package com.ax3.fishao.view.buttons
{
   import assets.common.ColorButton;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.filters.DropShadowFilter;
   import flash.geom.ColorTransform;
   
   public class _859da1aab188978c2cb80792 extends ColorButton implements IMovieListElement
   {
      
      public var index:int;
      
      public var showColor:uint;
      
      public var shopItemColor:_91aad973ddd3030366bf3e1f;
      
      public function _859da1aab188978c2cb80792(param1:_91aad973ddd3030366bf3e1f, param2:int)
      {
         var _loc3_:ColorTransform = null;
         _loc3_ = null;
         super();
         this.shopItemColor = param1;
         buttonMode = true;
         this.index = param2;
         _loc3_ = new ColorTransform();
         this.showColor = param1.color;
         _loc3_.color = this.showColor;
         var _temp_6:* = §§findproperty(DropShadowFilter);
         var _temp_5:* = -1353253528 ^ 0x14156DAA ^ 0x0F7F274B ^ -1271089269;
         var _temp_4:* = 0x17A8CEF1 ^ 0x2495CAF9 ^ -83772585 ^ -935543035;
         var _temp_3:* = this.showColor & (-1484635408 ^ -367891056 ^ 0x6D3064D0 ^ 0x206C877C);
         var _temp_2:* = -1138626540 ^ -1378674164 ^ 0x2DF20AA6 ^ 0x3C00E0BF;
         var _temp_1:* = -1683990804 ^ 0x4C04B9EF ^ 0x4DE41C ^ -672593121;
         var _loc4_:DropShadowFilter = new DropShadowFilter(_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,0x6FD0B57E ^ 0x48F4875D ^ 0x6BF3BFC0 ^ 0x4CD78DE2,0x35C70C90 ^ -769132429 ^ 0x4BA4BA56 ^ -1404809546);
         this.color.filters = [_loc4_];
         Shape(color.getChildAt(-2030067393 ^ -53720078 ^ -1502499552 ^ -599635987)).transform.colorTransform = _loc3_;
         clearBackground(this);
      }
      
      public static function clearBackground(param1:_859da1aab188978c2cb80792) : void
      {
         param1.bg.visible = false;
      }
      
      public static function _35429b999fd955f4bca43653(param1:_859da1aab188978c2cb80792) : void
      {
         param1.bg.visible = true;
      }
      
      public static function _9617509d9b3eb20b089d0bee(param1:MovieClip) : Boolean
      {
         return param1.bg.visible;
      }
      
      public function getCurrentElementIdex() : int
      {
         return this.index;
      }
   }
}

