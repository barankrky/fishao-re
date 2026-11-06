package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import com.ax3.fishao.view.dialogs.events.views.ViewMemberItem;
   import protocol.api.events.data.EventMemberInfo;
   
   public class ControllerMemberItem extends Controller
   {
      
      private var _view:ViewMemberItem = new ViewMemberItem(this);
      
      private var _entity:EventMemberInfo;
      
      private var _isCurrent:Boolean;
      
      public function ControllerMemberItem(param1:EventMemberInfo)
      {
         this._entity = Debug.assertNotEqual(param1,null);
         super(this._view);
         this.init();
      }
      
      public function get isCurrent() : Boolean
      {
         return this._isCurrent;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         this._isCurrent = app.user.username == this._entity.login;
         var _loc2_:String = GameSwf.instance.managerEvents.eventCurrent.type;
         if(_loc2_ == EEventType.EET_CATCH_BIGGEST_FISH || _loc2_ == EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE)
         {
            this._view.criteria = I18n.formatDistance(this._entity.criteria);
         }
         else
         {
            this._view.criteria = this._entity.criteria.toString();
         }
         if(_loc2_ == EEventType.EET_CATCH_BIGGEST_FISH)
         {
            if(this._entity.getAdditionalProperty("fish_id").length)
            {
               _loc1_ = parseInt(this._entity.getAdditionalProperty("fish_id"));
               this._view.fish = UtilsString.limitCharCount(I18n.get("fish_" + _loc1_),19,"..");
               this._view.displayFishnameColumn = true;
            }
         }
         else
         {
            this._view.displayFishnameColumn = false;
         }
         this._view.name = this._entity.login;
         this._view.position = this._entity.position;
         if(this._entity.rewardFishbucks > 0)
         {
            this._view.rewardFishbucks = this._entity.rewardFishbucks;
         }
         else if(this._entity.rewardFishcoins > 0)
         {
            this._view.rewardFishcoins = this._entity.rewardFishcoins;
         }
         this._view.isCurrent = this._isCurrent;
      }
      
      override public function cleanup() : void
      {
         this._view = null;
         this._entity = null;
         super.cleanup();
      }
   }
}

