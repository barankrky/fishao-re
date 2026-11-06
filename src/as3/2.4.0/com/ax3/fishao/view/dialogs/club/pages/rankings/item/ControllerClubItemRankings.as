package com.ax3.fishao.view.dialogs.club.pages.rankings.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.EClubRankingType;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import flash.events.Event;
   
   public class ControllerClubItemRankings extends Controller
   {
      
      private var _view:ViewClubItemRankings = new ViewClubItemRankings(this);
      
      private var _data:Object;
      
      private var _isCurrent:Boolean;
      
      private var _clubInfo:ClubInfo;
      
      private var _type:String;
      
      public function ControllerClubItemRankings(param1:Object, param2:String)
      {
         super(this._view);
         this._type = param2;
         this._data = param1;
         this.init();
      }
      
      public function get name() : String
      {
         return this._clubInfo.name;
      }
      
      public function get isCurrent() : Boolean
      {
         return this._isCurrent;
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
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         var _loc1_:ManagerClubs = GameSwf.instance.managerClubs;
         this._clubInfo = Debug.assertProperty(this._data,"club_info");
         this._isCurrent = Debug.assertProperty(this._data,"is_current");
         this._view.name = this._clubInfo.name;
         this._view.emblemID = this._clubInfo.emblemID;
         var _loc2_:int = Debug.assertProperty(this._data,"criteria");
         var _loc3_:String = null;
         if(this._type == EClubRankingType.ECLRT_BIGGEST_FISH)
         {
            _loc3_ = I18n.formatDistance(_loc2_);
         }
         else
         {
            _loc3_ = _loc2_.toString();
         }
         this._view.criteria = _loc3_;
         this._view.position = Debug.assertProperty(this._data,"position");
         var _loc4_:int = Debug.assertProperty(this._data,"members_count");
         var _loc5_:int = Debug.assertProperty(this._data,"level");
         this._view.setMembers(_loc4_,_loc1_.getMembersMax(_loc5_));
         this._view.isCurrent = this._isCurrent;
      }
   }
}

