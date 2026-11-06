package com.ax3.jss.requests.server.dispatcher
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.getClass;
   import flash.utils.Dictionary;
   
   public class _e9c1987d01a78ff54d7bdd6f
   {
      
      private var _8193c882b114ccacd3045687:Dictionary = new Dictionary();
      
      public function _e9c1987d01a78ff54d7bdd6f()
      {
         super();
      }
      
      public function _47f9da4a3850db64b3ca44e6(param1:Class, param2:Function) : void
      {
         var _loc3_:int = 0xBAD57A ^ -2069733266 ^ -2145330453 ^ 0x1BA542A8;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1285875344 ^ -1620387612 ^ -2039000515 ^ -1243889923))
            {
               case 0:
                  if((this._8193c882b114ccacd3045687[param1] as Array).indexOf(param2) == (0x4E31D312 ^ -1892807817 ^ -332524515 ^ -758238329))
                  {
                     _loc3_ = 0x4632F7D2 ^ 0x2B69C0AE ^ 0x0BF2E88F ^ 0x7934F2A6;
                  }
                  else
                  {
                     _loc3_ = -1023474107 ^ 0x6900CB75 ^ -1247436663 ^ 0x01C740E9;
                  }
                  break;
               case 1:
                  (this._8193c882b114ccacd3045687[param1] as Array).push(param2);
                  _loc3_ = 0x4C69FB96 ^ 0x6FA81291 ^ 0x5E8B7ACA ^ 0x62D7BE9D;
                  break;
               case 2:
                  this._8193c882b114ccacd3045687[param1] = [];
                  _loc3_ = 0x24B6F7EE ^ -784072533 ^ -682597139 ^ 0x3D3FBEFC;
                  break;
               case 3:
                  if(this._8193c882b114ccacd3045687[param1] == null)
                  {
                     _loc3_ = 0x5036CE0A ^ 0x23F82459 ^ 0x052C3F14 ^ 0x697FF811;
                  }
                  else
                  {
                     _loc3_ = -1268456509 ^ -48067907 ^ -1056359939 ^ -1747812905;
                  }
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _3f746b3409a312b1482ebf7c(param1:Class, param2:Function) : void
      {
         var _loc3_:int = -921132884 ^ -676290865 ^ 0x3D7E1AD4 ^ 0x23D624B7;
         var _loc4_:Array = this._8193c882b114ccacd3045687[param1] as Array;
         if(_loc4_ != null && _loc4_.length > (0x344DF41E ^ 0x0712FEAC ^ 0x7632E117 ^ 0x456DEBA5))
         {
            _loc3_ = _loc4_.indexOf(param2);
            if(_loc3_ != (-11149026 ^ -1183741722 ^ -1195838421 ^ 0x0163622C))
            {
               _loc4_.splice(_loc3_,0x61E78CCF ^ 0x4A80EE98 ^ -445800702 ^ -838140588);
            }
         }
      }
      
      public function _e39e13c67d1bbdf84793a0a7(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Function = null;
         var _loc4_:Class = getClass(param1);
         if(this._8193c882b114ccacd3045687[_loc4_] != null)
         {
            _loc2_ = this._8193c882b114ccacd3045687[_loc4_];
            for each(_loc3_ in _loc2_)
            {
               _loc3_(param1);
            }
         }
      }
      
      public function _d9ac4655d0c9468d8963c668(param1:_5e1bab759fcaea6d1f84faa7) : Boolean
      {
         var _loc2_:Class = getClass(param1);
         return this._8193c882b114ccacd3045687[_loc2_] != null && (this._8193c882b114ccacd3045687[_loc2_] as Array).length > (-1178592333 ^ 0x331A0016 ^ -1233330655 ^ 0x3CA6C584);
      }
   }
}

