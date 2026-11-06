package com.ax3.jss.model.states
{
   import flash.events.IEventDispatcher;
   
   public class _98d0967d384969c2c6f02e26
   {
      
      private var _cf164e5cd41f1632ee5a872e:_6ad0e2821c6ebbf3ebab748d;
      
      private var _8ee1080118f602d73e2f9c0a:IEventDispatcher;
      
      public function _98d0967d384969c2c6f02e26(param1:IEventDispatcher, param2:_6ad0e2821c6ebbf3ebab748d = null)
      {
         super();
         this._8ee1080118f602d73e2f9c0a = param1;
         this._cf164e5cd41f1632ee5a872e = param2;
      }
      
      public function set state(param1:_6ad0e2821c6ebbf3ebab748d) : void
      {
         var _loc2_:int = 0x05468D67 ^ 0x329286F2 ^ -1988493854 ^ 0x6F6EDFD2;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-771908627 ^ -1345324346 ^ 0x4E6E30FC ^ -509642640))
            {
               case 0:
                  return;
               case 1:
                  this._485b69e69c0faa3d8de32269(param1);
                  _loc2_ = 0x22BE704A ^ 0x5D66B769 ^ 0x45F615FC ^ -336725128;
                  break;
               case 2:
                  if(this._cf164e5cd41f1632ee5a872e != param1)
                  {
                     _loc2_ = 0x6BD68C49 ^ -1804635165 ^ -1167724781 ^ -1809893089;
                  }
                  else
                  {
                     _loc2_ = 0x0AE7940C ^ 0x6C574B53 ^ -29005796 ^ 0x49369EE4;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _485b69e69c0faa3d8de32269(param1:_6ad0e2821c6ebbf3ebab748d) : void
      {
         var _loc2_:_cda23e966765f14bf08807f7 = new _cda23e966765f14bf08807f7(param1,this._cf164e5cd41f1632ee5a872e);
         this._cf164e5cd41f1632ee5a872e = param1;
         this._8ee1080118f602d73e2f9c0a.dispatchEvent(_loc2_);
      }
      
      public function get state() : _6ad0e2821c6ebbf3ebab748d
      {
         return this._cf164e5cd41f1632ee5a872e;
      }
   }
}

