package com.ax3.fishao.view.wrappers.communication.helpers.club
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.HelperMessageBase;
   import com.brokenfunction.json.decodeJson;
   
   public class HelperMessageClubFishUnlocked extends HelperMessageBase
   {
      
      public function HelperMessageClubFishUnlocked()
      {
         super();
      }
      
      override public function handleMessage(param1:String, param2:String) : void
      {
         super.handleMessage(param1,param2);
         var _loc3_:Object = decodeJson(param2);
         var _loc4_:String = Debug.assertProperty(_loc3_,"template");
         var _loc5_:String = I18n.get(_loc4_);
         var _loc6_:int = Debug.assertProperty(_loc3_,"fish_id");
         var _loc7_:String = I18n.getFishName(_loc6_);
         var _loc8_:Boolean = Debug.assertProperty(_loc3_,"is_salt");
         var _loc9_:String = I18n.get(_loc8_ ? EStringType.EST_COMMON_SALT : EStringType.EST_COMMON_FRESH);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_USERNAME,app.user.username);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_NAME,_loc7_);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_TYPE,_loc9_);
         _body = _loc5_;
      }
   }
}

