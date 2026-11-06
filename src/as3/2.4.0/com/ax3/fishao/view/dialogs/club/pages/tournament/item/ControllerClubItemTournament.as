package com.ax3.fishao.view.dialogs.club.pages.tournament.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ETournamentClubsType;
   import flash.events.Event;
   
   public class ControllerClubItemTournament extends Controller
   {
      
      private var _view:ViewClubItemTournament = new ViewClubItemTournament(this);
      
      private var _data:Object;
      
      private var _clubInfo:ClubInfo;
      
      private var _tournamentType:String;
      
      public function ControllerClubItemTournament(param1:Object, param2:String)
      {
         super(this._view);
         this._tournamentType = param2;
         this._data = param1;
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubInfoOutside = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view:
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
         this._view.tournamentType = this._tournamentType;
         this._clubInfo = new ClubInfo();
         this._clubInfo.deserialize(this._data);
         this._view.emblemID = this._clubInfo.emblemID;
         this._view.name = this._clubInfo.name;
         this._view.position = Debug.assertProperty(this._data,"position");
         this._view.setCriteria(this._tournamentType,Debug.assertProperty(this._data,"criteria"));
         this._view.reward = Debug.assertProperty(this._data,"reward");
         this._view.isCurrent = GameSwf.instance.managerClubs.isUserInClubWithID(this._clubInfo.ID);
         this.tryInitTooltip();
      }
      
      private function tryInitTooltip() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = this._data["members"];
         if(_loc5_ == null || _loc5_.length == 0)
         {
            return;
         }
         this._view.initTooltip();
         var _loc6_:Array = [];
         _loc5_.sortOn("criteria",Array.DESCENDING | Array.NUMERIC);
         switch(this._tournamentType)
         {
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_CLUB_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_FRESHWATER_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_SALTWATER_FISH:
               _loc5_ = [_loc5_[0]];
               break;
            default:
               _loc5_.splice(20);
         }
         for each(_loc1_ in _loc5_)
         {
            _loc2_ = int(_loc1_["criteria"]);
            _loc3_ = _loc1_["login"];
            _loc4_ = ETournamentClubsType.getCriteriaString(this._tournamentType,_loc2_);
            _loc6_.push(_loc3_ + ": " + _loc4_);
         }
         this._view.tooltipText = _loc6_.join("\n");
      }
   }
}

