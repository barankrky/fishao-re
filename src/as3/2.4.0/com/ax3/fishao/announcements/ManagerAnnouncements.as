package com.ax3.fishao.announcements
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.announcement.DialogAnnouncement;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.announcements.init.AnnouncementInfo;
   import protocol.api.announcements.init.ResponseAnnouncements;
   
   public class ManagerAnnouncements extends ManagerBase
   {
      
      private var _announcements:Array;
      
      public function ManagerAnnouncements()
      {
         super();
         this.init();
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseAnnouncements = param1 as ResponseAnnouncements;
         this._announcements = _loc2_.list;
      }
      
      private function init() : void
      {
         this._announcements = [];
         _remoteExtension = FishaoFscModelManager.fscModel.extensionAnnouncements;
      }
      
      public function tryShowDialogAnnouncements() : void
      {
         if(this._announcements.length == 0 || GameSwf.instance.managerTutorial.isAnyTutorialInProgress || Boolean(app.user.isGuest))
         {
            return;
         }
         var _loc1_:AnnouncementInfo = this._announcements[0];
         UtilsArray.removeValue(this._announcements,_loc1_);
         var _loc2_:DialogAnnouncement = app.dialogFactory.getAnnouncementDialog();
         _loc2_.entity = _loc1_;
         _loc2_.show();
      }
   }
}

