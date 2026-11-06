package com.ax3.fishao.view.dialogs
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.worlds.WorldInfo;
   import com.ax3.fishao.view.wrappers.impl.WorldListItemWrapper;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import protocol.sr.EnterWorldErrorResp;
   import protocol.sr.UpdateResp;
   
   public class WorldListSwfDialog extends WorldListDialogAsset
   {
      
      private var _worldsList:ExtendedMovieList;
      
      private var _destroyCurrentLocation:Boolean = true;
      
      public function WorldListSwfDialog()
      {
         super();
         tabChildren = false;
         this._worldsList = new ExtendedMovieList(1,-1,0,0,true);
      }
      
      private static function parseColorStatisticResponse(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = {};
         if(param1.data.hasOwnProperty("hair"))
         {
            _loc3_.hair = JSON.parse(param1.data.hair);
         }
         if(param1.data.hasOwnProperty("upper"))
         {
            _loc3_.upper = JSON.parse(param1.data.upper);
         }
         if(param1.data.hasOwnProperty("lower"))
         {
            _loc3_.lower = JSON.parse(param1.data.lower);
         }
         if(param1.data.hasOwnProperty("shoes"))
         {
            _loc2_ = JSON.parse(param1.data.shoes);
            if(_loc2_.hasOwnProperty("1"))
            {
               _loc3_.shoes1 = JSON.parse(_loc2_["1"]);
            }
            if(_loc2_.hasOwnProperty("3"))
            {
               _loc3_.shoes2 = JSON.parse(_loc2_["3"]);
            }
         }
         return _loc3_;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:String = null;
         var _loc2_:WorldInfo = null;
         var _loc3_:DisplayObject = null;
         super.onAssetCreationComplete();
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc5_:Array = GameSwf.instance.managerWorlds.worldsList;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = _worldLineFactory.createInstance();
            WorldListItemWrapper(_loc3_).setHandler(this.onButtonOkClicked);
            WorldListItemWrapper(_loc3_).entity = _loc2_;
            _loc4_.push(_loc3_);
         }
         this._worldsList.setList(_loc4_,1);
         listSet.addChild(this._worldsList.getList());
         viewsListHSlider.visible = _loc4_.length > 9;
         viewsListHSlider.moveHandler = this.moveHandler;
         viewsListHSlider.mouseScrollArea = worldListContainer;
         viewsListHSlider.listSize = this._worldsList.height;
         viewsListHSlider.setHandlerSize(9 / _loc4_.length,50);
         title.text = I18n.getUpper("selectWorld");
         serverName.text = I18n.get("world");
         users.text = I18n.get("players");
      }
      
      public function onButtonOkClicked(param1:WorldInfo, param2:Boolean = true) : void
      {
         this._destroyCurrentLocation = param2;
         _loadingIndicator.start();
         Preloader.addIndicator(_loadingIndicator);
         GameSwf.instance.managerWorlds.setDefaultWorld(param1);
         FishaoFscModelManager.loginFscExtension.enterWorld(param1.id,app.sid,param1.url,this.onConnectToWorld);
      }
      
      public function onEnterVirtualWorld(param1:String, param2:String, param3:Boolean = true) : void
      {
         this._destroyCurrentLocation = param3;
         setTimeout(FishaoFscModelManager.loginFscExtension.enterWorld,2000,param1,app.sid,param2,this.onConnectToVirtualWorld);
      }
      
      public function onLeaveVirtualLocation(param1:String, param2:String, param3:Boolean) : void
      {
         var worldId:String = param1;
         var url:String = param2;
         var destroyCurrentLocation:Boolean = param3;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onEnterWorldAfterLeavingVirtualLocation(param1);
         };
         this._destroyCurrentLocation = destroyCurrentLocation;
         FishaoFscModelManager.loginFscExtension.enterWorld(worldId,app.sid,url,callbackWrapper);
      }
      
      public function onLeaveVirtualLocationViaMap(param1:String, param2:String, param3:Boolean) : void
      {
         var worldId:String = param1;
         var url:String = param2;
         var destroyCurrentLocation:Boolean = param3;
         this._destroyCurrentLocation = destroyCurrentLocation;
         FishaoFscModelManager.locationExtension.leaveLocation(Preloader.waitForResponse(function(param1:ServerResp):void
         {
            var response:ServerResp = param1;
            var callback:* = function(param1:ServerResp):void
            {
               GameSwf.showWorldMap();
               GameSwf.worldMap.startMapUpdate();
            };
            FishaoFscModelManager.loginFscExtension.enterWorld(worldId,app.sid,url,callback);
         }));
      }
      
      private function onEnterWorldAfterLeavingVirtualLocation(param1:ServerResp) : void
      {
         if(this.onConnectToWorld(param1) && GameSwf.worldMap != null)
         {
            GameSwf.instance.enterToLocationAfterLeavingVirtual();
         }
      }
      
      private function onConnectToWorld(param1:ServerResp) : Boolean
      {
         var response:ServerResp = param1;
         GameSwf.instance.onConnectToWorld();
         _loadingIndicator.stop();
         Preloader.removeIndicator(_loadingIndicator);
         close();
         if(this._destroyCurrentLocation)
         {
            GameSwf.destroyCurrentLocations();
         }
         else
         {
            this._destroyCurrentLocation = true;
         }
         if(response is UpdateResp)
         {
            try
            {
               this.updateModeratorConsole(response as UpdateResp);
               this.tryShowCharacterEditor(response as UpdateResp);
            }
            catch(e:Error)
            {
               Cc.error("WorldListSwfDialog.onConnectToWorld ERROR",e);
               Cc.error(e.getStackTrace());
               GameSwf.sendReportToServer("updateResp");
            }
            return true;
         }
         if(response is EnterWorldErrorResp)
         {
            this.onEnterWorldError(response as EnterWorldErrorResp);
            return false;
         }
         return false;
      }
      
      private function onConnectToVirtualWorld(param1:ServerResp) : void
      {
         var response:ServerResp = param1;
         close();
         if(this._destroyCurrentLocation)
         {
            GameSwf.destroyCurrentLocations();
         }
         else
         {
            this._destroyCurrentLocation = true;
         }
         if(response is UpdateResp)
         {
            try
            {
               this.updateModeratorConsole(response as UpdateResp);
            }
            catch(e:Error)
            {
               Cc.log(response);
               Cc.error("WorldListSwfDialog.onConnectToVirtualWorld ERROR",e);
               Cc.error(e.getStackTrace());
               GameSwf.sendReportToServer("updateResp");
            }
         }
         else if(response is EnterWorldErrorResp)
         {
            this.onEnterWorldError(response as EnterWorldErrorResp);
         }
      }
      
      private function onWorldErrorDialogOKClick(param1:MouseEvent) : void
      {
         GameSwf.instance.managerWorlds.updateWorldsList(Preloader.waitForResponse(this.showWorldSelection));
      }
      
      private function onEnterWorldError(param1:EnterWorldErrorResp) : void
      {
         var _loc2_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc2_.setText(I18n.get("enter_world_error"));
         _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.okButton.addEventListener(MouseEvent.CLICK,this.onWorldErrorDialogOKClick);
         _loc2_.show();
      }
      
      private function tryShowCharacterEditor(param1:UpdateResp) : void
      {
         var _loc2_:Object = decodeJson(param1.data.charView);
         GameSwf.showWorldMap();
         GameSwf.worldMap.startMapUpdate();
         var _loc3_:Object = parseColorStatisticResponse(param1);
         close();
         GameSwf.instance.showCharacterDialog(_loc2_,_loc3_,param1.sid);
      }
      
      private function updateModeratorConsole(param1:UpdateResp) : void
      {
         app.user.isModerator = param1.data.hasOwnProperty("isModerator") && param1.data.isModerator == "true";
         if(Boolean(app.user.isModerator) || true)
         {
            Cc.config.enableKeystroke = true;
            Cc.config.commandLineAllowed = true;
            Cc.commandLine = true;
         }
      }
      
      private function moveHandler(param1:Number) : void
      {
         var _loc2_:int = this._worldsList.height - 428;
         this._worldsList.y = _loc2_ * (1 - param1) - _loc2_;
      }
      
      private function showWorldSelection(param1:Object) : void
      {
         show();
      }
   }
}

