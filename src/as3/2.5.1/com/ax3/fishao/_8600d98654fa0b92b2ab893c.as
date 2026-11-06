package com.ax3.fishao
{
   public class _8600d98654fa0b92b2ab893c
   {
      
      private static var _c48ef93a6b5d50345892e9c2:_8600d98654fa0b92b2ab893c;
      
      private var _713f999d2b3ceb83ded70602:Object = {};
      
      public function _8600d98654fa0b92b2ab893c()
      {
         super();
      }
      
      public static function getInstance() : _8600d98654fa0b92b2ab893c
      {
         var _loc1_:int = -1182067876 ^ -467989069 ^ -1973660314 ^ -1843800242;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x58B14AF8 ^ 0x1C0CA90E ^ 0x5D662FEA ^ 0x5C0E50DA))
            {
               case 0:
                  return _c48ef93a6b5d50345892e9c2;
               case 1:
                  if(_c48ef93a6b5d50345892e9c2 == null)
                  {
                     _loc1_ = 0x1C135765 ^ 0x53AD5111 ^ -204653513 ^ -106518905;
                  }
                  else
                  {
                     _loc1_ = 0x2B3A1C9E ^ 0x1612E32F ^ 0x7500890F ^ 0x0DFDEA78;
                  }
                  break;
               case 2:
                  _c48ef93a6b5d50345892e9c2 = new _8600d98654fa0b92b2ab893c();
                  _loc1_ = 0x396796A3 ^ -329709174 ^ -1582521422 ^ 0x3147A05D;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function addCallback(param1:int, param2:Function = null) : void
      {
         this._713f999d2b3ceb83ded70602[param1] = param2;
      }
      
      public function _538473a0d0fd38d70f9c5953(param1:Object) : void
      {
         var _loc2_:int = -466890364 ^ -2018914186 ^ -1524754475 ^ -1407511418;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-280087994 ^ -628897574 ^ 0x4BBBB7F8 ^ 0x14F14FC6))
            {
               case 0:
                  return;
               case 1:
                  if(this._713f999d2b3ceb83ded70602[param1.reqId] != null)
                  {
                     _loc2_ = 0x490E0130 ^ 0x79533651 ^ 0x30F87899 ^ 0x6A224D58;
                  }
                  else
                  {
                     _loc2_ = 0x31231A12 ^ -640098134 ^ -2101682661 ^ 0xC62601;
                  }
                  break;
               case 2:
                  this._713f999d2b3ceb83ded70602[param1.reqId].call(null,param1);
                  _loc2_ = -1681540883 ^ -1215774834 ^ -208731522 ^ -1253767233;
                  break;
               case 3:
                  if(this._713f999d2b3ceb83ded70602.hasOwnProperty(param1.reqId))
                  {
                     _loc2_ = 0x6438C69B ^ 0x33819F2B ^ -649983695 ^ -461614558;
                  }
                  else
                  {
                     _loc2_ = 0x02BEF68A ^ 0x5C34EEF4 ^ 0x490C8CFE ^ 0x7D019622;
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

