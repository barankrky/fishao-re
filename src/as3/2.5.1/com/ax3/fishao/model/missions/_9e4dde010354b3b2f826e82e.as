package com.ax3.fishao.model.missions
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import protocol.sr.missions.ActiveMissionsResp;
   import protocol.sr.missions.CompletedMissionsResp;
   
   public class _9e4dde010354b3b2f826e82e extends EventDispatcher
   {
      
      public static const ACTIVE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჳီၹ႟႞၍Ⴟჽလდၣ႐იခႅ္ဉႊၒႍ","ဒၖუხည့ဒႂစც႓၉჈ၱ႓ქ");
      
      public static const COMPLETED:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါჀჷးၑဘၾუဘ႙ၺდၤჃჩმဂဟდသ၈ဣၧဉ၊ႆ","ၴႠဉၶကဪჇ႙ၖႁဂၞဆჶခ၍");
      
      public static const CHANGE_EVENT:Event = new Event(Event.CHANGE);
      
      public static const MISSION_ACCEPTED_EVENT:Event = new Event(Event.ADDED);
      
      private var _0839a6d117dfd0e851fe137e:Dictionary = new Dictionary();
      
      private var _9937302be2923ab04e5949b8:int = 0;
      
      private var _7ccb0df54ff2be1191afb982:int = 0;
      
      public function _9e4dde010354b3b2f826e82e()
      {
         super();
      }
      
      public function get missions() : Dictionary
      {
         return this._0839a6d117dfd0e851fe137e;
      }
      
      public function _e99b596ee5cf0280fad04e6e(param1:_6c4d7e638317cabf44146578) : void
      {
         _dfa25706e58a240c1e33e5c6.missionsExtension.collectReward(param1.id.toString(),this._7375d8d4931276a4cbd04546);
      }
      
      public function _b7b02e2a02eb9cbb756497b9(param1:_6c4d7e638317cabf44146578) : void
      {
         _dfa25706e58a240c1e33e5c6.missionsExtension._7b9fc05c9d419ba00af2174d(param1.id.toString(),this._604286dc1d4d882e8cb62a90);
      }
      
      public function _8ef4d75da09e80aac1890c97() : void
      {
         _dfa25706e58a240c1e33e5c6.missionsExtension._febe16403fb83fc5e669f36c(this._8e17314601a53063a638b7d7);
      }
      
      public function _f9fdaa0835ee8bff9687158b() : void
      {
         _dfa25706e58a240c1e33e5c6.missionsExtension._c519f797bf66dca70b864d5b(this._b4cd28a4ae1886bee635fac9);
      }
      
      private function _604286dc1d4d882e8cb62a90(param1:ActiveMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this._5334234859e3871f1eb0ea03(_loc2_);
         dispatchEvent(MISSION_ACCEPTED_EVENT);
      }
      
      private function _8e17314601a53063a638b7d7(param1:ActiveMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this._9937302be2923ab04e5949b8 = param1.allMissions;
         this._7ccb0df54ff2be1191afb982 = param1.completedMissions;
         this._5334234859e3871f1eb0ea03(_loc2_);
         dispatchEvent(CHANGE_EVENT);
      }
      
      private function _b4cd28a4ae1886bee635fac9(param1:CompletedMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this._9937302be2923ab04e5949b8 = param1.allMissions;
         this._7ccb0df54ff2be1191afb982 = param1.completedMissions;
         this._5334234859e3871f1eb0ea03(_loc2_);
         dispatchEvent(CHANGE_EVENT);
      }
      
      private function _5334234859e3871f1eb0ea03(param1:Object) : void
      {
         var _loc2_:_6c4d7e638317cabf44146578 = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔切劺努剡刦剻剶刏刭劊劦剸判劳剜","劦刬剼刢勭勭勁剗判劎刻剽勚剈剐勭")] as Array;
         this._0839a6d117dfd0e851fe137e[ACTIVE] = {};
         this._0839a6d117dfd0e851fe137e[COMPLETED] = {};
         _loc3_ = [];
         _loc4_ = [];
         var _loc6_:int = -602975285 ^ -573355938 ^ 0x31CCD949 ^ 0x3010C2DC;
         while(_loc6_ < _loc5_.length)
         {
            _loc2_ = new _6c4d7e638317cabf44146578(_loc5_[_loc6_]);
            if(_loc2_.isDone)
            {
               _loc4_.push(_loc2_);
            }
            else
            {
               _loc3_.push(_loc2_);
            }
            _loc6_++;
         }
         _loc4_.sortOn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勤刺劼劖勫到剐剑刧劇利劝勄勹劓勛刿剜劧勭刡初勍别剶勤刪剥","刣勔助創剺勂劥劤剚劣劇勰劢剐剹勦"),Array.NUMERIC);
         this._0839a6d117dfd0e851fe137e[ACTIVE] = _loc3_;
         this._0839a6d117dfd0e851fe137e[COMPLETED] = _loc4_;
      }
      
      private function _7375d8d4931276a4cbd04546() : void
      {
      }
      
      public function get completedMissionsNum() : int
      {
         return this._7ccb0df54ff2be1191afb982;
      }
      
      public function get allMissionsNum() : int
      {
         return this._9937302be2923ab04e5949b8;
      }
   }
}

