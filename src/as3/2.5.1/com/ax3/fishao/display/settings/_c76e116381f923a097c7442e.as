package com.ax3.fishao.display.settings
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _c76e116381f923a097c7442e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _d3101e0f7a2b6f22bfdff74b:DisplayObjectContainer;
      
      private var _647728a2b16ca176bae80f16:BitmapData;
      
      private var _dddde1ab4912ca0cf1b22792:String;
      
      public function _c76e116381f923a097c7442e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer, param3:String)
      {
         this._d3101e0f7a2b6f22bfdff74b = param2;
         this._dddde1ab4912ca0cf1b22792 = param3;
         super(param1,this._d3101e0f7a2b6f22bfdff74b);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Bitmap = null;
         _loc1_ = Debug.assertProperty(this._d3101e0f7a2b6f22bfdff74b,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揽掼捛捺捊挊捵挩掦揲揣挹揥揃挎捯挞捦","揵掆挅捥挽掗揉掉掔揚掅揺挱挸揅挜"),DisplayObjectContainer);
         var _loc3_:TextField = Debug.assertProperty(_loc1_,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠掄掱捷挽掗掌捶捿揉挙捭挻挳捺援掎掔","挲掕揬挗挲捵挆挅挛揞掟捇揞挼捂掀"),TextField);
         var _loc4_:Number = _loc3_.textHeight;
         var _loc5_:_73899a4de8f83c8d2c26f545 = new _73899a4de8f83c8d2c26f545(_loc3_);
         _loc5_.needCenteredText = false;
         _loc5_.text = _c2ad9d37d7be0097d6d2e977.get(this._dddde1ab4912ca0cf1b22792);
         _loc4_ -= _loc3_.textHeight;
         this._647728a2b16ca176bae80f16 = new BitmapData(_loc3_.width,_loc3_.height,true,0x6F319063 ^ -844362730 ^ 0x5E68BD3C ^ -51044023);
         this._647728a2b16ca176bae80f16.draw(_loc3_);
         _loc2_ = new Bitmap(this._647728a2b16ca176bae80f16);
         _loc2_.smoothing = true;
         _loc2_.x = _loc3_.x;
         _loc2_.y = _loc3_.y + _loc4_;
         _loc2_.rotation = _loc3_.rotation;
         _loc3_.visible = false;
         _loc1_.addChild(_loc2_);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         super.show(param1,param2);
         (this._d3101e0f7a2b6f22bfdff74b as MovieClip).gotoAndPlay(-245105637 ^ 0x648AE4C5 ^ -2105938392 ^ 0x1790F6F6);
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         super.hide(param1,param2);
         (this._d3101e0f7a2b6f22bfdff74b as MovieClip).gotoAndStop(-314966824 ^ 0x72E08284 ^ 0x30E57B81 ^ -1355020835);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._647728a2b16ca176bae80f16.dispose();
         this._647728a2b16ca176bae80f16 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

