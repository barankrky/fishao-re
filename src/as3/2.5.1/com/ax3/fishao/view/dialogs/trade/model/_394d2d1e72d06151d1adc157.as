package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.model.types._8614be6026d395694b456730;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   
   public class _394d2d1e72d06151d1adc157
   {
      
      private var _0023380fa5039503cc64a926:String;
      
      private var _caca2a0bd451cc9214423b32:String;
      
      private var _6744a9a4263410d1ea64bd3f:Boolean;
      
      private var _d8d44cc17b2dff2daf94a2df:String;
      
      private var _6907cf949ddbf317a21f0728:Array;
      
      public function _394d2d1e72d06151d1adc157(param1:String, param2:String, param3:Boolean)
      {
         super();
         this._0023380fa5039503cc64a926 = param1;
         this._caca2a0bd451cc9214423b32 = param2;
         this._6744a9a4263410d1ea64bd3f = param3;
         this.init();
      }
      
      public function get login() : String
      {
         return this._0023380fa5039503cc64a926;
      }
      
      public function get status() : String
      {
         return this._d8d44cc17b2dff2daf94a2df;
      }
      
      public function set status(param1:String) : void
      {
         this._d8d44cc17b2dff2daf94a2df = param1;
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_STATUS_CHANGED,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
      }
      
      public function get items() : Array
      {
         return this._6907cf949ddbf317a21f0728;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:int = -2091839959 ^ -1671513986 ^ -463345279 ^ -1939227408;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1969666160 ^ 0x4EC9FD01 ^ -1189685232 ^ 0x0A4181A4))
            {
               case 0:
                  return;
               case 1:
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_OWNER,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
                  _loc2_ = -1397704628 ^ 0x5E4651E5 ^ 0x7E9C2AF1 ^ -76734339;
                  break;
               case 2:
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_TARGET,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
                  _loc2_ = -1817822684 ^ -1263273694 ^ -2056988396 ^ -713623241;
                  break;
               case 3:
                  this._6907cf949ddbf317a21f0728 = param1;
                  if(this._0023380fa5039503cc64a926 == app.user.username)
                  {
                     _loc2_ = -1289977083 ^ 0x24C98995 ^ -48713033 ^ 0x1DCA5B03;
                  }
                  else
                  {
                     _loc2_ = -1786898591 ^ 0x4F24007F ^ 0x386D1CA9 ^ -1791956848;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get type() : String
      {
         return this._caca2a0bd451cc9214423b32;
      }
      
      public function get isInitiator() : Boolean
      {
         return this._6744a9a4263410d1ea64bd3f;
      }
      
      private function init() : void
      {
         this._6907cf949ddbf317a21f0728 = [];
      }
      
      public function _2c24317c979138ebb4b66a70() : void
      {
         var _loc1_:int = -477200454 ^ -84537823 ^ 0x08303D2D ^ 0x0B65F5D8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x623A0257 ^ -1466729503 ^ 0x2C5FEF86 ^ -52744356))
            {
               case 0:
                  return;
               case 1:
                  this.status = _8614be6026d395694b456730.MAKE_OFFER;
                  _loc1_ = -1965461212 ^ 0x212D1B4F ^ -1616900449 ^ 0x2E79DD98;
                  break;
               case 2:
                  if(this._d8d44cc17b2dff2daf94a2df != _8614be6026d395694b456730.RECEIVE_INCOME_OFFER)
                  {
                     _loc1_ = -1283186345 ^ 0x04196F4E ^ 0x5A3181D0 ^ -142510428;
                  }
                  else
                  {
                     _loc1_ = -632877278 ^ 0x5227B18C ^ -620924211 ^ 0x48B0750F;
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

