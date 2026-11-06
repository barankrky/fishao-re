package com.ax3.fishao.locations.with_club_entrance
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.PositionSoundMediator;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.club_outside.DialogClubOutside;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import flash.geom.Point;
   
   public class LocationDialogWithClubEntrance extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersWithClubEntrance;
      
      private var _positionInsideTeleport:Point;
      
      private var _positionOutsideTeleport:Point;
      
      private var _isMoveInsideTeleport:Boolean;
      
      private var _isMoveOutsideTeleport:Boolean;
      
      private var _managerClubs:ManagerClubs;
      
      public function LocationDialogWithClubEntrance(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      override protected function onProgramMoveFinished() : void
      {
         _playerChar.programmedMove = false;
         _programmedCharMoveTarget = null;
         if(this._isMoveInsideTeleport)
         {
            this._isMoveInsideTeleport = false;
            _playerChar.sendCurrentPlayerPosition(true);
            this.tryEnterToClubArea();
         }
         else if(this._isMoveOutsideTeleport)
         {
            this._isMoveOutsideTeleport = false;
            _playerChar.sendCurrentPlayerPosition(true);
         }
         else
         {
            super.onProgramMoveFinished();
         }
      }
      
      private function onDialogOutsideClosed() : void
      {
         if(this._managerClubs.userInClub)
         {
            GameSwf.instance.enterToSublocation(LocationConfig.CLUB_AREA.id,this.locationModel.id);
         }
         else
         {
            this._isMoveOutsideTeleport = true;
            movePlayerCharTo(this._positionOutsideTeleport);
         }
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersWithClubEntrance;
         var _loc1_:Point = this._locationLayers.clubEntrancePosition;
         this._positionInsideTeleport = _loc1_.add(new Point(0,-5));
         this._positionOutsideTeleport = _loc1_.add(new Point(0,50));
         return this._locationLayers;
      }
      
      override protected function createPositionSounds() : Vector.<PositionSoundMediator>
      {
         var _loc1_:Vector.<PositionSoundMediator> = super.createPositionSounds();
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<PositionSoundMediator>(0);
         }
         _loc1_.push(new PositionSoundMediator(FishaoSoundManager.SFX_077_CLUB_AREA_ENTRANCE,this._locationLayers.clubEntrancePosition,600));
         return _loc1_;
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
      }
      
      override protected function enterToSublocation(param1:int) : void
      {
         switch(param1)
         {
            case LocationConfig.CLUB_AREA.id:
               GameSwf.instance.lastVirtualLocationID = param1;
               this._isMoveInsideTeleport = true;
               movePlayerCharTo(this._positionInsideTeleport);
               break;
            default:
               super.enterToSublocation(param1);
         }
      }
      
      public function tryEnterToClubArea() : void
      {
         var _loc1_:DialogClubOutside = null;
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         if(this._managerClubs.userInClub)
         {
            GameSwf.instance.enterClubArea();
         }
         else
         {
            _loc1_ = app.dialogFactory.getDialog(DialogClubOutside);
            _loc1_.canOpenDialogInside = false;
            _loc1_.callbackClose = this.onDialogOutsideClosed;
            _loc1_.show();
         }
      }
      
      override public function setPositionAfterExitVirtualLocation(param1:int) : void
      {
         if(player == null)
         {
            return;
         }
         if(param1 == 112)
         {
            movePlayerCharTo(this._positionOutsideTeleport);
         }
         GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
      }
   }
}

