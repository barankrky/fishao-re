package com.ax3.display.ui
{
   import com.ax3.display.tfs.ParamsApplier;
   import com.ax3.text.SizebleByWidthTextField;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UIUtil
   {
      
      private static const GRADIENT_PADDING:int = 5;
      
      public function UIUtil()
      {
         super();
      }
      
      public static function createTextFieldWithTSL(param1:String, param2:Array, param3:Object = null, param4:int = 0, param5:int = 0) : TextField
      {
         var _loc6_:TextField = null;
         _loc6_ = new TextField();
         _loc6_.x = param4;
         _loc6_.y = param5;
         _loc6_.text = param1;
         ParamsApplier.applyTextFieldStyles(_loc6_,param2);
         _loc6_.x = param4;
         _loc6_.y = param5;
         if(param3 != null)
         {
            param3.addChild(_loc6_);
         }
         return _loc6_;
      }
      
      public static function createSizebleTextFieldWithTSL(param1:String, param2:Array, param3:Object = null, param4:int = 0, param5:int = 0, param6:Boolean = true) : SizebleByWidthTextField
      {
         var _loc7_:SizebleByWidthTextField = null;
         _loc7_ = new SizebleByWidthTextField(param6);
         _loc7_.x = param4;
         _loc7_.y = param5;
         _loc7_.text = param1;
         ParamsApplier.applyTextFieldStyles(_loc7_,param2);
         if(param3 != null)
         {
            param3.addChild(_loc7_);
         }
         return _loc7_;
      }
      
      public static function createTextField(param1:String, param2:int, param3:int, param4:Object, param5:Object = null, param6:Boolean = true, param7:Object = null) : TextField
      {
         var _loc8_:* = undefined;
         var _loc9_:TextFormat = null;
         var _loc10_:Object = null;
         if(!param5)
         {
            param5 = new Object();
         }
         var _loc11_:TextField = new TextField();
         _loc11_.x = param2;
         _loc11_.y = param3;
         if(param4 is TextFormat)
         {
            _loc11_.defaultTextFormat = param4 as TextFormat;
         }
         else
         {
            _loc9_ = new TextFormat(param4.font);
            for(_loc8_ in param4)
            {
               if(_loc9_.hasOwnProperty(_loc8_))
               {
                  _loc9_[_loc8_] = param4[_loc8_];
               }
            }
            if(param4.fauxbold)
            {
               _loc11_.filters = [new GlowFilter(param4.color,0.8,1.2,1.2,2)];
            }
            _loc11_.defaultTextFormat = _loc9_;
         }
         _loc11_.text = param1;
         if(param6)
         {
            _loc10_ = {
               "selectable":false,
               "mouseEnabled":false
            };
            if(!param5.autoSize)
            {
               param5.autoSize = TextFieldAutoSize.NONE;
            }
            for(_loc8_ in _loc10_)
            {
               if(_loc11_.hasOwnProperty(_loc8_))
               {
                  _loc11_[_loc8_] = _loc10_[_loc8_];
               }
            }
         }
         for(_loc8_ in param5)
         {
            if(_loc11_.hasOwnProperty(_loc8_))
            {
               _loc11_[_loc8_] = param5[_loc8_];
            }
         }
         _loc11_.height = _loc11_.textHeight + 5;
         _loc11_.x = param2;
         if(param7)
         {
            param7.addChild(_loc11_);
         }
         return _loc11_;
      }
      
      public static function createGradientText(param1:TextField, param2:Array) : Sprite
      {
         param1.cacheAsBitmap = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Rectangle = getVisibleBounds(param1);
         createBitmap(param1);
         _loc4_.x += param1.x;
         _loc4_.y += param1.y;
         var _loc5_:Sprite = createGradientSprite(_loc4_.width + GRADIENT_PADDING * 2,_loc4_.height + GRADIENT_PADDING * 2,param2);
         _loc5_.x = _loc4_.x - GRADIENT_PADDING;
         _loc5_.y = _loc4_.y - GRADIENT_PADDING;
         _loc5_.cacheAsBitmap = true;
         _loc3_.addChild(_loc5_);
         _loc3_.addChild(param1);
         _loc5_.mask = param1;
         return _loc3_;
      }
      
      private static function createBitmap(param1:TextField) : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true);
         _loc2_.draw(param1);
         return new Bitmap(_loc2_);
      }
      
      private static function createGradientSprite(param1:int, param2:int, param3:Array) : Sprite
      {
         var _loc4_:Sprite = new Sprite();
         _loc4_.x = -param1 / 2;
         _loc4_.y = -param2 / 2;
         var _loc5_:String = GradientType.LINEAR;
         var _loc6_:Array = [1,1];
         var _loc7_:Array = [0,255];
         var _loc8_:Matrix = new Matrix();
         _loc8_.createGradientBox(param1 * 0.5,param2 * 0.5,-Math.PI / 2,param1 * 0.4,param2 * 0.4);
         var _loc9_:String = SpreadMethod.PAD;
         _loc4_.graphics.beginGradientFill(_loc5_,param3,_loc6_,_loc7_,_loc8_,_loc9_);
         _loc4_.graphics.drawRect(0,0,param1,param2);
         return _loc4_;
      }
      
      public static function getVisibleBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:BitmapData = getVisibleBitmap(param1);
         var _loc3_:Rectangle = _loc2_.getColorBoundsRect(4294967295,0,false);
         _loc2_.dispose();
         return _loc3_;
      }
      
      private static function getVisibleBitmap(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Matrix = new Matrix();
         _loc2_.tx = -param1.getBounds(null).x;
         _loc2_.ty = -param1.getBounds(null).y;
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc3_.draw(param1,_loc2_);
         return _loc3_;
      }
      
      public static function getFontSizeByTextLength(param1:int, param2:int, param3:int, param4:Number, param5:Number) : Number
      {
         var _loc6_:int = param3 - param2;
         var _loc7_:Number = (_loc6_ - (param1 - param2)) / _loc6_;
         _loc7_ = Math.max(Math.min(1,_loc7_),0);
         return param4 + (param5 - param4) * _loc7_;
      }
      
      public static function setUnderline(param1:TextField, param2:String) : void
      {
         param1.autoSize = param2;
         var _loc3_:TextFormat = param1.defaultTextFormat;
         _loc3_.underline = true;
         param1.defaultTextFormat = _loc3_;
      }
   }
}

