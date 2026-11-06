package com.ax3.control.managers
{
   import com.ax3.events._d23a86a05a63898e7f07d85a;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.net.URLRequest;
   
   public class _78aae26c61ff9e1b9fd957bc
   {
      
      public var swfUrl:String;
      
      private var _70717c154f95231132b82107:Boolean = false;
      
      private var _ecc2f7dc6d5bf6440265e956:Vector.<Function>;
      
      public var loader:_f5d3c19b4de5df055d1bc952;
      
      public function _78aae26c61ff9e1b9fd957bc(param1:String)
      {
         super();
         this.swfUrl = param1;
      }
      
      public function isLoaded() : Boolean
      {
         return this._70717c154f95231132b82107;
      }
      
      public function _e00f10b15c253aa3e0672e06(param1:String) : Sound
      {
         var _loc2_:Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
         return new _loc2_();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:int = 0x0F77DCE6 ^ -1532930344 ^ -14370666 ^ -868167613;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-727728369 ^ 0x0A4B9B1A ^ 0x78BB9C03 ^ 0x3EDD5AF9))
            {
               case 0:
                  return;
               case 1:
                  if(this._ecc2f7dc6d5bf6440265e956 == null)
                  {
                     _loc3_ = -1280769749 ^ -2063748894 ^ 0x26635649 ^ -1987771028;
                  }
                  else
                  {
                     _loc3_ = -1013302718 ^ -552240665 ^ -798960028 ^ 0x545D772C;
                  }
                  break;
               case 2:
                  this._ecc2f7dc6d5bf6440265e956.push(param2);
                  _loc3_ = -1338463465 ^ -1348298197 ^ 0x59822CC0 ^ -559218925;
                  break;
               case 3:
                  this._ecc2f7dc6d5bf6440265e956 = new Vector.<Function>();
                  _loc3_ = 0x4B0EC36C ^ -1682996100 ^ 0x3AFEDF4A ^ 0x72ED7AB7;
                  break;
               case 4:
                  if(param1 == Event.COMPLETE)
                  {
                     _loc3_ = -1956593855 ^ 0x0474E1B3 ^ 0x50FF6387 ^ 0x4759DF9B;
                  }
                  else
                  {
                     _loc3_ = 0x18C917E7 ^ -778751197 ^ 0x17A58AC5 ^ 0x464B4CEE;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function load() : void
      {
         if(this.loader == null && !this.isLoaded())
         {
            this.loader = new _f5d3c19b4de5df055d1bc952(0x3C035CCC ^ 0x042DFA51 ^ 0x69D9BBC2 ^ 0x51F71D5C);
            this.loader.addEventListener(Event.COMPLETE,this._254939e5cc752152362ce0f2);
            this.loader.load(new URLRequest(this.swfUrl));
         }
      }
      
      private function _254939e5cc752152362ce0f2(param1:Event) : void
      {
         var _loc2_:_d23a86a05a63898e7f07d85a = null;
         var _loc3_:Function = null;
         this.loader.removeEventListener(Event.COMPLETE,this._254939e5cc752152362ce0f2);
         if(this._ecc2f7dc6d5bf6440265e956 != null)
         {
            _loc2_ = new _d23a86a05a63898e7f07d85a(Event.COMPLETE);
            _loc2_.data = this;
            for each(_loc3_ in this._ecc2f7dc6d5bf6440265e956)
            {
               _loc3_(_loc2_);
            }
         }
         this._70717c154f95231132b82107 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.loader != null && this._70717c154f95231132b82107 == false;
      }
   }
}

