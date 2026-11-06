package com.ax3.fishao.locations.privateHouse
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationModelOnVirtualWorld;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.npc.NpcRex;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.privateHouse.interior.model.EFloorCellType;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   import com.junkbyte.console.Cc;
   import protocol.sr.MvUsrToResp;
   import protocol.sr.PrivateHousePondFishResp;
   import protocol.sr.UpdateResp;
   
   public class LocationModelPrivateHouse extends LocationModelOnVirtualWorld
   {
      
      private var _ownerUsername:String;
      
      private var _breederRex:NpcRex;
      
      public var pondFish:Array = [];
      
      private var _locationLayers:LocationLayersPrivateHouse;
      
      private var _managerFeatures:ManagerFeatures;
      
      public function LocationModelPrivateHouse(param1:int)
      {
         super(param1);
         this._managerFeatures = GameSwf.instance.managerFeatures;
         FishaoFscModelManager.fscModel.addRequestHandler(PrivateHousePondFishResp,this.onPrivateHousePondFishResp);
      }
      
      public static function generateFurnitureMapFloorFirst() : Array
      {
         var _loc1_:int = 0;
         var _loc2_:Array = UtilsArray.createMultidimensionalArray([12,12]);
         var _loc3_:int = 0;
         while(_loc3_ < 12)
         {
            if(_loc3_ == 3 || _loc3_ == 9)
            {
               _loc1_ = 2;
               while(_loc1_ < 10)
               {
                  _loc2_[_loc1_][_loc3_] = EFloorCellType.EFCT_BLOCKED;
                  _loc1_++;
               }
            }
            else if(_loc3_ > 3 && _loc3_ < 9)
            {
               _loc2_[2][_loc3_] = EFloorCellType.EFCT_BLOCKED;
               _loc2_[9][_loc3_] = EFloorCellType.EFCT_BLOCKED;
            }
            else
            {
               _loc2_[5][_loc3_] = EFloorCellType.EFCT_BLOCKED;
               _loc2_[6][_loc3_] = EFloorCellType.EFCT_BLOCKED;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function generateFurnitureMapFloorSecond() : Array
      {
         return UtilsArray.createMultidimensionalArray([12,12]);
      }
      
      public static function generateFurnitureMapFloorThird() : Array
      {
         return UtilsArray.createMultidimensionalArray([12,12]);
      }
      
      public function getOwnerUsername() : String
      {
         return this._ownerUsername;
      }
      
      public function setOwnerUsername(param1:String) : void
      {
         this._ownerUsername = param1;
      }
      
      public function get breederRexNPC() : NpcRex
      {
         return this._breederRex;
      }
      
      public function get isOwnHouse() : Boolean
      {
         return this._ownerUsername == app.user.username;
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogPrivateHouse).locationLayersBase as LocationLayersPrivateHouse;
      }
      
      private function onPrivateHousePondFishResp(param1:PrivateHousePondFishResp) : void
      {
         this.pondFish = JSON.parse(param1.pondFishes) as Array;
         this.updateBoardText();
      }
      
      override protected function moveUserHandler(param1:MvUsrToResp) : void
      {
         var _loc2_:LocationUser = getLocationUser(param1.login);
         if(Boolean(_loc2_ && _loc2_.fieldChar && !(_loc2_.fieldChar is PlayerChar)) && Boolean(_loc2_.fieldChar.position) && (_loc2_.fieldChar.isOnForceMove || param1.y < LocationDialog.PRIVATE_HOUSE_GARDEN_HEIGHT - 17 && _loc2_.fieldChar.roomCurrent != EPlayerPosition.EPP_GARDEN))
         {
            return;
         }
         super.moveUserHandler(param1);
      }
      
      override protected function initNpc(param1:String, param2:Object) : LocationUser
      {
         var _loc3_:LocationUser = null;
         var _loc4_:LocationUser = null;
         var _loc5_:Boolean = param1 == ENpcName.ENN_REX;
         if(!this.isOwnHouse && _loc5_)
         {
            return _loc4_;
         }
         _loc4_ = super.initNpc(param1,param2);
         if(_loc5_)
         {
            _loc3_ = _npcMap[param1];
            this._breederRex = NpcRex(_loc3_.fieldChar);
         }
         return _loc4_;
      }
      
      override public function sendEnterToLocation() : void
      {
         tryInitWorldConfig();
         app.char.isFreeze = false;
         addRequestHandlers();
         FishaoFscModelManager.locationExtension.enterPrivateHouse(this._ownerUsername,Preloader.waitForResponse());
      }
      
      override public function updateHandler(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         try
         {
            if(response.hasDataProperty("pondFishes"))
            {
               this.pondFish = response.getArrayData("pondFishes");
               this.updateBoardText();
            }
            super.updateHandler(response);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("PrivateHouseLocation.updateHandler ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      public function updateBoardText() : void
      {
         this._locationLayers._viewBoardFish.tooltipText = this.generateBoardTooltipText();
      }
      
      private function generateBoardTooltipText() : String
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.pondFish != null)
         {
            _loc1_ = I18n.get("privateHouse_backyardBoard").split("#NUMBER#").join(this.pondFish.length);
            if(this.isOwnHouse)
            {
               _loc1_ += ": ";
               if(this.pondFish.length == 0)
               {
                  _loc1_ = _loc1_.substr(0,_loc1_.length - 2);
               }
               _loc2_ = [];
               _loc3_ = 0;
               while(_loc3_ < this.pondFish.length)
               {
                  _loc2_[_loc3_] = I18n.get("fish_" + this.pondFish[_loc3_]);
                  _loc3_++;
               }
               _loc2_.sort();
               _loc4_ = 0;
               while(_loc4_ < this.pondFish.length)
               {
                  _loc1_ += _loc2_[_loc4_];
                  if(_loc4_ < this.pondFish.length - 1)
                  {
                     _loc1_ += ", ";
                  }
                  _loc4_++;
               }
            }
            return _loc1_;
         }
         return "";
      }
      
      public function updateFloorAccess() : void
      {
         var _loc1_:Boolean = this._managerFeatures.isFeatureEnabled(EUserFeature.EUF_SECOND_FLOOR);
      }
      
      override public function destroy() : void
      {
         FishaoFscModelManager.fscModel.removeRequestHandler(PrivateHousePondFishResp,this.onPrivateHousePondFishResp);
         super.destroy();
      }
   }
}

