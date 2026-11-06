package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
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
         var _loc4_:int = -325375681 ^ -42417277 ^ 0x43BB5224 ^ 0x5258B898;
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
         var _loc8_:int = 0x7895C10A ^ -2091199543 ^ 0x3211DC80 ^ -908145085;
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
               if(_loc4_ != null && (_loc4_.indexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴤၝဠ႑႘့რ၎Ⴙ႘ဴჳု႟","ႾႺႊაဨჵႽႈ႑სၓႝႼဖ႖ဣ")) > (0x688A503E ^ -1902928100 ^ 0x3E0B2D56 ^ 0x27ED1D8B) || _loc4_.indexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揜捒捜掿掠揻揄掄捒揠揨捖掩捪","挙挩挂揲換揸挧捈掏捥揥掟掫掆挞排")) > (-102538668 ^ 0x71805E01 ^ 0x5AD5DE72 ^ 0x2D491DD8)))
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

