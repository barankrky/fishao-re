package com.ax3.fishao.model.profile.prizesPanelData
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.profile._5b25b89cb3368976ba33f1ea;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import protocol.sr.profile.ProfilePrizesResp;
   
   public class _01ea1380f215dbffddb70a11 extends _5b25b89cb3368976ba33f1ea
   {
      
      public var userPrizesList:Vector.<Object>;
      
      public function _01ea1380f215dbffddb70a11()
      {
         super();
         this.userPrizesList = new Vector.<Object>(-1866522693 ^ 0x31AF0420 ^ 0x201E70DD ^ -2129761466);
      }
      
      private static function _89f1de9488775963aa3e6118(param1:_edf6f294f66748a09438353b, param2:_edf6f294f66748a09438353b) : Number
      {
         var _loc3_:int = -1028768538 ^ -1949441028 ^ 0x4CF627BB ^ -850679517;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-2054232928 ^ -576557187 ^ -2108148102 ^ 0x12AAEC21))
            {
               case 0:
                  return -1928022972 ^ -1625665284 ^ 0x097EC56B ^ 0x1B7021D3;
               case 1:
                  if(param1.timeReceivedAgo < param2.timeReceivedAgo)
                  {
                     _loc3_ = -456623058 ^ -198457334 ^ 0x098FB5F4 ^ -776843179;
                  }
                  else
                  {
                     _loc3_ = 0x78009797 ^ 0x70A8C901 ^ 0x7A34C11B ^ -1170026997;
                  }
                  break;
               case 2:
                  return 0x693EBE48 ^ 0x31EC96C5 ^ 0x3E04F8D0 ^ 0x66D6D05C;
               case 3:
                  return 0x7DBA3F65 ^ -1716697412 ^ -1473215112 ^ -1277688994;
               case 4:
                  if(param1.timeReceivedAgo > param2.timeReceivedAgo)
                  {
                     _loc3_ = -478691241 ^ 0x58ECD5FC ^ 0x38FFDB45 ^ 0x4BBA9F6A;
                  }
                  else
                  {
                     _loc3_ = 0x2D5B14CA ^ -1822422632 ^ 0x290064FD ^ 0x5FE52828;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3138f049d934dc74a466be3c(param1:ProfilePrizesResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_edf6f294f66748a09438353b = null;
         this.userPrizesList = new Vector.<Object>(0x3FAF86BB ^ 0x669F4A1D ^ -392789517 ^ -1314501291);
         var _loc4_:Object = JSON.parse(param1.data);
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new _edf6f294f66748a09438353b();
            _loc3_.deserialize(_loc2_);
            this.userPrizesList.push(_loc3_);
         }
         this.userPrizesList.sort(_89f1de9488775963aa3e6118);
         _callback();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.userPrizesList = new Vector.<Object>(-198009251 ^ 0x73A23375 ^ -1901387915 ^ 0x093BB25D);
         super.load(param1,param2);
         _dfa25706e58a240c1e33e5c6.profileExtension._1de06135b7e6343aeec19dc3(_login,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3138f049d934dc74a466be3c));
      }
   }
}

