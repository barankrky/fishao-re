package com.ax3.fishao.entries
{
   import assets.common.CharPosPoint;
   import com.ax3.display.tfs.ParamsApplier;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine.model.EFishingLineColor;
   import com.ax3.geom.GraphPoint;
   import flash.geom.Point;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class LocationUser
   {
      
      public var username:String;
      
      public var view:*;
      
      public var position:GraphPoint;
      
      public var rodInfoId:int = -2147483648;
      
      public var rodColor:String = null;
      
      public var viewConfig:CharViewConfig;
      
      public var fieldChar:FieldChar;
      
      public var isReady:Boolean;
      
      public var level:int;
      
      public var floatId:String = GameSwf.settings.floatNumber;
      
      private var _delayedInventoryUpdateData:Array = null;
      
      public var isModerator:Boolean = false;
      
      public var positionPoint:CharPosPoint = new CharPosPoint();
      
      public var boatTransPositionPoint:CharPosPoint = new CharPosPoint();
      
      public var initialFishingPos:Point;
      
      private var _fishingLineColor:String;
      
      private var _room:String;
      
      public function LocationUser()
      {
         super();
         this.positionPoint.mouseChildren = false;
         this.positionPoint.mouseEnabled = false;
         this.positionPoint.alpha = 0.25;
         this.boatTransPositionPoint.mouseChildren = false;
         this.boatTransPositionPoint.mouseEnabled = false;
      }
      
      public function get fishingLineColor() : String
      {
         return this._fishingLineColor;
      }
      
      public function set fishingLineColor(param1:String) : void
      {
         if(this._fishingLineColor == param1)
         {
            return;
         }
         this._fishingLineColor = param1;
         this.fieldChar.rod.onRopeColorChanged(EFishingLineColor.getColor(this._fishingLineColor));
      }
      
      public function readConfig(param1:Object) : void
      {
         ParamsApplier.copyProperties(this,param1);
         this._fishingLineColor = Debug.getPropertyOrDefault(param1,"fishing_line_color",EFishingLineColor.EFLC_WHITE);
         if(this.view is String)
         {
            this.viewConfig = CharViewConfig.fromObject(JSON.parse(this.view));
         }
         else if(this.view is Object)
         {
            this.viewConfig = CharViewConfig.fromObject(this.view);
         }
         if(this.viewConfig != null)
         {
            this.viewConfig = CharViewConfig.reviewCharForModeratorSuit(this.viewConfig,this.isModerator);
         }
      }
      
      public function set isAtVihicle(param1:Boolean) : void
      {
         if(this.fieldChar != null)
         {
            this.fieldChar.onRaft = param1;
         }
      }
      
      public function set pos(param1:Object) : void
      {
         if(param1 is String)
         {
            param1 = JSON.parse(String(param1));
         }
         this.position = new GraphPoint(param1.x,param1.y,param1.rotation);
         this._room = Debug.getPropertyOrDefault(param1,"room",EPlayerPosition.EPP_DEFAULT);
      }
      
      public function updateView(param1:CharViewConfig) : void
      {
         this.viewConfig = param1;
         if(this.fieldChar != null)
         {
            this.fieldChar.updateView();
         }
      }
      
      public function updateChar() : void
      {
         this.fieldChar.setPosition(this.position.x,this.position.y,this.position.rotation);
         this.fieldChar.roomCurrent = this._room;
         this.fieldChar.setRodInfo(this.rodInfoId,ShopItemColor.findColorName(this.rodColor));
         this.fieldChar.setFloat(this.floatId);
      }
      
      public function setPosition(param1:int, param2:int, param3:int = -1) : void
      {
         this.position.x = param1;
         this.position.y = param2;
         if(param3 != -1)
         {
            this.position.rotation = param3;
         }
      }
      
      public function setRodInfoId(param1:int, param2:String) : void
      {
         if(app.user.inFishingProcess.value == true && app.user.username == this.username)
         {
            if(this._delayedInventoryUpdateData == null)
            {
               this._delayedInventoryUpdateData = [];
               app.user.inFishingProcess.addEventListener(VariableChangeEvent.CHANGE,this.onPlayerInFishingProcessChange);
            }
            this._delayedInventoryUpdateData.push([param1,param2]);
         }
         else
         {
            this.rodInfoId = param1;
            this.rodColor = param2;
            this.fieldChar.setRodInfo(param1,ShopItemColor.findColorName(param2));
         }
      }
      
      private function onPlayerInFishingProcessChange(param1:VariableChangeEvent) : void
      {
         var _loc2_:* = undefined;
         if(app.user.inFishingProcess.value == false)
         {
            while(this._delayedInventoryUpdateData.length > 0)
            {
               _loc2_ = this._delayedInventoryUpdateData.shift();
               this.setRodInfoId.apply(this,_loc2_);
            }
         }
      }
      
      public function readFromProfileUserInfoResp(param1:String, param2:ProfileUserInfoResp) : void
      {
         if(param1 != null)
         {
            this.username = param1;
         }
         this.isModerator = param2.isModerator;
      }
   }
}

