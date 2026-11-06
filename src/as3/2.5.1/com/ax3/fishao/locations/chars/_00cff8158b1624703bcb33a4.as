package com.ax3.fishao.locations.chars
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class _00cff8158b1624703bcb33a4 extends Bitmap
   {
      
      private var _e8a5721ce2ba37169c41665c:Function = null;
      
      public var direction:int = 0;
      
      public var params:Object = null;
      
      public function _00cff8158b1624703bcb33a4()
      {
         super();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         super.bitmapData = param1;
         this._263e9abb8fd585f74e171a57();
      }
      
      private function _263e9abb8fd585f74e171a57() : void
      {
         var _loc1_:int = 0x7B35D99B ^ 0x2586D83C ^ 0x1AE37E1A ^ -1725397772;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7071F77A ^ -10183734 ^ 0x05F6BBEA ^ 0x579B2C13))
            {
               case 0:
                  if(this._e8a5721ce2ba37169c41665c != null)
                  {
                     _loc1_ = 0x3D9260D8 ^ 0x2B720AED ^ 0x76F62D4D ^ -1116816333;
                  }
                  else
                  {
                     _loc1_ = -202141437 ^ -628939065 ^ 0x4DE33696 ^ -1175750118;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._e8a5721ce2ba37169c41665c.call(this);
                  _loc1_ = 0x1650F076 ^ 0x1A7086B4 ^ -371133951 ^ 0x38B87F8B;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         this._e8a5721ce2ba37169c41665c = null;
         this.params = null;
      }
      
      public function set updateCallback(param1:Function) : void
      {
         this._e8a5721ce2ba37169c41665c = param1;
      }
   }
}

