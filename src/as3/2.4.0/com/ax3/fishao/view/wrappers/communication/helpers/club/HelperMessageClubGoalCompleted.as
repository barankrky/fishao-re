package com.ax3.fishao.view.wrappers.communication.helpers.club
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.HelperMessageBase;
   import com.brokenfunction.json.decodeJson;
   
   public class HelperMessageClubGoalCompleted extends HelperMessageBase
   {
      
      public function HelperMessageClubGoalCompleted()
      {
         super();
      }
      
      override public function handleMessage(param1:String, param2:String) : void
      {
         super.handleMessage(param1,param2);
         var _loc3_:Object = decodeJson(param2);
         var _loc4_:int = Debug.assertProperty(_loc3_,"reward_points");
         var _loc5_:String = Debug.assertProperty(_loc3_,"goal_type");
         var _loc6_:int = Debug.assertProperty(_loc3_,"value_total");
         _loc5_ = I18n.get(_loc5_);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_VALUE,_loc6_);
         var _loc7_:String = Debug.assertProperty(_loc3_,"template");
         var _loc8_:String = I18n.get(_loc7_);
         _loc8_ = _loc8_.replace(EStringTypeStubs.ESTS_TYPE,_loc5_);
         _loc8_ = _loc8_.replace(EStringTypeStubs.ESTS_VALUE,_loc4_);
         _body = _loc8_;
      }
   }
}

