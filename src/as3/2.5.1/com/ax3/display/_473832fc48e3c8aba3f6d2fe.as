package com.ax3.display
{
   public class _473832fc48e3c8aba3f6d2fe
   {
      
      private var _e4661b702c1bb1629ccd2ede:Number;
      
      private var _115e6bd6b70377ecb4a9d91a:Number;
      
      private var _3d8b0432ffa818f00a7748e6:Boolean;
      
      private var _c17407ad61d1ccc1f5ace615:String;
      
      private var _eae7e4eb2de6623dd8b10e87:String;
      
      private var _0f7ed935536539ba56bb4913:String;
      
      private var _669146e92d5ff58936da56a8:Number;
      
      private var _dd3c16687e363d28589aff53:uint;
      
      public function _473832fc48e3c8aba3f6d2fe(param1:Number = 0, param2:uint = 16772846, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3)
      {
         super();
         this._e4661b702c1bb1629ccd2ede = param1;
         this._115e6bd6b70377ecb4a9d91a = param3;
         this._3d8b0432ffa818f00a7748e6 = param4;
         this._c17407ad61d1ccc1f5ace615 = param5;
         this._eae7e4eb2de6623dd8b10e87 = param6;
         this._0f7ed935536539ba56bb4913 = param7;
         this._669146e92d5ff58936da56a8 = param8;
         this._dd3c16687e363d28589aff53 = param2;
      }
      
      public function get thickness() : Number
      {
         return this._e4661b702c1bb1629ccd2ede;
      }
      
      public function get alpha() : Number
      {
         return this._115e6bd6b70377ecb4a9d91a;
      }
      
      public function get pixelHinting() : Boolean
      {
         return this._3d8b0432ffa818f00a7748e6;
      }
      
      public function get scaleMode() : String
      {
         return this._c17407ad61d1ccc1f5ace615;
      }
      
      public function get caps() : String
      {
         return this._eae7e4eb2de6623dd8b10e87;
      }
      
      public function get joints() : String
      {
         return this._0f7ed935536539ba56bb4913;
      }
      
      public function get miterLimit() : Number
      {
         return this._669146e92d5ff58936da56a8;
      }
      
      public function get color() : uint
      {
         return this._dd3c16687e363d28589aff53;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:int = 0x6CF26A58 ^ 0x5A886111 ^ 0x0D697F29 ^ -126162611;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2025925363 ^ -2088213715 ^ -1882864801 ^ 0x481AE850))
            {
               case 0:
                  return;
               case 1:
                  this._dd3c16687e363d28589aff53 = param1;
                  return;
               case 2:
                  if(this._dd3c16687e363d28589aff53 == param1)
                  {
                     _loc2_ = -376320156 ^ -1514806428 ^ 0x2C623B82 ^ -1557165395;
                  }
                  else
                  {
                     _loc2_ = -1024675255 ^ 0x0D994B78 ^ -2008816502 ^ -2074115947;
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

