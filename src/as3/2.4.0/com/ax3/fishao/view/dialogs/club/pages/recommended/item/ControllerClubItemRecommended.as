package com.ax3.fishao.view.dialogs.club.pages.recommended.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member.HelperClubJoin;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import flash.events.Event;
   
   public class ControllerClubItemRecommended extends Controller
   {
      
      private var _view:ViewClubItemRecommended = new ViewClubItemRecommended(this);
      
      private var _clubData:Object;
      
      private var _clubInfo:ClubInfo;
      
      private var _helperJoin:HelperClubJoin;
      
      public function ControllerClubItemRecommended(param1:Object)
      {
         super(this._view);
         this._clubData = param1;
         this.init();
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._helperJoin.canOpenDialogInside = param1;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubInfoOutside = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.viewHitArea:
                  _loc3_ = app.dialogFactory.getDialog(DialogClubInfoOutside);
                  _loc3_.entity = this._clubInfo;
                  _loc3_.show();
                  break;
               case this._view.buttonJoin:
                  this._helperJoin.doAction();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._clubInfo = new ClubInfo();
         this._clubInfo.deserialize(this._clubData);
         this._helperJoin = new HelperClubJoin();
         this._helperJoin.clubInfo = this._clubInfo;
         this._view.name = this._clubInfo.name;
         this._view.points = Debug.assertProperty(this._clubData,"points");
         var _loc1_:int = Debug.assertProperty(this._clubData,"members_count");
         var _loc2_:int = Debug.assertProperty(this._clubData,"level");
         var _loc3_:ManagerClubs = GameSwf.instance.managerClubs;
         var _loc4_:int = _loc3_.getMembersMax(_loc2_);
         this._view.setMembers(_loc1_,_loc4_);
         this._view.emblemID = this._clubInfo.emblemID;
      }
   }
}

