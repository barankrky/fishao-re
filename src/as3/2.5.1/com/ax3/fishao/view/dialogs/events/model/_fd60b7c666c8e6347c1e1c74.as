package com.ax3.fishao.view.dialogs.events.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.api.events.FscExtensionEvents;
   import protocol.api.events.data.EventInfo;
   import protocol.api.events.data.EventMemberInfo;
   import protocol.api.events.end.ResponseEventEnd;
   import protocol.api.events.init.ResponseEventsInit;
   import protocol.api.events.members.ResponseEventMembers;
   import protocol.api.events.newEvents.ResponseNewEvents;
   import protocol.api.events.start.ResponseEventStart;
   
   public class _fd60b7c666c8e6347c1e1c74 extends _9d4645de4f8d7c9a1a570db1 implements _69eec7d2f73604da25ccda04
   {
      
      private var _28b85c353527c369e3c4567f:Array;
      
      private var _18627ff3bdba3a70ad0441d8:Dictionary;
      
      private var _1f405c47146102abe0a0bd6e:Array;
      
      private var _4d9de9ef95407c7dcd03538d:FscExtensionEvents;
      
      private var _5e7f7c9e82a2f4391259305e:EventInfo;
      
      private var _f3ba5c2e62e7a27b4942134c:int;
      
      private var _b1e72aa633ef8bcdad37b964:int;
      
      private var _9bbc4e416a44511471e1f66e:int;
      
      public function _fd60b7c666c8e6347c1e1c74()
      {
         super();
         this.init();
      }
      
      private static function _1da54374c62c9ae415c3471e(param1:EventInfo, param2:EventInfo) : int
      {
         var _loc3_:int = 0x55C03BB7 ^ 0x49F7412E ^ -497185288 ^ -26544287;
         var _loc4_:int = -1736249034 ^ 0x5D8E7C42 ^ -1033571048 ^ 0x3B57630A;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-1815013635 ^ 0x5E48ABEC ^ -1424780473 ^ 0x5AB53530))
            {
               case 0:
                  _loc3_ = 0x03923558 ^ -849578132 ^ 0x07F2867E ^ -918764470;
                  if(param1.timeLeft > param2.timeLeft)
                  {
                     _loc4_ = -169293464 ^ -1508012610 ^ 0x7E023D4E ^ 0x11C862FA;
                  }
                  else
                  {
                     _loc4_ = 0x53AA3741 ^ -820787506 ^ -98444549 ^ 0x5AA73010;
                  }
                  break;
               case 1:
                  return _loc3_;
               case 2:
                  if(param1.timeLeft < param2.timeLeft)
                  {
                     _loc4_ = 0x5A6DAB18 ^ 0x4DCE0FA4 ^ -2049636848 ^ -1370900023;
                  }
                  else
                  {
                     _loc4_ = -1044247230 ^ 0x188C5D02 ^ 0x58840F98 ^ -1107999553;
                  }
                  break;
               case 3:
                  _loc3_ = -2118655722 ^ 0x60C6A03F ^ -1811584693 ^ -1970546787;
                  _loc4_ = 0x75363931 ^ 0x1ABAC1B4 ^ 0x708751DC ^ 0x2334B23E;
                  break;
               case 4:
                  _loc3_ = -787448028 ^ -1863623544 ^ -1767413561 ^ -681817238;
                  _loc4_ = 0x284390D9 ^ -568717772 ^ -1011093366 ^ 0x09DD7500;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get events() : Array
      {
         return this._28b85c353527c369e3c4567f;
      }
      
      public function get eventFirst() : EventInfo
      {
         var _loc1_:EventInfo = null;
         if(this._28b85c353527c369e3c4567f.length > (-582011472 ^ -1945040888 ^ -362028670 ^ -1154098118))
         {
            _loc1_ = this._28b85c353527c369e3c4567f[0x32DE2E07 ^ -143821908 ^ -1013968245 ^ 0x06234F20];
         }
         return _loc1_;
      }
      
      public function get isFirstEventShown() : Boolean
      {
         var _loc1_:EventInfo = null;
         var _loc2_:Boolean = true;
         if(this._28b85c353527c369e3c4567f.length > (0x40560C32 ^ 0x1D80DEF9 ^ 0x1230C291 ^ 0x4FE6105A))
         {
            _loc1_ = this._28b85c353527c369e3c4567f[-553360311 ^ 0x33B38E77 ^ -1728747218 ^ 0x74428310];
            _loc2_ = _loc1_.isShown;
         }
         return _loc2_;
      }
      
      public function get eventCurrent() : EventInfo
      {
         return this._5e7f7c9e82a2f4391259305e;
      }
      
      public function get eventCurrentTimeLeft() : int
      {
         return this._f3ba5c2e62e7a27b4942134c;
      }
      
      public function get members() : Array
      {
         return this._1f405c47146102abe0a0bd6e;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseEventsInit = param1 as ResponseEventsInit;
         this._eed5d96323fc8f5180a390d9(_loc2_.events);
      }
      
      public function onEventShown(param1:EventInfo) : void
      {
         param1.onEventShown();
         GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_SHOWN);
         this._4d9de9ef95407c7dcd03538d.onEventShown(param1,null);
      }
      
      private function _701b7bebeac23d933aa4044b(param1:ResponseEventStart) : void
      {
         var _loc2_:int = 0x50FB3BA6 ^ 0x5E3B9507 ^ 0x1AE8637E ^ 0x541507A0;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1307230070 ^ 0x54AC27DE ^ 0x293E59A5 ^ -1883573105))
            {
               case 0:
                  return;
               case 1:
                  this._5e7f7c9e82a2f4391259305e = this._18627ff3bdba3a70ad0441d8[param1.eventID];
                  if(this._5e7f7c9e82a2f4391259305e == null)
                  {
                     _loc2_ = -1867651110 ^ 0x6E1E8631 ^ 0x1894D4D1 ^ -1508212924;
                  }
                  else
                  {
                     _loc2_ = -915952245 ^ -764236550 ^ -1530643630 ^ -1249185;
                  }
                  break;
               case 2:
                  this._b1e72aa633ef8bcdad37b964 = param1.timeLeft;
                  this._9bbc4e416a44511471e1f66e = getTimer();
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START,_22437dfd77f65dbf9dbc4281.EDT_EVENTS);
                  GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6a673aa77d3e04a7c782357c(param1:ResponseEventEnd) : void
      {
         var _loc2_:int = 0x27278DAB ^ 0x519A2E9B ^ 0x05C9E966 ^ -2097777268;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-554116620 ^ -1574408263 ^ 0x14E8F0ED ^ -1715832454))
            {
               case 0:
                  if(this._5e7f7c9e82a2f4391259305e == null)
                  {
                     _loc2_ = -572111469 ^ 0x6A1C0A00 ^ 0x06EF3A6A ^ 0x40974A22;
                  }
                  else
                  {
                     _loc2_ = 0x0F26BF14 ^ -1111845752 ^ -2042093194 ^ -984206030;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._28b85c353527c369e3c4567f,this._5e7f7c9e82a2f4391259305e);
                  this._5e7f7c9e82a2f4391259305e = null;
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_END,_22437dfd77f65dbf9dbc4281.EDT_EVENTS);
                  GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_END);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _9f6bbe5959018826544b97d1(param1:ResponseNewEvents) : void
      {
         var _loc2_:Boolean = this._28b85c353527c369e3c4567f.length == (-1575578108 ^ 0x2BB7AC31 ^ -1033474033 ^ 0x4BC74A3A) && param1.events.length > (0x6F7DE4C2 ^ -1941296938 ^ 0x2935A28B ^ -905810273);
         this._eed5d96323fc8f5180a390d9(param1.events);
         if(_loc2_)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_EVENTS_NEW_EVENTS_RECEIVED,_22437dfd77f65dbf9dbc4281.EDT_EVENTS);
         }
      }
      
      private function _5c49e125b01f1f43ca97423e(param1:ResponseEventMembers) : void
      {
         var _loc2_:EventMemberInfo = null;
         if(this._5e7f7c9e82a2f4391259305e == null)
         {
            return;
         }
         this._1f405c47146102abe0a0bd6e = [];
         var _loc3_:int = -1339500151 ^ -15466663 ^ -299702426 ^ -1592147530;
         while(_loc3_ < param1.members.length)
         {
            _loc2_ = param1.members[_loc3_];
            _loc2_.rewardFishbucks = 0x34CA3D91 ^ -1508711297 ^ -1414523184 ^ 0x3968CF3E;
            _loc2_.rewardFishcoins = 0x71A79A1E ^ -27360903 ^ -1904590229 ^ 0x0183590C;
            if(this._5e7f7c9e82a2f4391259305e.rewardFishbucks > (-1702227447 ^ -1586629866 ^ -1405941879 ^ -1747655018))
            {
               _loc2_.rewardFishbucks = this._5e7f7c9e82a2f4391259305e.getPositionRewardAmount(_loc3_);
            }
            else if(this.eventCurrent.rewardFishcoins > (-1980283540 ^ -1660007025 ^ -1189740921 ^ -1376979356))
            {
               _loc2_.rewardFishcoins = this._5e7f7c9e82a2f4391259305e.getPositionRewardAmount(_loc3_);
            }
            this._1f405c47146102abe0a0bd6e.push(_loc2_);
            _loc3_++;
         }
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_MEMBERS,_22437dfd77f65dbf9dbc4281.EDT_EVENTS);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._9bbc4e416a44511471e1f66e) / (-1664791533 ^ 0x51121E99 ^ 0x08569BBF ^ -981349667));
         this._f3ba5c2e62e7a27b4942134c = this._b1e72aa633ef8bcdad37b964 - _loc3_;
      }
      
      private function init() : void
      {
         this._28b85c353527c369e3c4567f = [];
         this._18627ff3bdba3a70ad0441d8 = new Dictionary(true);
         this._1f405c47146102abe0a0bd6e = [];
         this._4d9de9ef95407c7dcd03538d = _dfa25706e58a240c1e33e5c6.fscModel.extensionEvents;
         _remoteExtension = this._4d9de9ef95407c7dcd03538d;
         _4575c3ec15103b43cbf2be04(ResponseEventStart,this._701b7bebeac23d933aa4044b);
         _4575c3ec15103b43cbf2be04(ResponseEventEnd,this._6a673aa77d3e04a7c782357c);
         _4575c3ec15103b43cbf2be04(ResponseNewEvents,this._9f6bbe5959018826544b97d1);
      }
      
      private function _eed5d96323fc8f5180a390d9(param1:Array) : void
      {
         var _loc2_:EventInfo = null;
         var _loc3_:EventInfo = null;
         for each(_loc2_ in param1)
         {
            if(this._18627ff3bdba3a70ad0441d8[_loc2_.id] != null)
            {
               Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚掯採揠捎揩掽掦揧揳掱授掂掯掯挟捓掕指揨挧捓排捞插捅掵揍掀捍挷揂掸捠揯掲捏捅","挬揁揘挿挹捶捠损捼掂挑捯揻捡掄挮") + _loc2_.id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒剮勓刽削劃剟劾剛刺剈創勞削初剮勢剾勹分労勅刪剀剂刯劗剏勷刊刅劉勢励","務剑刪刾勲勖切勗制剙劀刌利劲勇助"));
            }
            else
            {
               this._28b85c353527c369e3c4567f.push(_loc2_);
               this._18627ff3bdba3a70ad0441d8[_loc2_.id] = _loc2_;
            }
         }
         this._28b85c353527c369e3c4567f.sort(_1da54374c62c9ae415c3471e);
         for each(_loc3_ in this._28b85c353527c369e3c4567f)
         {
            _loc3_.onEventInit();
         }
      }
      
      public function updateMembers(param1:uint, param2:uint) : void
      {
         this._4d9de9ef95407c7dcd03538d.updateMembers(this._5c49e125b01f1f43ca97423e,param1,param2);
      }
   }
}

