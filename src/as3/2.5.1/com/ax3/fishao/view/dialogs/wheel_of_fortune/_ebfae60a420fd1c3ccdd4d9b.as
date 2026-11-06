package com.ax3.fishao.view.dialogs.wheel_of_fortune
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model._71c0400bb5e99a570bef8231;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._c09200cfbfabf4d55af08be2;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._f3a2e1d6a5f9bc0eca013c53;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.api.wheel_of_fortune.FscExtensionWheelOfFortune;
   import protocol.api.wheel_of_fortune.get_info.ResponseWheelOfFortuneGetInfo;
   import protocol.api.wheel_of_fortune.init.ResponseWheelOfFortuneInit;
   import protocol.api.wheel_of_fortune.spin.ResponseWheelOfFortuneSpin;
   
   public class _ebfae60a420fd1c3ccdd4d9b extends _9d4645de4f8d7c9a1a570db1 implements _69eec7d2f73604da25ccda04
   {
      
      private const _1e810158cbe7c27bf0bbe135:Array = [_c09200cfbfabf4d55af08be2.EWOFRT_ENERGY,_c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_MANY,_c09200cfbfabf4d55af08be2.EWOFRT_BAIT_SPECIAL,_c09200cfbfabf4d55af08be2.EWOFRT_ROD_RANDOM,_c09200cfbfabf4d55af08be2.EWOFRT_BAIT_MONSTER,_c09200cfbfabf4d55af08be2.EWOFRT_GADGET_RANDOM,_c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS,_c09200cfbfabf4d55af08be2.EWOFRT_FISH_UNLOCK,_c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_FEW,_c09200cfbfabf4d55af08be2.EWOFRT_ROD_GLOWING,_c09200cfbfabf4d55af08be2.EWOFRT_EXP];
      
      private var _fc5e5e791dc0c3ae74840e14:Array;
      
      private var _a3dd4f4b4425073bf11e1744:Dictionary;
      
      private var _af85f6f964c7b31534af8364:int;
      
      private var _b374aea3070ce08e13097045:int;
      
      private var _1a1134c5ff19781324cd4e11:int;
      
      private var _c4b2c44b5c32f1352713be3d:int;
      
      private var _6928e53974dfd6abc548325c:FscExtensionWheelOfFortune;
      
      private var _1263defad29cf55762946f66:_60d64d32c61de9fe092aecc7;
      
      private var _1ec9c935bfd9a8ebf95650b8:Boolean;
      
      public function _ebfae60a420fd1c3ccdd4d9b()
      {
         super();
         this.init();
      }
      
      private function _194c3d05b5382d4f9ec940d2(param1:_60d64d32c61de9fe092aecc7, param2:_60d64d32c61de9fe092aecc7) : int
      {
         var _loc3_:int = -1393214588 ^ -852791919 ^ 0x5326D5AD ^ 0x32F883B8;
         var _loc4_:int = 0x6A4002 ^ 0x261C00B5 ^ 0x49FBE368 ^ 0x6F8DA3DF;
         var _loc5_:int = 0x5251A65E ^ 0x7DD102E9 ^ 0x68E5CC7E ^ 0x476568C9;
         var _loc6_:int = -167410672 ^ 0x432486AA ^ 0x22209D7D ^ -1343370114;
         loop0:
         while(true)
         {
            switch(_loc6_ ^ (-1200493976 ^ -1364294381 ^ 0x54A3DE95 ^ 0x7A90E256))
            {
               case 0:
                  return _loc3_;
               case 1:
                  _loc3_ = -1907968972 ^ 0x73B0F65B ^ -296328588 ^ 0x13A0201B;
                  _loc4_ = this._1e810158cbe7c27bf0bbe135.indexOf(param1.type);
                  _loc5_ = this._1e810158cbe7c27bf0bbe135.indexOf(param2.type);
                  if(_loc4_ < _loc5_)
                  {
                     _loc6_ = 0x3F5297 ^ -1182098921 ^ 0x0E89C320 ^ -1882171365;
                  }
                  else
                  {
                     _loc6_ = 0x61D22447 ^ 0x36968D31 ^ 0x57AB22B8 ^ 0x3803D872;
                  }
                  break;
               case 2:
                  _loc3_ = 0x78044C25 ^ -1145335228 ^ -1670904510 ^ 0x5FD7DB23;
                  _loc6_ = 0x2D2579E4 ^ -1396342165 ^ 0x14AC3F9D ^ -1381984342;
                  break;
               case 3:
                  _loc3_ = -117963055 ^ -1447963347 ^ -2076426494 ^ 0x2A8A1301;
                  _loc6_ = -8146924 ^ -457433002 ^ -647265066 ^ -88586452;
                  break;
               case 4:
                  if(_loc4_ > _loc5_)
                  {
                     _loc6_ = -1228541683 ^ -1857516850 ^ 0x4F9BA208 ^ 0x50FA8A76;
                  }
                  else
                  {
                     _loc6_ = -1278906066 ^ -141540750 ^ 0x79BE49C1 ^ 0x05072927;
                  }
                  break;
               case 5:
                  _loc3_ = -418596148 ^ 0x0466C61A ^ 0x2BBA160A ^ -925865251;
                  _loc6_ = 0x5AB4CB96 ^ -281070933 ^ -994134648 ^ 0x49D91F0D;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get freeSpinTimeLeft() : int
      {
         return this._af85f6f964c7b31534af8364;
      }
      
      public function get spinPriceFishcoins() : int
      {
         return this._c4b2c44b5c32f1352713be3d;
      }
      
      public function get spinReward() : _60d64d32c61de9fe092aecc7
      {
         return this._1263defad29cf55762946f66;
      }
      
      public function get rewardsAvailable() : Array
      {
         var _loc1_:_60d64d32c61de9fe092aecc7 = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._fc5e5e791dc0c3ae74840e14)
         {
            var _loc5_:String = _loc1_.type;
            switch(_c09200cfbfabf4d55af08be2.EWOFRT_FISH_UNLOCK === _loc5_ ? 0x787C14CD ^ -1722082981 ^ -617537763 ^ 0x3A16128B : (_c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS === _loc5_ ? 0x673EE75F ^ -582179070 ^ -620118377 ^ 0x617BFECB : (_c09200cfbfabf4d55af08be2.EWOFRT_BAIT_RANDOM === _loc5_ ? 0x7E6AB121 ^ -511634851 ^ -1397669819 ^ 0x335AE33B : 0x0D701A64 ^ 0x676AD741 ^ 0x2F9BBDCF ^ 0x458170E9)))
            {
               case 0:
                  if(this._1ec9c935bfd9a8ebf95650b8)
                  {
                     _loc2_.push(this._a3dd4f4b4425073bf11e1744[_c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS]);
                  }
                  else
                  {
                     _loc2_.push(this._a3dd4f4b4425073bf11e1744[_c09200cfbfabf4d55af08be2.EWOFRT_FISH_UNLOCK]);
                  }
                  break;
               case 1:
               case 2:
                  break;
               default:
                  _loc2_.push(_loc1_);
            }
         }
         _loc2_.sort(this._194c3d05b5382d4f9ec940d2);
         return _loc2_;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_60d64d32c61de9fe092aecc7 = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc4_:ResponseWheelOfFortuneInit = param1 as ResponseWheelOfFortuneInit;
         var _loc5_:Array = _loc4_.rewards;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = _f3a2e1d6a5f9bc0eca013c53._7df53f2fe7017dd295353dbc(_loc2_);
            _loc3_._08fdd280d24dd2694e72efa7(_loc2_);
            this._fc5e5e791dc0c3ae74840e14.push(_loc3_);
            this._a3dd4f4b4425073bf11e1744[_loc3_.type] = _loc3_;
         }
      }
      
      private function _7564ed2e66991a918b669de5(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_71c0400bb5e99a570bef8231 = null;
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc3_:ResponseWheelOfFortuneGetInfo = param1 as ResponseWheelOfFortuneGetInfo;
         this._c4b2c44b5c32f1352713be3d = _loc3_.spin_price_fishcoins;
         this._b374aea3070ce08e13097045 = this._af85f6f964c7b31534af8364 = _loc3_.free_spin_time_left;
         this._1ec9c935bfd9a8ebf95650b8 = _loc3_.is_unlocked_all_fishes;
         this._cf2c545ffb736f219eb7e43c();
         var _loc4_:Boolean = _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906() is _71c0400bb5e99a570bef8231;
         if(_loc4_)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
         }
         else
         {
            _loc2_ = app.dialogFactory._a0d214350fb42da9f32557e6(_71c0400bb5e99a570bef8231);
            _loc2_.show();
         }
      }
      
      private function _41f517c9f5cb44e6a137e7dc(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
            return;
         }
         var _loc2_:ResponseWheelOfFortuneSpin = param1 as ResponseWheelOfFortuneSpin;
         this._1263defad29cf55762946f66 = _f3a2e1d6a5f9bc0eca013c53._7df53f2fe7017dd295353dbc(_loc2_.rewardData);
         this._1263defad29cf55762946f66._ec8f265d7f3a1a80b3421096(_loc2_.rewardData);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._1a1134c5ff19781324cd4e11) / (0x4F4C3CE4 ^ -1106239529 ^ 0x510B6735 ^ -1604892690));
         var _loc4_:int = limit(this._b374aea3070ce08e13097045 - _loc3_,-1921020631 ^ 0x754EB2B0 ^ 0x35A0A9A4 ^ -846096835,int.MAX_VALUE);
         if(_loc4_ == (0x17A9F00E ^ -1881765018 ^ 0x7CFC9249 ^ -461117151) && this._af85f6f964c7b31534af8364 != _loc4_)
         {
            this.getInfo();
         }
         this._af85f6f964c7b31534af8364 = _loc4_;
      }
      
      private function init() : void
      {
         this._fc5e5e791dc0c3ae74840e14 = [];
         this._a3dd4f4b4425073bf11e1744 = new Dictionary();
         this._6928e53974dfd6abc548325c = _dfa25706e58a240c1e33e5c6.fscModel.extensionWheelOfFortune;
         _remoteExtension = this._6928e53974dfd6abc548325c;
         _4575c3ec15103b43cbf2be04(ResponseWheelOfFortuneGetInfo,this._7564ed2e66991a918b669de5);
      }
      
      private function _cf2c545ffb736f219eb7e43c() : void
      {
         this._1b04f993405325965972570e();
         this._1a1134c5ff19781324cd4e11 = getTimer();
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
      }
      
      public function _a2274ce864a659668f73ffff() : void
      {
         this._1b04f993405325965972570e();
      }
      
      private function _1b04f993405325965972570e() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
      }
      
      public function getInfo() : void
      {
         this._6928e53974dfd6abc548325c.getInfo();
      }
      
      public function spin(param1:Boolean) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_START,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
         this._6928e53974dfd6abc548325c.spin(param1,this._41f517c9f5cb44e6a137e7dc);
      }
   }
}

