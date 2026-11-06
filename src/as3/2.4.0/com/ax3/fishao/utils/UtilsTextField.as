package com.ax3.fishao.utils
{
   import com.ax3.fishao.debug.Debug;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UtilsTextField
   {
      
      public function UtilsTextField()
      {
         super();
      }
      
      public static function getCharWidth(param1:TextField, param2:String) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = "W";
         var _loc5_:TextFormat = param1.getTextFormat();
         var _loc6_:TextField = new TextField();
         _loc6_.defaultTextFormat = _loc5_;
         _loc6_.appendText(param2);
         _loc6_.appendText(_loc4_);
         var _loc7_:TextField = new TextField();
         _loc7_.defaultTextFormat = _loc5_;
         _loc7_.text = _loc4_;
         return _loc6_.textWidth - _loc7_.textWidth;
      }
      
      public static function getSpaceWidth(param1:TextField) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:TextFormat = param1.getTextFormat();
         var _loc4_:TextField = new TextField();
         _loc4_.defaultTextFormat = _loc3_;
         _loc4_.text = " W";
         return _loc4_.textWidth - getCharWidth(param1,"W");
      }
      
      public static function createTextFieldWithFormat(param1:TextField) : TextField
      {
         Debug.assertNotEqual(param1,null);
         var _loc2_:TextField = new TextField();
         _loc2_.text = param1.text;
         _loc2_.setTextFormat(param1.defaultTextFormat);
         _loc2_.defaultTextFormat = param1.defaultTextFormat;
         _loc2_.antiAliasType = param1.antiAliasType;
         _loc2_.gridFitType = param1.gridFitType;
         _loc2_.filters = param1.filters;
         _loc2_.selectable = param1.selectable;
         _loc2_.multiline = param1.multiline;
         _loc2_.wordWrap = param1.wordWrap;
         _loc2_.htmlText = param1.htmlText;
         _loc2_.sharpness = param1.sharpness;
         _loc2_.thickness = param1.thickness;
         _loc2_.styleSheet = param1.styleSheet;
         return _loc2_;
      }
      
      public static function fitTextFieldToText(param1:TextField) : TextField
      {
         param1.width = 1;
         param1.autoSize = TextFieldAutoSize.LEFT;
         param1.height = 1;
         return param1;
      }
      
      public static function createTextFieldCopy(param1:TextField) : TextField
      {
         var _loc2_:TextField = createTextFieldWithFormat(param1);
         _loc2_.autoSize = TextFieldAutoSize.NONE;
         _loc2_.scaleX = param1.scaleX;
         _loc2_.scaleY = param1.scaleY;
         _loc2_.x = int(param1.x);
         _loc2_.y = int(param1.y);
         _loc2_.width = int(param1.width);
         _loc2_.height = int(param1.height);
         _loc2_.text = param1.text;
         _loc2_.setTextFormat(param1.defaultTextFormat);
         return _loc2_;
      }
      
      public static function setBoldFont(param1:TextField, param2:Boolean = true) : void
      {
         var _loc3_:TextFormat = param1.defaultTextFormat;
         _loc3_.bold = param2;
         param1.setTextFormat(_loc3_);
         param1.defaultTextFormat = _loc3_;
      }
   }
}

