package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   import protocol.sr.DailyQuestResp;
   
   public class _d639e2c43447781c972a23b3 extends EventDispatcher
   {
      
      public static const CHANGE_DAILY_QUEST_DATA:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("務剪刷剧劖勤刮劭刏劢剹剡剠剟刏勏劰勲劝刌勜剖勲勸勈刜列勮劕剘刪劉削剋勋刉刲助剱刃劚勴勞刐勅剚功剱","劫勣剿剼割劼刀前劸劘勖加勁刞勡剚");
      
      public static const CHANGE_EVENT:Event = new Event(CHANGE_DAILY_QUEST_DATA);
      
      public static const IS_COMPLETE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劷劮劔剼勦列刀剉劯劮勳劻劢剄剢剺剏剠劮勡剪切勮刣剄劦勡劺","助刳刷勜劲剶刦剐労劅剕剩刻刹刪勇");
      
      public static const PRIZE_IS_COLLECT:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掍揖掝挿掼插揫挭挆掕揝挟掟捊揳挎掻掼损持挐揋掣挄掊挾捂掔掄揷揊掝掃掜掚揉","捇挰掰揔援掀挨捘揫挒揈挧揊揾揰掦");
      
      public static const SERIE_STEP:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揁捔掑掺掉换捨挎揻挻掏捠捧挆掃捂掁挦揾掞掟揘揿揑掀揑","掟揑捲掯排揘揞揊捄揯据捋捎揨捵捌");
      
      public static const TIMESTAMP_SEC:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ိဝၲတ჌ၳ႘ၮာၠტၶဇჽჹနၞ჉უခ჆ჟვႪ႔ၽႣ၉ႸဈხჷယၟႺႱၩႆနနჄၕအჂႧჭ","ჺၑჺႢ၆၇ၢႉးပ჋႞ဵღႩၯ");
      
      public static const QUESTS:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳劯动劍刏勈刄剝务劔刁勯分劓刽刮努劇动刕勦刬剮剃割勔勠劫剆刽","剮務劄劰劯刯剔劅勧劅劄刲划别分勬");
      
      public static const QUEST_ID:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴒჼဴოწၮဓု჉Ⴓၨဋ","ႯဪၯၭႿ჎ႀႊႳၟႏၱႁႤღჲ");
      
      public static const QUEST_REQUIREMENT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თၲျုၠჵၴნიႳႼဧწီွႹဌ၀ၑၝჾဖၢჯဃဨး၅ၼႎ","Ⴡუၾპ჻წႼ჻ှၗჿ၅ჴဳჷ჈");
      
      public static const QUEST_CONDITION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჟჀლၧგဦဎჴၚ၄ხნၽგၸဘၩႶၩჂၶႀဂ၃ဿႃ","၃ိဎၵၢჍ႔ူლႬჇგႧა჆ဤ");
      
      private var _65fd6a7f5e90e48118d56525:Object = {};
      
      public var currentQuestTimeMark:_020eb172ea5f58203a09fdb5;
      
      public function _d639e2c43447781c972a23b3()
      {
         super();
         this._e9e9594e88dc6df729508784();
      }
      
      public function _e9e9594e88dc6df729508784() : void
      {
         _dfa25706e58a240c1e33e5c6.dailyQuestExtension._f95b6a18cf3e1d7d67dc60f9(this.receiveData);
      }
      
      private function receiveData(param1:DailyQuestResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1.isComplete == (-1417372512 ^ -940904290 ^ -1130019023 ^ -791991537))
         {
            this._65fd6a7f5e90e48118d56525[IS_COMPLETE] = false;
         }
         else
         {
            this._65fd6a7f5e90e48118d56525[IS_COMPLETE] = true;
         }
         if(param1.prizeIsCollect == (-440125750 ^ -1316964094 ^ -1605081875 ^ -200217819))
         {
            this._65fd6a7f5e90e48118d56525[PRIZE_IS_COLLECT] = false;
         }
         else
         {
            this._65fd6a7f5e90e48118d56525[PRIZE_IS_COLLECT] = true;
         }
         this._65fd6a7f5e90e48118d56525[SERIE_STEP] = param1.step;
         this._65fd6a7f5e90e48118d56525[TIMESTAMP_SEC] = param1.currentQuestLeftSec;
         this.currentQuestTimeMark = new _020eb172ea5f58203a09fdb5(param1.currentQuestLeftSec * (-212422997 ^ 0x55C47B48 ^ -166561732 ^ 0x5080AE37),getTimer());
         this._65fd6a7f5e90e48118d56525[QUESTS] = [];
         var _loc4_:Object = JSON.parse(param1.requirements);
         var _loc5_:Object = JSON.parse(param1.conditions);
         var _loc6_:Array = new Array();
         for(_loc2_ in _loc4_)
         {
            _loc3_ = new Object();
            _loc3_[QUEST_ID] = _loc2_;
            _loc3_[QUEST_REQUIREMENT] = _loc4_[_loc2_];
            _loc3_[QUEST_CONDITION] = _loc5_[_loc2_];
            _loc6_.push(_loc3_);
         }
         this._65fd6a7f5e90e48118d56525[QUESTS] = _loc6_;
         dispatchEvent(CHANGE_EVENT);
      }
      
      public function get dailyQuestData() : Object
      {
         return this._65fd6a7f5e90e48118d56525;
      }
      
      public function set prizeIsCollect(param1:Boolean) : void
      {
         this._65fd6a7f5e90e48118d56525[PRIZE_IS_COLLECT] = param1;
      }
      
      public function get prizeIsCollect() : Boolean
      {
         return this._65fd6a7f5e90e48118d56525.hasOwnProperty(PRIZE_IS_COLLECT) ? Boolean(this._65fd6a7f5e90e48118d56525[PRIZE_IS_COLLECT]) : false;
      }
      
      public function _0197120ef6d49b0893064c98() : int
      {
         var _loc1_:int = -127140256 ^ -1503174320 ^ -1122415203 ^ -1837664628;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1926316806 ^ 0x4BC3FE1D ^ 0x1821B9CF ^ -1347526904))
            {
               case 0:
                  return -1701020439 ^ -841627806 ^ -849400185 ^ 0x65E96AF3;
               case 1:
                  if(this.currentQuestTimeMark != null)
                  {
                     _loc1_ = -588969252 ^ -828472946 ^ -824979281 ^ -1379205153;
                  }
                  else
                  {
                     _loc1_ = -372498623 ^ 0x642C1694 ^ -1981434757 ^ 0x7567198E;
                  }
                  break;
               case 2:
                  return this.currentQuestTimeMark._0995b3aa2fe33ceaf8dd4322(getTimer());
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c1b997b3c5e2aaa33a678cad() : int
      {
         var _loc1_:int = -1067381485 ^ -802778724 ^ 0x4A810570 ^ -1718925294;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1261410263 ^ -974280789 ^ 0x12387092 ^ -1605865729))
            {
               case 0:
                  return -1170762635 ^ -26828915 ^ 0x2BFA3DD8 ^ 0x6FAB3620;
               case 1:
                  return this._0197120ef6d49b0893064c98();
               case 2:
                  if(this._65fd6a7f5e90e48118d56525[_d639e2c43447781c972a23b3.IS_COMPLETE])
                  {
                     _loc1_ = 0xFCE7A0 ^ -1286348857 ^ -700091335 ^ -1498964559;
                  }
                  else
                  {
                     _loc1_ = -2122859879 ^ 0x6A2EC8BA ^ 0x6A824EDF ^ 0x4296ED12;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _e4907aaeb95acdc5444b0b36() : Boolean
      {
         return this._65fd6a7f5e90e48118d56525[IS_COMPLETE];
      }
   }
}

