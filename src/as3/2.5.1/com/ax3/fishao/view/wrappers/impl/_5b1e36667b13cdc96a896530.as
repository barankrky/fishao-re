package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class _5b1e36667b13cdc96a896530 implements IAssetWrapper
   {
      
      private var _d75acc6d1188c1b8ddf1e2c3:DisplayObjectContainer;
      
      public function _5b1e36667b13cdc96a896530()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._d75acc6d1188c1b8ddf1e2c3 = DisplayObjectContainer(param1);
      }
      
      public function addChild(param1:MovieClip) : void
      {
         var _loc2_:int = -1420225426 ^ 0x6195B588 ^ -1397480014 ^ -1053910818;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1201011232 ^ 0x6257A6A9 ^ -279955401 ^ -1841592330))
            {
               case 0:
                  this._d75acc6d1188c1b8ddf1e2c3.addChild(param1);
                  return;
               case 1:
                  this._d75acc6d1188c1b8ddf1e2c3.removeChildAt(-763420441 ^ -1176965913 ^ 0x0C79E25D ^ 0x67DE2E5D);
                  _loc2_ = 0x299C3060 ^ -480581475 ^ -1019920999 ^ -1364854292;
                  break;
               case 2:
                  if(this._d75acc6d1188c1b8ddf1e2c3.numChildren != (0x38BC4B30 ^ 0x7966937C ^ -275131719 ^ -1371337995))
                  {
                     _loc2_ = -303901767 ^ -479480089 ^ -263370168 ^ 0x5992339F;
                  }
                  else
                  {
                     _loc2_ = -1010413442 ^ 0x0BB07C47 ^ 0x66DA7F8A ^ 0x09FA4F3B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

