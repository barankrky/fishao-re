package com.ax3.fishao.view.wrappers.communication.helpers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.HelperMessageBase;
   import com.brokenfunction.json.decodeJson;
   
   public class HelperMessageEventEnd extends HelperMessageBase
   {
      
      public function HelperMessageEventEnd()
      {
         super();
      }
      
      override public function handleMessage(param1:String, param2:String) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Array = null;
         var _loc17_:String = null;
         var _loc18_:Object = null;
         var _loc19_:String = null;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         super.handleMessage(param1,param2);
         var _loc24_:Object = decodeJson(param2);
         var _loc25_:int = Debug.assertProperty(_loc24_,"position");
         var _loc26_:String = Debug.assertProperty(_loc24_,"type");
         var _loc27_:String = I18n.get(EEventType.getStringTypeName(_loc26_));
         var _loc28_:String = Debug.assertProperty(_loc24_,"template");
         var _loc29_:String = I18n.get(_loc28_);
         var _loc30_:Object = Debug.getPropertyOrDefault(_loc24_,"additional_info",null);
         var _loc31_:Array = Debug.assertProperty(_loc24_,"top_list");
         var _loc32_:String = I18n.get(EStringType.EST_FISHCOINS_COUNT);
         var _loc33_:String = I18n.get(EStringType.EST_FISHBUCKS_COUNT);
         var _loc34_:Array = [];
         for each(_loc6_ in _loc31_)
         {
            _loc7_ = Debug.assertProperty(_loc6_,"position");
            _loc8_ = Debug.assertProperty(_loc6_,"login");
            _loc9_ = Debug.assertProperty(_loc6_,"criteria");
            _loc10_ = Debug.assertProperty(_loc6_,"reward_fishcoins");
            _loc11_ = Debug.assertProperty(_loc6_,"reward_fishbucks");
            _loc13_ = _loc7_.toString();
            _loc14_ = _loc8_;
            _loc15_ = _loc9_;
            if(_loc11_ > 0)
            {
               _loc12_ = _loc33_.replace(EStringTypeStubs.ESTS_COUNT,_loc11_);
            }
            if(_loc10_ > 0)
            {
               _loc12_ = _loc32_.replace(EStringTypeStubs.ESTS_COUNT,_loc10_);
            }
            _loc12_ = UtilsString.limitCharCount(_loc12_,14,"..");
            if(_loc26_ == EEventType.EET_CATCH_BIGGEST_FISH)
            {
               _loc17_ = Debug.assertProperty(_loc6_,"additional_params");
               _loc18_ = JSON.parse(_loc17_);
               _loc19_ = Debug.assertProperty(_loc18_,"fish_id");
               _loc20_ = UtilsString.limitCharCount(I18n.get("fish_" + _loc19_),14,"..");
               _loc16_ = [_loc13_,_loc14_,_loc15_,_loc20_,_loc12_];
            }
            else
            {
               _loc16_ = [_loc13_,_loc14_,_loc15_,_loc12_];
            }
            _loc34_.push(_loc16_);
         }
         switch(_loc26_)
         {
            case EEventType.EET_CATCH_MOST_FISH_SHINIES:
            case EEventType.EET_CATCH_MOST_FISH_WITH_STAR:
            case EEventType.EET_CATCH_MOST_FISH_WITH_TYPE:
            case EEventType.EET_CATCH_MOST_FISH:
               _loc5_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_CAUGHT;
               break;
            case EEventType.EET_WIN_MOST_TOURNAMENTS:
            case EEventType.EET_COLLECT_MOST_SHELLS:
            case EEventType.EET_COLLECT_MOST_FRUITS:
            case EEventType.EET_USE_MOST_GADGETS:
               _loc5_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_COUNT;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH:
            case EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               _loc5_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SIZE;
               break;
            case EEventType.EET_SPEND_MOST_FISHCOINS:
            case EEventType.EET_SPEND_MOST_FISHBUCKS:
               _loc5_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SPEND;
               break;
            case EEventType.EET_GAIN_MOST_EXP:
               _loc5_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_EXP;
               break;
            default:
               Debug.assert(false);
         }
         var _loc35_:String = UtilsString.limitCharCount(I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_POSITION),3,"..");
         var _loc36_:String = UtilsString.limitCharCount(I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_NAME),14,"..");
         var _loc37_:String = UtilsString.limitCharCount(I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_REWARD),13,"..");
         var _loc38_:String = UtilsString.limitCharCount(I18n.get(_loc5_),8,"..");
         if(_loc26_ == EEventType.EET_CATCH_BIGGEST_FISH)
         {
            _loc21_ = UtilsString.limitCharCount(I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_NAME_FISH),14,"..");
            _loc3_ = [_loc35_,_loc36_,_loc38_,_loc21_,_loc37_];
            _loc4_ = UtilsString.createTable(_loc3_,_loc34_,83,"[30, 190, 290, 440, 570]");
         }
         else
         {
            _loc3_ = [_loc35_,_loc36_,_loc38_,_loc37_];
            _loc4_ = UtilsString.createTable(_loc3_,_loc34_,61,"[30, 190, 290, 420]");
         }
         if(_loc30_ != null)
         {
            if(_loc26_ == EEventType.EET_CATCH_MOST_FISH_WITH_STAR)
            {
               _loc22_ = Debug.assertProperty(_loc30_,"fish_rating");
               _loc27_ = _loc27_.replace(EStringTypeStubs.ESTS_VALUE,_loc22_);
            }
            else if(_loc26_ == EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE || _loc26_ == EEventType.EET_CATCH_MOST_FISH_WITH_TYPE)
            {
               _loc23_ = Debug.assertProperty(_loc30_,"fish_id");
               _loc27_ = _loc27_.replace(EStringTypeStubs.ESTS_NAME,I18n.get("fish_" + _loc23_));
            }
         }
         _loc29_ = _loc29_.replace(EStringTypeStubs.ESTS_USERNAME,app.user.username);
         _loc29_ = _loc29_.replace(EStringTypeStubs.ESTS_NAME,_loc27_);
         _loc29_ = _loc29_.replace(EStringTypeStubs.ESTS_POSITION,_loc25_);
         _loc29_ = _loc29_.replace(EStringTypeStubs.ESTS_COUNT,_loc31_.length);
         _loc29_ = _loc29_.replace(EStringTypeStubs.ESTS_EVENT_TOP_LIST,_loc4_);
         _body = _loc29_;
      }
   }
}

