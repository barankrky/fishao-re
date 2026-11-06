package com.ax3.fishao.view.wrappers.communication.helpers.club
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.model.ETournamentClubsType;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.HelperMessageBase;
   import com.brokenfunction.json.decodeJson;
   
   public class HelperMessageClubTournamentEnd extends HelperMessageBase
   {
      
      public function HelperMessageClubTournamentEnd()
      {
         super();
      }
      
      override public function handleMessage(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         super.handleMessage(param1,param2);
         var _loc18_:Object = decodeJson(param2);
         var _loc19_:int = Debug.assertProperty(_loc18_,"position");
         var _loc20_:String = Debug.assertProperty(_loc18_,"tournament_type");
         var _loc21_:String = Debug.assertProperty(_loc18_,"template");
         var _loc22_:String = I18n.get(_loc21_);
         var _loc23_:Array = Debug.assertProperty(_loc18_,"top_list");
         var _loc24_:Array = [];
         for each(_loc3_ in _loc23_)
         {
            _loc11_ = Debug.assertProperty(_loc3_,"position");
            _loc12_ = Debug.assertProperty(_loc3_,"name");
            _loc13_ = Debug.assertProperty(_loc3_,"criteria");
            _loc14_ = ETournamentClubsType.getCriteriaString(_loc20_,_loc13_);
            _loc15_ = Debug.assertProperty(_loc3_,"reward_points");
            _loc16_ = _loc15_ + " " + I18n.get(EStringType.EST_COMMON_CLUB_POINTS);
            _loc16_ = UtilsString.limitCharCount(_loc16_,14,"..");
            _loc17_ = [_loc11_.toString(),_loc12_,_loc14_,_loc16_];
            _loc24_.push(_loc17_);
         }
         _loc4_ = ETournamentClubsType.getColumnStringType(_loc20_);
         _loc5_ = UtilsString.limitCharCount(I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_POSITION),3,"..");
         _loc6_ = UtilsString.limitCharCount(I18n.get(EStringType.EST_CLUB_LABEL_NAME),14,"..");
         _loc7_ = UtilsString.limitCharCount(I18n.get(EStringType.EST_COMMON_REWARD),13,"..");
         _loc8_ = UtilsString.limitCharCount(I18n.get(_loc4_),8,"..");
         _loc9_ = [_loc5_,_loc6_,_loc8_,_loc7_];
         _loc10_ = UtilsString.createTable(_loc9_,_loc24_,73,"[30, 250, 370, 500]");
         _loc22_ = _loc22_.replace(EStringTypeStubs.ESTS_USERNAME,app.user.username);
         _loc22_ = _loc22_.replace(EStringTypeStubs.ESTS_TYPE,I18n.get(_loc20_));
         _loc22_ = _loc22_.replace(EStringTypeStubs.ESTS_POSITION,_loc19_);
         _loc22_ = _loc22_.replace(EStringTypeStubs.ESTS_COUNT,_loc23_.length);
         _loc22_ += "\n" + _loc10_;
         _body = _loc22_;
      }
   }
}

