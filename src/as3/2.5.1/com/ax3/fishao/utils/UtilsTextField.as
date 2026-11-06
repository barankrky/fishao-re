package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
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
         var _loc4_:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჽၫძၝဖဟာჯჇေ","ဍပဧყဎჵအၟျ၃ဌო၈ჭခႻ");
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
         _loc4_.text = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵掋掆掭捖捉掟揝揹挑捘掓","挐揑挰挟接掼换挩挂捆挪挪排揜掳捍");
         return _loc4_.textWidth - getCharWidth(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剸删刳劰劭剰劬刁别劰","刃劐剾勞剆勠刬剼剥剼刘劂刿劻剔剈"));
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
         param1.width = 0x6ED5A05C ^ 0x64D977F8 ^ 0x20609B7E ^ 0x2A6C4CDB;
         param1.autoSize = TextFieldAutoSize.LEFT;
         param1.height = -761219424 ^ 0x144552A2 ^ -2101611592 ^ 0x445E17BB;
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

