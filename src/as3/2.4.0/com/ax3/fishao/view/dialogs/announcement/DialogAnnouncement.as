package com.ax3.fishao.view.dialogs.announcement
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.text.TextDisplayMode;
   import flash.text.TextRenderer;
   import protocol.api.announcements.init.AnnouncementInfo;
   
   public class DialogAnnouncement extends DialogAnnouncementAsset
   {
      
      private var _entity:AnnouncementInfo;
      
      public function DialogAnnouncement()
      {
         super();
      }
      
      public function set entity(param1:AnnouncementInfo) : void
      {
         if(this._entity == param1)
         {
            return;
         }
         this._entity = param1;
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_ANNOUNCEMENTS;
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         super.onButtonCloseClicked(param1);
         GameSwf.instance.managerAnnouncements.tryShowDialogAnnouncements();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         TextRenderer.displayMode = TextDisplayMode.LCD;
         Debug.assertNotEqual(this._entity,null,"Please establish entity first");
         buttonOk.label = I18n.get(EStringType.EST_DIALOG_ANNOUNCEMENT_BOARD_BUTTON_OK);
         buttonOk.handler = this.onButtonCloseClicked;
         _viewTextTitle.text = I18n.get(this._entity.title);
         _viewTextDescription.text = I18n.get(this._entity.description);
         var _loc1_:Bitmap = new Bitmap();
         app.resourceManager.replaceBitmapDataFromURL(_loc1_,this._entity.urlImage);
         viewImage.addChild(_loc1_);
         labelTime.text = I18n.formatShortTimestamp(this._entity.timeDiff,true);
      }
   }
}

