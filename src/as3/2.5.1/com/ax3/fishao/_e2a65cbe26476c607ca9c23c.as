package com.ax3.fishao
{
   import com.ax3.net._117d96a65525aa940c54311c;
   import flash.utils.Dictionary;
   
   public class _e2a65cbe26476c607ca9c23c
   {
      
      private static var _566aace1c3255e41bd24fba1:_e2a65cbe26476c607ca9c23c;
      
      public static var LOGIN:int = 0x7CEE681F ^ 0x260E3158 ^ 0x2619C5BA ^ 0x7CF99CFC;
      
      public static var CHARACTER_EDITOR:int = 0x18FA6BFC ^ 0x67FD98EC ^ 0x3FC70B41 ^ 0x40C0F853;
      
      public static var MAP:int = 0x24AA9DB4 ^ 0x0E2D25D6 ^ 0x290B7A13 ^ 0x038CC272;
      
      private var _402af562b368714cfb2e908f:Dictionary;
      
      private var _766f080b8e970f4e663e93ce:Array;
      
      public function _e2a65cbe26476c607ca9c23c()
      {
         super();
         this._402af562b368714cfb2e908f = new Dictionary();
         this._766f080b8e970f4e663e93ce = [];
      }
      
      public static function getInstance() : _e2a65cbe26476c607ca9c23c
      {
         var _loc1_:int = -1202850393 ^ -1185461633 ^ 0x7CD9032E ^ -1728042523;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-337640776 ^ 0x66448EFA ^ -1885128375 ^ -423354342))
            {
               case 0:
                  return _566aace1c3255e41bd24fba1;
               case 1:
                  _566aace1c3255e41bd24fba1 = new _e2a65cbe26476c607ca9c23c();
                  _loc1_ = -66468062 ^ -1365440141 ^ 0x09AF1569 ^ -1074246103;
                  break;
               case 2:
                  if(_566aace1c3255e41bd24fba1 == null)
                  {
                     _loc1_ = 0x1387D37B ^ -474498384 ^ -1373439219 ^ -1160706090;
                  }
                  else
                  {
                     _loc1_ = 0x71C55A79 ^ 0x78FBECE7 ^ 0x4D2A0BE7 ^ -1596512152;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c5f1c74440e50e45796b8d63(param1:_117d96a65525aa940c54311c) : void
      {
         var _loc2_:int = 0x563BB857 ^ -1484886667 ^ 0x2C07E412 ^ -1326438044;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x35C184E6 ^ 0x2ED67A23 ^ 0x2929EC34 ^ 0x5F8C0AA4))
            {
               case 0:
                  this._766f080b8e970f4e663e93ce.push(param1.itemType);
                  _loc2_ = -1388388465 ^ 0x67B54B44 ^ -1841528944 ^ 0x3505F30C;
                  break;
               case 1:
                  this._402af562b368714cfb2e908f[param1.itemType] = param1;
                  if(this._766f080b8e970f4e663e93ce.indexOf(param1.itemType) == (-759193444 ^ -868375459 ^ 0x391C39EF ^ -664681775))
                  {
                     _loc2_ = 0x1B1391A2 ^ 0x36E8780B ^ -1385152745 ^ -314978581;
                  }
                  else
                  {
                     _loc2_ = 0x18551F5A ^ 0x696FE5BC ^ -753191540 ^ -812394691;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _7e16f6ce85c42cbe568d0746() : void
      {
         var _loc1_:_117d96a65525aa940c54311c = null;
         if(this._766f080b8e970f4e663e93ce.length == (-1296185754 ^ -1800189564 ^ -198275370 ^ -769654476))
         {
            this._402af562b368714cfb2e908f = new Dictionary();
            return;
         }
         var _loc2_:int = this._766f080b8e970f4e663e93ce.shift();
         if(this._402af562b368714cfb2e908f[_loc2_] != null)
         {
            _loc1_ = this._402af562b368714cfb2e908f[_loc2_];
            if(_loc1_.executionChecker == null || Boolean(_loc1_.executionChecker.apply(this)))
            {
               _loc1_.executor.apply(this);
            }
            else
            {
               this._7e16f6ce85c42cbe568d0746();
            }
         }
         else
         {
            this._7e16f6ce85c42cbe568d0746();
         }
      }
   }
}

