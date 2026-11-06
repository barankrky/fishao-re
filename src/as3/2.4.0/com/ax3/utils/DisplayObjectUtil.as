package com.ax3.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class DisplayObjectUtil
   {
      
      public function DisplayObjectUtil()
      {
         super();
      }
      
      public static function alignCoordinatesToInt(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:int = param1.numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            _loc2_.x = Math.round(_loc2_.x);
            _loc2_.y = Math.round(_loc2_.y);
            if(_loc2_ is DisplayObjectContainer)
            {
               alignCoordinatesToInt(DisplayObjectContainer(_loc2_));
            }
            _loc4_++;
         }
      }
      
      public static function processTextFieldBold(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:TextField = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:TextFormat = null;
         var _loc7_:int = param1.numChildren;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc2_ = param1.getChildAt(_loc8_);
            if(_loc2_ is DisplayObjectContainer)
            {
               processTextFieldBold(DisplayObjectContainer(_loc2_));
            }
            if(_loc2_ is TextField)
            {
               _loc3_ = TextField(_loc2_);
               _loc4_ = _loc3_.htmlText;
               if(_loc4_ != null && (_loc4_.indexOf("<B>") > -1 || _loc4_.indexOf("<b>") > -1))
               {
                  _loc5_ = _loc3_.text;
                  _loc3_.htmlText = "";
                  _loc6_ = _loc3_.defaultTextFormat;
                  _loc6_.bold = true;
                  _loc3_.defaultTextFormat = _loc6_;
                  _loc3_.setTextFormat(_loc6_);
                  _loc3_.text = _loc5_;
               }
            }
            _loc8_++;
         }
      }
   }
}

