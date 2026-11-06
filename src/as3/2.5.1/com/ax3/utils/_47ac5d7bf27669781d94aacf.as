package com.ax3.utils
{
   import flash.utils.Dictionary;
   
   public class _47ac5d7bf27669781d94aacf
   {
      
      private var _0d0af62fab86e0430cd326f0:Dictionary;
      
      public function _47ac5d7bf27669781d94aacf()
      {
         super();
         this._0d0af62fab86e0430cd326f0 = new Dictionary();
      }
      
      public function destroy() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this._0d0af62fab86e0430cd326f0)
         {
            this._85d9b8a3cfe3f94b5471a1ff(_loc1_);
         }
         this._0d0af62fab86e0430cd326f0 = null;
      }
      
      public function _b04233d246f7aaf0deec034f(param1:Object, ... rest) : void
      {
         this.dispatch(param1,rest);
         this._85d9b8a3cfe3f94b5471a1ff(param1);
      }
      
      private function _85d9b8a3cfe3f94b5471a1ff(param1:Object) : void
      {
         var _loc2_:int = 0x70C6106F ^ 0x1097C6B8 ^ -5033410 ^ -2078307050;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2ED4B414 ^ -1315559727 ^ -91854550 ^ 0x7E399212))
            {
               case 0:
                  return;
               case 1:
                  (this._0d0af62fab86e0430cd326f0[param1] as _ef35fdb2eeeac7eafff8d8f5).destroy();
                  this._0d0af62fab86e0430cd326f0[param1] = null;
                  delete this._0d0af62fab86e0430cd326f0[param1];
                  _loc2_ = 0x2AE7C83A ^ 0x0C747FAB ^ 0x257B0968 ^ 0x1815D704;
                  break;
               case 2:
                  if(param1 in this._0d0af62fab86e0430cd326f0)
                  {
                     _loc2_ = 0x397DC89C ^ -1773980941 ^ -2016832696 ^ 0x330A00DB;
                  }
                  else
                  {
                     _loc2_ = -2020513018 ^ -569906780 ^ -905277673 ^ -2006883256;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function dispatch(param1:Object, param2:Array = null) : void
      {
         var _loc3_:int = -1719173436 ^ 0x71258A67 ^ -1118608712 ^ -1096281552;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x523899BD ^ 0x3FCCB115 ^ 0x091ABA78 ^ -1883826437))
            {
               case 0:
                  if(param1 in this._0d0af62fab86e0430cd326f0)
                  {
                     _loc3_ = -627147400 ^ -1998770044 ^ -349155171 ^ 0x522A994B;
                  }
                  else
                  {
                     _loc3_ = -1112687838 ^ -176998048 ^ 0x4685D5A9 ^ -452799550;
                  }
                  break;
               case 1:
                  (this._0d0af62fab86e0430cd326f0[param1] as _ef35fdb2eeeac7eafff8d8f5).dispatch(param2);
                  _loc3_ = -1078932526 ^ 0x27E580B7 ^ 0x5B669927 ^ 0x286A566B;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function add(param1:Object, param2:Function, param3:Boolean = true) : void
      {
         if(!(param1 in this._0d0af62fab86e0430cd326f0))
         {
            this._0d0af62fab86e0430cd326f0[param1] = new _ef35fdb2eeeac7eafff8d8f5();
         }
         var _loc4_:_ef35fdb2eeeac7eafff8d8f5 = this._0d0af62fab86e0430cd326f0[param1] as _ef35fdb2eeeac7eafff8d8f5;
         if(!_loc4_._a3f3ddf7847bc352ea92e04f(param2) || param3 == false)
         {
            _loc4_.add(param2);
         }
      }
      
      public function _8cf7b1cb4e1f8bc6bc3ffa5e(param1:Object) : Boolean
      {
         return param1 in this._0d0af62fab86e0430cd326f0 && (this._0d0af62fab86e0430cd326f0[param1] as Array).length > (-459088169 ^ -1617724616 ^ 0x058C03EF ^ 0x7EBDA600);
      }
   }
}

