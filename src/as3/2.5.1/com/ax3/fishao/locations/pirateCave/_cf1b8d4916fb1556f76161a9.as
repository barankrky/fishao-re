package com.ax3.fishao.locations.pirateCave
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import flash.events.Event;
   
   public class _cf1b8d4916fb1556f76161a9 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _2f968c760dda8c30c2e69008:_3d43cf5e9b232a13933e3336;
      
      private var _3f5305365ddf67b32a7f0245:_01bad0b8d1de36c8da2a0314;
      
      public function _cf1b8d4916fb1556f76161a9(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._3f5305365ddf67b32a7f0245 = param1 as _01bad0b8d1de36c8da2a0314;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
      }
      
      override protected function inspectPlayerPosition() : void
      {
         var _loc1_:int = -1629097323 ^ 0x402E48E5 ^ 0x342C2142 ^ 0x64E234D1;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1723408818 ^ -1934585259 ^ 0x6BF9947A ^ -267749501))
            {
               case 0:
                  return;
               case 1:
                  super.inspectPlayerPosition();
                  if(_playerChar == null)
                  {
                     _loc1_ = 0x7D2F2938 ^ 0x1F5B741F ^ -523513697 ^ 0x0CBA225A;
                  }
                  else
                  {
                     _loc1_ = 0x213B9458 ^ 0x08E342CB ^ -240731094 ^ 0x567BC559;
                  }
                  break;
               case 2:
                  _locationItems._1aa92192e9ddb1aa40cc5563(_playerChar.graphic.x,_playerChar.graphic.y,-1566384501 ^ -1471771681 ^ 0x0D3DC007 ^ 0x07D99559);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._2f968c760dda8c30c2e69008 = super._3536e00a076cf84463e9eaaa() as _3d43cf5e9b232a13933e3336;
         return this._2f968c760dda8c30c2e69008;
      }
   }
}

