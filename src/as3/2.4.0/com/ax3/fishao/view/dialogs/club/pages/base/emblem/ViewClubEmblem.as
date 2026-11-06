package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubEmblem extends ViewWithLoadedImage
   {
      
      public function ViewClubEmblem(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
      }
      
      public function set emblemID(param1:int) : void
      {
         this.imageURL = FishaoBitmapLoader.convertImageNameURL(ConstantsBase.IMAGE_NAME_CLUB_EMBLEM + param1);
         UtilsDisplayObject.toFront(this.source);
      }
   }
}

