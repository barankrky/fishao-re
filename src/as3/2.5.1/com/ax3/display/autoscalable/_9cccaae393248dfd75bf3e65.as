package com.ax3.display.autoscalable
{
   import com.ax3.controllers._eb0e148a3a8bfcd6c2ee6715;
   import flash.display.BitmapData;
   
   public class _9cccaae393248dfd75bf3e65 extends _a4e47350c89a50d87a148c28
   {
      
      private var _b116f2bd6c7c05d9b7dc1cb9:Boolean;
      
      private var _01c5067cb6cc3334e56aa42c:BitmapData;
      
      public function _9cccaae393248dfd75bf3e65(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
      {
         if(param1 == null || param1.width == (-307719495 ^ 0x372900BA ^ -1023073228 ^ 0x1984B636))
         {
            this._b116f2bd6c7c05d9b7dc1cb9 = false;
            param1 = new BitmapData(_eb0e148a3a8bfcd6c2ee6715.FRAME_WIDTH,_eb0e148a3a8bfcd6c2ee6715.FRAME_HEIGHT,true,-647565833 ^ -1580369592 ^ -1997715139 ^ -263791235);
            _eb0e148a3a8bfcd6c2ee6715.getInstance()._bbb9c86a7500c20660a2dced(this);
         }
         _width = param1.width;
         _height = param1.height;
         super(param1,param2,param3);
      }
      
      override protected function _82a696edfd066ed03d182af1() : void
      {
         var _loc1_:int = 0x517CEF3A ^ 0x162962C3 ^ -1851380650 ^ 0x2CB7D9C2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2035670995 ^ 0x237A4580 ^ 0x5B212A2A ^ 0x04B537EB))
            {
               case 0:
                  _eb0e148a3a8bfcd6c2ee6715.getInstance()._bae5ee049665aeb96aca776a(this);
                  _loc1_ = 0x785940FA ^ 0x535AC215 ^ -1513174346 ^ 0x74893037;
                  break;
               case 1:
                  if(this._b116f2bd6c7c05d9b7dc1cb9)
                  {
                     _loc1_ = 0x72867ACC ^ -2129571937 ^ -1203340048 ^ -1315622449;
                  }
                  else
                  {
                     _loc1_ = -137111908 ^ 0x2008058A ^ 0x73BEB0AF ^ 0x5E211BD7;
                  }
                  break;
               case 2:
                  super._82a696edfd066ed03d182af1();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set width(param1:Number) : void
      {
         _width = param1;
         this._82a696edfd066ed03d182af1();
      }
      
      override public function set height(param1:Number) : void
      {
         _height = param1;
         this._82a696edfd066ed03d182af1();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:int = -193544463 ^ -1307716821 ^ 0x6AC7B454 ^ -1839866590;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-354504978 ^ 0x064C7B90 ^ 0x34432D1A ^ 0x6638FCC8))
            {
               case 0:
                  if(this._b116f2bd6c7c05d9b7dc1cb9 == false)
                  {
                     _loc2_ = -860796401 ^ -1334146690 ^ 0x02C0EB44 ^ -1058919272;
                  }
                  else
                  {
                     _loc2_ = -1300749132 ^ 0x47DE63AD ^ 0x296226FE ^ 0x622D6549;
                  }
                  break;
               case 1:
                  this._01c5067cb6cc3334e56aa42c = param1;
                  this._b116f2bd6c7c05d9b7dc1cb9 = true;
                  super.bitmapData = this._01c5067cb6cc3334e56aa42c;
                  _loc2_ = -302067844 ^ -149151598 ^ 0x77B2A87F ^ -742833345;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

