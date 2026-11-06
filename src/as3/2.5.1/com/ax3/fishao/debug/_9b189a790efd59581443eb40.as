package com.ax3.fishao.debug
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.junkbyte.console.addons.watcher.WatchAddon;
   import flash.utils.Dictionary;
   
   public class _9b189a790efd59581443eb40
   {
      
      private static var _0c9b5bbbbbffb5c15f66d570:Dictionary = new Dictionary();
      
      private static var _ba6afb743c980240cc0cf589:Vector.<String> = new Vector.<String>();
      
      public function _9b189a790efd59581443eb40()
      {
         super();
      }
      
      public static function change(param1:String, param2:Object) : void
      {
         var _loc3_:int = 0x350F8F00 ^ -1127633291 ^ 0x5B01DA75 ^ -1145062280;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-776802648 ^ -1798647680 ^ 0x3E43981A ^ 0x1243E148))
            {
               case 0:
                  _ba6afb743c980240cc0cf589.push(param1);
                  _ba6afb743c980240cc0cf589.sort(Array.CASEINSENSITIVE);
                  _loc3_ = 0x7A990B50 ^ -919256052 ^ 0x797A520D ^ -1548854742;
                  break;
               case 1:
                  _0c9b5bbbbbffb5c15f66d570[param1] = param2;
                  WatchAddon.update();
                  return;
               case 2:
                  if(_ba6afb743c980240cc0cf589.indexOf(param1) == (-1194877752 ^ -1033398293 ^ 0x2E980F53 ^ -1412957297))
                  {
                     _loc3_ = 0x4A0DE3CF ^ -896231480 ^ 0x48BF6871 ^ -1587651828;
                  }
                  else
                  {
                     _loc3_ = 0x05D6B70F ^ 0x1F609C56 ^ 0x4F22A4E9 ^ 0x3CECC8CB;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _9ff01d8f5e11ca5f6585c584() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = "";
         for each(_loc1_ in _ba6afb743c980240cc0cf589)
         {
            _loc2_ += _loc1_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩၓ჌ဩဗვ၇ႋဣ၇Ⴗၳ","ჺဗს႕၁ၴတႧႺ၁။၇ჰႄ჏ၤ") + _0c9b5bbbbbffb5c15f66d570[_loc1_] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刬勼勪勏割剋刵勎勂刌","剶勞刯剓劸勶刘剝劆剷剐剼劣勅勰利");
         }
         return _loc2_;
      }
   }
}

