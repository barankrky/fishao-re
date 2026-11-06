package com.ax3.fishao.locations.objects
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   
   public class _3dfef41c191ea65cc79d02e5 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _a6fcaf436a32a54d2460a5dc:DisplayObjectContainer;
      
      private var _bad67ce549fcc0a475bce1d3:Number;
      
      public function _3dfef41c191ea65cc79d02e5(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._a6fcaf436a32a54d2460a5dc = param2;
         this.init();
      }
      
      private function init() : void
      {
         this._bad67ce549fcc0a475bce1d3 = -1893022495 ^ -1107492484 ^ -2026257349 ^ -1242693209;
      }
      
      public function _c70a84e137c1e0c5c2d6ae39(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         this._bad67ce549fcc0a475bce1d3 = param1;
         _loc3_ = this._bad67ce549fcc0a475bce1d3 == (-507343744 ^ 0x18E3B4A9 ^ 0x1FE2DACB ^ -423370014) ? (0x3EC3D055 ^ 0x3C3F9CC2 ^ 0x1E34186B ^ 0x1CC854FD) / (0x44D5CFDD ^ 0x1C1B77F8 ^ 0x1D8B9EA7 ^ 0x4545269B) / (-461404914 ^ 0x31A14DD9 ^ 0x3B3BD115 ^ -286975551) * (-1952377927 ^ -1140286390 ^ 0x1193D3E0 ^ 0x263A5C11) : this._bad67ce549fcc0a475bce1d3;
         if(param2)
         {
            this._24ec322b4dcf59e31986668f(_loc3_);
         }
         else
         {
            this._a6fcaf436a32a54d2460a5dc.scaleX = _loc3_;
            this._a6fcaf436a32a54d2460a5dc.scaleY = _loc3_;
         }
      }
      
      private function _24ec322b4dcf59e31986668f(param1:Number) : void
      {
         TweenLite.killTweensOf(this._a6fcaf436a32a54d2460a5dc);
         var _loc2_:Object = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶务刷勲剛剐勷剟剝勤勛剪剈刂勰剮創勧判功","勜刿剳勋勾別剢劑剄劂刹剛剜劄剠则")):param1,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刯勌劏剠勅剆勜務刕劋削剛効勋劤勮别劵劄剸","剀剮刡务勳勈刢刏勚劷勥劧励勶刕勩")):param1
         };
         TweenLite.to(this._a6fcaf436a32a54d2460a5dc,-1122051697 ^ -1131830473 ^ -1292888077 ^ -1285067446,_loc2_);
      }
   }
}

