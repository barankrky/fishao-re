package com.ax3.display.tfs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import avmplus.getQualifiedClassName;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.describeType;
   
   public class _bb16db8e79db6c61890c313e
   {
      
      public function _bb16db8e79db6c61890c313e()
      {
         super();
      }
      
      public static function _e6de6d06892c6eda16267d9c(param1:TextField, param2:Array) : void
      {
         var _loc3_:_54f9b8840449ba06a43df78c = null;
         for each(_loc3_ in param2)
         {
            _b506f60c123aa29008a831c0(param1,_loc3_.parentStyles);
            _73b9fa372e056e3ff99b5169(param1,_loc3_.format);
            _9980bbe6bcb0c8b4f34642e1(param1,_loc3_.params);
         }
      }
      
      private static function _b506f60c123aa29008a831c0(param1:TextField, param2:Array) : void
      {
         if(param2 != null && param2.length > (-1898828017 ^ -1237232887 ^ -2102752059 ^ -1170607933))
         {
            _e6de6d06892c6eda16267d9c(param1,param2);
         }
      }
      
      private static function _73b9fa372e056e3ff99b5169(param1:TextField, param2:Object) : void
      {
         var _loc3_:TextFormat = null;
         if(param2 is TextFormat)
         {
            _loc3_ = param2 as TextFormat;
         }
         else
         {
            _loc3_ = param1.defaultTextFormat;
            _9980bbe6bcb0c8b4f34642e1(_loc3_,param2);
         }
         param1.defaultTextFormat = _loc3_;
         param1.setTextFormat(_loc3_);
      }
      
      public static function _9980bbe6bcb0c8b4f34642e1(param1:Object, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(getQualifiedClassName(param2) == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捐捈掭挆揮挿掀揯捊捱按捘捀挧揳挛掯揬揣挻","捝揞掓挄掫掖挐揪挣挵挎捺握掯挥捨"))
         {
            for(_loc3_ in param2)
            {
               if(param1.hasOwnProperty(_loc3_))
               {
                  param1[_loc3_] = param2[_loc3_];
               }
            }
         }
      }
      
      public static function _a7e5a08ac5f225cac2ab429d(param1:Object, param2:Object, param3:Array = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         if(param3 == null)
         {
            param3 = [];
         }
         if(param2 != null)
         {
            if(getQualifiedClassName(param2) == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揊揨揊捰捙捗揤掤揮捴挷掁挓援挷挐捇揙挿揖","捛描挳捂持捭掔挦挫挆捔挒捚掺挚挔"))
            {
               for(_loc4_ in param2)
               {
                  if(param1.hasOwnProperty(_loc4_) && param3.indexOf(_loc7_) == (0x44AFDCF7 ^ -1812028609 ^ -305931982 ^ -982689531))
                  {
                     param1[_loc4_] = param2[_loc4_];
                  }
               }
            }
            else
            {
               _loc5_ = describeType(param2);
               for each(_loc6_ in _loc5_.accessor)
               {
                  _loc4_ = String(_loc6_.@name);
                  _loc7_ = String(_loc6_.@access);
                  if(param1.hasOwnProperty(_loc4_) && (_loc7_ == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔副劜利努勫剽剈剚刍刣勡剶刎剾劀刨勍劔勷刢刡则勠刈劎","則刚劤則刑刊到劲勡勇剸劑劈剷勋劀") || _loc7_ == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠掭挽挟挮揻捐按据揶挩換捓捘掇挬捑掬","挘揲捁掿按捻挙掮掻掜掹挗挬掩揖挵")) && param3.indexOf(_loc7_) == (-1375489937 ^ 0x7A0D60E4 ^ -1393942913 ^ -2028261109))
                  {
                     param1[_loc4_] = param2[_loc4_];
                  }
               }
            }
         }
      }
      
      public static function _84119af9a67b41e6123c41e6(param1:TextField, param2:TextField) : void
      {
         var _loc3_:TextFormat = param2.defaultTextFormat;
         param1.setTextFormat(_loc3_);
         param1.defaultTextFormat = _loc3_;
         _bb16db8e79db6c61890c313e._a7e5a08ac5f225cac2ab429d(param1,param2,[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဎဉთ჉ါ၏ၰ჋ღၵႉၙვၮჃ႟Ⴘၓჺჿ႔ႚအဌ","ုჷေၸპတ၈ဤၙ႔ႤჟႚၳტႹ")]);
      }
      
      public static function _a878a7ca348c8a0a06817029(param1:Object, param2:Object, param3:Array) : void
      {
         if(!(param1 is String))
         {
            param1 = param1.toString();
         }
         param3[param2] = parseInt(String(param1));
      }
   }
}

