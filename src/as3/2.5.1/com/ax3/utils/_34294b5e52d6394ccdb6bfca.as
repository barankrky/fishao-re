package com.ax3.utils
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class _34294b5e52d6394ccdb6bfca
   {
      
      private var _64365f0ce2a73844a2fda156:Dictionary = new Dictionary();
      
      private var _c7e8a04e424a529b145b6411:Dictionary = new Dictionary();
      
      public var averageTimeMS:_eda3a13d8352e18b187cba02 = new _eda3a13d8352e18b187cba02();
      
      public function _34294b5e52d6394ccdb6bfca()
      {
         super();
      }
      
      public function add(param1:Object, param2:Function = null) : void
      {
         var _loc3_:int = 0x6C7E091F ^ 0x5D90ABA3 ^ 0x53C3C371 ^ -1367910457;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x2E8C8ED4 ^ -1460887723 ^ -229819085 ^ -1200153926))
            {
               case 0:
                  if(this._64365f0ce2a73844a2fda156[param1])
                  {
                     _loc3_ = -1283768781 ^ 0x228C6AAF ^ -1100943927 ^ -473067684;
                  }
                  else
                  {
                     _loc3_ = 0x06D5DC23 ^ 0x156A5DEB ^ -282617983 ^ 0x30C22045;
                  }
                  break;
               case 1:
                  throw new Error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂၲၰႁံဤၛთႪႆჟტၒთჼဣპဂဒဓူဏ႔႞რჰႁဣ჊ႉႤဟၚြၖၨၵჇႵယႲ჉ဓဗၯႶၒၟყႷყკႛဩၜႵთဗნၗ","ჴညႀႎკ჻ဖှჱငဳგၷဪဠႀ"));
               case 2:
                  if(param2 != null)
                  {
                     _loc3_ = 0x33E5381F ^ -488871641 ^ -1658808777 ^ -2143031033;
                  }
                  else
                  {
                     _loc3_ = -571269596 ^ 0x2719DDFA ^ 0x759C6601 ^ 0x432C93D4;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  this._64365f0ce2a73844a2fda156[param1] = param2;
                  this._c7e8a04e424a529b145b6411[param1] = getTimer();
                  _loc3_ = -941308613 ^ -679190082 ^ 0x6C163117 ^ -1339251815;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function clear() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0x0E38754C ^ -1347954484 ^ 0x605BF2AB ^ -1044095189;
         for(_loc2_ in this._64365f0ce2a73844a2fda156)
         {
            this._64365f0ce2a73844a2fda156[_loc2_] = null;
            delete this._64365f0ce2a73844a2fda156[_loc2_];
            this._c7e8a04e424a529b145b6411[_loc2_] = null;
            delete this._c7e8a04e424a529b145b6411[_loc2_];
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function dispatch(param1:Object, param2:Array) : void
      {
         var _loc3_:uint = uint(-1641715284 ^ -1165474819 ^ -1149546847 ^ -1613339408);
         if(param1 in this._64365f0ce2a73844a2fda156 && this._64365f0ce2a73844a2fda156[param1] is Function)
         {
            (this._64365f0ce2a73844a2fda156[param1] as Function).apply(this,param2);
            this._64365f0ce2a73844a2fda156[param1] = null;
            delete this._64365f0ce2a73844a2fda156[param1];
            _loc3_ = getTimer() - this._c7e8a04e424a529b145b6411[param1];
            this.averageTimeMS.push(_loc3_);
            this._c7e8a04e424a529b145b6411[param1] = null;
            delete this._c7e8a04e424a529b145b6411[param1];
         }
      }
   }
}

