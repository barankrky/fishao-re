package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.weather._14b1db7c3b67b592d467704b;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.managers._de89e27ae8b90e70822b4fad;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _04be5e604d9554b1e12ed3f1 extends Sprite
   {
      
      private var _94912ca0a7f74119ed75b489:_da93b7e4b1cf62dcb698e0bd;
      
      private var _db0e17c3f6406c5b59149b30:_14b1db7c3b67b592d467704b;
      
      public function _04be5e604d9554b1e12ed3f1()
      {
         super();
         mouseChildren = false;
         mouseEnabled = false;
      }
      
      public function set weatherType(param1:_da93b7e4b1cf62dcb698e0bd) : void
      {
         var _loc2_:Rectangle = null;
         if(this._94912ca0a7f74119ed75b489 != param1 && (param1 == _da93b7e4b1cf62dcb698e0bd.SUNNY || _de89e27ae8b90e70822b4fad.CAN_CHANGE_WEATHER))
         {
            if(Boolean(this._94912ca0a7f74119ed75b489) && this._94912ca0a7f74119ed75b489.soundFile != null)
            {
               _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(this._94912ca0a7f74119ed75b489.soundFile);
            }
            if(Boolean(param1) && param1.soundFile != null)
            {
               _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(param1.soundFile);
            }
            this._94912ca0a7f74119ed75b489 = param1;
            if(this._db0e17c3f6406c5b59149b30 != null)
            {
               this._db0e17c3f6406c5b59149b30.destroy();
            }
            this._db0e17c3f6406c5b59149b30 = this._94912ca0a7f74119ed75b489._615183315c997eac82dcb913();
            if(this._db0e17c3f6406c5b59149b30 != null)
            {
               _loc2_ = scrollRect;
               if(_loc2_ != null)
               {
                  this._db0e17c3f6406c5b59149b30.scrollRect = _loc2_;
               }
               addChild(DisplayObject(this._db0e17c3f6406c5b59149b30));
            }
         }
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         var _loc2_:int = -953226740 ^ -316930002 ^ 0x1150262B ^ 0x2457053E;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4BCB380E ^ -509004827 ^ -1375177809 ^ 0x1B5FB973))
            {
               case 0:
                  super.scrollRect = param1;
                  if(this._db0e17c3f6406c5b59149b30 != null)
                  {
                     _loc2_ = 0x404DC771 ^ -936185084 ^ 0x4F52C015 ^ -669502122;
                  }
                  else
                  {
                     _loc2_ = 0x0FFF0CF7 ^ 0x3DF921D4 ^ -1741564434 ^ -1258145288;
                  }
                  break;
               case 1:
                  this._db0e17c3f6406c5b59149b30.scrollRect = param1;
                  _loc2_ = 0x678ABACC ^ -588757578 ^ -1248133853 ^ 0x11CDC36C;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x26D369B8 ^ 0x77060D89 ^ -499345115 ^ 0x757C7142;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x1E72C25A ^ 0x5521A55D ^ -654905045 ^ 0x55301A78))
            {
               case 0:
                  removeAllChildren(this);
                  return;
               case 1:
                  this._db0e17c3f6406c5b59149b30.destroy();
                  _loc1_ = -323998328 ^ -488948774 ^ -1598428344 ^ 0x6847714E;
                  break;
               case 2:
                  this._94912ca0a7f74119ed75b489 = null;
                  if(this._db0e17c3f6406c5b59149b30 != null)
                  {
                     _loc1_ = -77441006 ^ 0x4FA28EE8 ^ 0x58C59C6C ^ 0x2A90C6C3;
                  }
                  else
                  {
                     _loc1_ = -120493873 ^ -1234334508 ^ -1196666563 ^ 0x30853972;
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

