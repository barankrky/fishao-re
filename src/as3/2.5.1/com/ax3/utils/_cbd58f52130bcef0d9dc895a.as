package com.ax3.utils
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.ui.ContextMenu;
   import flash.utils.*;
   
   public class _cbd58f52130bcef0d9dc895a
   {
      
      private static var _a54bc1b84e67259dad6dca49:Stage;
      
      private static var _284df72b806d25361e0974ab:ContextMenu;
      
      private static var _853ed3dac432eb8ddfb3a776:Point = new Point(0x122419B5 ^ 0x6B4A36F0 ^ -513222083 ^ 0x67F90960,0x2694954D ^ -1809320397 ^ 0x0125AA44 ^ 0x4C693522);
      
      private static var _11793cdf9dbd3cad3b3f7698:Boolean = false;
      
      private static var _3e6641475925c333f3405378:Boolean = false;
      
      private static var _fabb810ef1a27b5b74674835:Boolean = false;
      
      private static var _f86a50200d0a525ba0b4392a:Dictionary = new Dictionary();
      
      private static var _26204fb57a6092233913c885:Dictionary = new Dictionary();
      
      private static var _fc2ae032fc7aafe8c0f0300c:Dictionary = new Dictionary();
      
      private static var _e0ebe02d3e1536089eef9185:Boolean = false;
      
      public function _cbd58f52130bcef0d9dc895a()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:int = -522919709 ^ 0x7A3BB9FC ^ -1810158867 ^ 0x650F4F23;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1399795479 ^ -1750151770 ^ -764867836 ^ -2102646117))
            {
               case 0:
                  return;
               case 1:
                  if(_e0ebe02d3e1536089eef9185)
                  {
                     _loc2_ = 0x053844BE ^ -551055138 ^ -1608274799 ^ 0x11C74421;
                  }
                  else
                  {
                     _loc2_ = -1791511011 ^ 0x190D72AC ^ 0x3A2633D4 ^ -572011593;
                  }
                  break;
               case 2:
                  _e0ebe02d3e1536089eef9185 = true;
                  _a54bc1b84e67259dad6dca49 = param1;
                  _a54bc1b84e67259dad6dca49.addEventListener(KeyboardEvent.KEY_DOWN,_cb443189ecb2ba55b3f94531,false,0x06065269 ^ -1269012916 ^ 0x06C27CF5 ^ -1265088304,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(KeyboardEvent.KEY_UP,_ee16e662b2d7bd18462ddc84,false,-1899145437 ^ 0x2D828059 ^ -2119529313 ^ 0x22E55BE5,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(MouseEvent.MOUSE_UP,handleMouseUp,false,-2007336077 ^ 0x1951B8F1 ^ -459242055 ^ 0x75AB463B,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(MouseEvent.MOUSE_DOWN,handleMouseDown,false,0x500095EB ^ -1837836295 ^ 0x05B7BCD0 ^ -943456574,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(MouseEvent.MOUSE_MOVE,_14857c1385d77ca2a1232f96,false,0x7140608A ^ -1851033741 ^ 0x0DF0E39F ^ -316935066,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(Event.MOUSE_LEAVE,_fcf1e0fbddc7a4a6b22eb2de,false,0x6989CEE0 ^ 0x0B2635CA ^ -1511425150 ^ -951680856,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,_760a3e0662928fd58b9419cd,false,-1043647068 ^ 0x3087BC60 ^ -597862933 ^ 0x2D11DC2F,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,_760a3e0662928fd58b9419cd,false,0x0D520C51 ^ -19673891 ^ 0x0828A394 ^ -72785128,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(Event.DEACTIVATE,_760a3e0662928fd58b9419cd,false,-223772674 ^ 0x17E22602 ^ -936444209 ^ 0x2D65A733,true);
                  _a54bc1b84e67259dad6dca49.addEventListener(Event.ACTIVATE,_760a3e0662928fd58b9419cd,false,0x64CED614 ^ -400970001 ^ 0x1EF616CE ^ -1843302859,true);
                  _284df72b806d25361e0974ab = new ContextMenu();
                  _284df72b806d25361e0974ab.addEventListener(Event.ACTIVATE,_760a3e0662928fd58b9419cd,false,-512913494 ^ -1031269536 ^ -744238389 ^ -263827967,true);
                  _284df72b806d25361e0974ab.addEventListener(Event.DEACTIVATE,_760a3e0662928fd58b9419cd,false,-1969277013 ^ 0x1EF57EFC ^ -1409626888 ^ 0x3F9085AF,true);
                  _284df72b806d25361e0974ab.addEventListener(ContextMenuEvent.MENU_SELECT,_760a3e0662928fd58b9419cd,false,-1500537120 ^ -1012861247 ^ 0x3D248CC2 ^ 0x580BE4E3,true);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _cb443189ecb2ba55b3f94531(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0x0E30A4B0 ^ -2072463124 ^ -1932285732 ^ -960661919;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5E62C70C ^ -159235897 ^ 0x4AAA8DEE ^ 0x226CC8C5))
            {
               case 0:
                  return;
               case 1:
                  if(!_f86a50200d0a525ba0b4392a[param1.keyCode])
                  {
                     _loc2_ = 0x1D92CEA9 ^ 0x0674BE65 ^ 0x32AF13C4 ^ -378560022;
                  }
                  else
                  {
                     _loc2_ = 0x530C87F5 ^ -1422988869 ^ 0x5F53B7E9 ^ 0x67571B47;
                  }
                  break;
               case 2:
                  _26204fb57a6092233913c885[param1.keyCode] = true;
                  _f86a50200d0a525ba0b4392a[param1.keyCode] = true;
                  _loc2_ = -1273089462 ^ 0x749E61C7 ^ -640772187 ^ -647493944;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _ee16e662b2d7bd18462ddc84(param1:KeyboardEvent) : void
      {
         _fc2ae032fc7aafe8c0f0300c[param1.keyCode] = true;
         _f86a50200d0a525ba0b4392a[param1.keyCode] = false;
      }
      
      public static function clear() : void
      {
         _fc2ae032fc7aafe8c0f0300c = new Dictionary();
         _26204fb57a6092233913c885 = new Dictionary();
         _f86a50200d0a525ba0b4392a = new Dictionary();
      }
      
      public static function _8845b961167d87e0292992e9(param1:MouseEvent) : void
      {
         if(Math.abs(param1.stageX) < (0x65230A94 ^ 0x2870BBC6 ^ -1104410366 ^ -210631696))
         {
            _853ed3dac432eb8ddfb3a776.x = param1.stageX < (0x7960D27E ^ 0x23C85FC8 ^ -1590544586 ^ -73745792) ? 0x56B47A64 ^ -312244774 ^ -1702126804 ^ 0x215C6492 : (param1.stageX > _a54bc1b84e67259dad6dca49.stageWidth ? _a54bc1b84e67259dad6dca49.stageWidth : param1.stageX);
            _853ed3dac432eb8ddfb3a776.y = param1.stageY < (-863861306 ^ 0x152E71AE ^ -670925086 ^ 0x01AE8A8A) ? -433028700 ^ 0x25D82B7E ^ 0x3C4FF37D ^ -5809753 : (param1.stageY > _a54bc1b84e67259dad6dca49.stageHeight ? _a54bc1b84e67259dad6dca49.stageHeight : param1.stageY);
         }
         _11793cdf9dbd3cad3b3f7698 = true;
         _3e6641475925c333f3405378 = true;
      }
      
      public static function handleMouseDown(param1:MouseEvent) : void
      {
         _fabb810ef1a27b5b74674835 = true;
         _8845b961167d87e0292992e9(param1);
      }
      
      public static function handleMouseUp(param1:MouseEvent) : void
      {
         _fabb810ef1a27b5b74674835 = false;
         _8845b961167d87e0292992e9(param1);
         clear();
      }
      
      public static function _14857c1385d77ca2a1232f96(param1:MouseEvent) : void
      {
         _8845b961167d87e0292992e9(param1);
      }
      
      public static function _fcf1e0fbddc7a4a6b22eb2de(param1:Event) : void
      {
         _fabb810ef1a27b5b74674835 = false;
         _11793cdf9dbd3cad3b3f7698 = false;
         clear();
      }
      
      public static function _760a3e0662928fd58b9419cd(param1:Event) : void
      {
         _fabb810ef1a27b5b74674835 = false;
         _11793cdf9dbd3cad3b3f7698 = false;
         clear();
      }
      
      public static function _021886a61ca44aa046c75d7d(... rest) : Boolean
      {
         return _a3b0aa57cc05865e7ecdd193(_f86a50200d0a525ba0b4392a,rest);
      }
      
      public static function _60a2c539896dbb206c10d498(... rest) : Boolean
      {
         return _a3b0aa57cc05865e7ecdd193(_fc2ae032fc7aafe8c0f0300c,rest);
      }
      
      public static function _86beed071caacd97d5bda149(... rest) : Boolean
      {
         var _loc2_:int = -1082939529 ^ -550535504 ^ 0x28CCE2A8 ^ 0x48903B6F;
         var _loc3_:Boolean = _a3b0aa57cc05865e7ecdd193(_26204fb57a6092233913c885,rest);
         for each(_loc2_ in rest)
         {
            _26204fb57a6092233913c885[_loc2_] = false;
         }
         return _loc3_;
      }
      
      public static function _a3b0aa57cc05865e7ecdd193(param1:Dictionary, param2:Array) : Boolean
      {
         var _loc3_:int = -867766553 ^ -338349895 ^ 0x30304783 ^ 0x17A399DD;
         for each(_loc3_ in param2)
         {
            if(param1[_loc3_])
            {
               return true;
            }
         }
         return false;
      }
   }
}

