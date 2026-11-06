package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.WorldListSwfDialog;
   import com.ax3.jss.ext.impl.LoginFscExtension;
   import com.junkbyte.console.Cc;
   import protocol.sr.UpdateResp;
   
   public class LocationModelOnVirtualWorld extends LocationModel
   {
      
      protected var prevUrl:String;
      
      protected var prevWorldName:String;
      
      private var _exitThroughTheDoor:Boolean;
      
      public function LocationModelOnVirtualWorld(param1:int)
      {
         super(param1);
      }
      
      public function set exitThroughTheDoor(param1:Boolean) : void
      {
         this._exitThroughTheDoor = param1;
      }
      
      protected function tryInitWorldConfig() : void
      {
         var _loc1_:LoginFscExtension = FishaoFscModelManager.loginFscExtension;
         var _loc2_:String = _loc1_.worldName.toLowerCase();
         if(_loc2_.indexOf("virtual") == -1 && _loc2_.indexOf("club") == -1)
         {
            this.prevUrl = _loc1_.url;
            this.prevWorldName = _loc1_.worldName;
         }
      }
      
      override public function updateHandler(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var world:Object = null;
         try
         {
            super.updateHandler(response);
            if(response.hasDataProperty("remoteWorld"))
            {
               world = response.getJsonData("remoteWorld");
               this.enterVirtualWorld(world["worldId"],world["url"]);
            }
            else if(response.hasDataProperty("availableLocations"))
            {
               sendEnterToLocation();
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationModelOnVirtualWorld.updateHandler ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      protected function enterVirtualWorld(param1:String, param2:String) : void
      {
         var _loc3_:WorldListSwfDialog = app.dialogFactory.getWorldListSwfDialog();
         _loc3_.onEnterVirtualWorld(param1,param2,false);
      }
      
      protected function leaveViaMap() : void
      {
         var _loc1_:WorldListSwfDialog = app.dialogFactory.getWorldListSwfDialog();
         _loc1_.onLeaveVirtualLocationViaMap(this.prevWorldName,this.prevUrl,false);
      }
      
      protected function leave() : void
      {
         var _loc1_:WorldListSwfDialog = app.dialogFactory.getWorldListSwfDialog();
         _loc1_.onLeaveVirtualLocation(this.prevWorldName,this.prevUrl,false);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._exitThroughTheDoor)
         {
            this.leave();
         }
         else
         {
            GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
            this.leaveViaMap();
         }
      }
   }
}

