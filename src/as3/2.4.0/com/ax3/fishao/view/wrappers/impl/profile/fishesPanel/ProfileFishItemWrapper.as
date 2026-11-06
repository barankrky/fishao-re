package com.ax3.fishao.view.wrappers.impl.profile.fishesPanel
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.profile.fishesPanelData.UserCaughtFishData;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CatchInfoSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.IPagesElement;
   import com.ax3.utils.SetBitmapInContainer;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ProfileFishItemWrapper extends Sprite implements IAssetWrapper, IPagesElement
   {
      
      private static const BITMAP_WIDTH:int = 200;
      
      private static const BITMAP_HEIGHT:int = 100;
      
      private static const BITMAP_CONTAINER_WIDTH:int = 240;
      
      private static const BITMAP_CONTAINER_HEIGHT:int = 125;
      
      private var _child:MovieClip;
      
      private var _img:MovieClip;
      
      private var _name:TextField;
      
      private var _elementData:UserCaughtFishData;
      
      public function ProfileFishItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = MovieClip(param1);
         this._img = MovieClip(this._child.getChildByName("img"));
         this._name = TextField(this._child.getChildByName("nameText"));
         this._child.stop();
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
         mouseChildren = true;
         this._img.buttonMode = true;
         this._img.useHandCursor = true;
         this._img.addEventListener(MouseEvent.CLICK,this.handleItemClick);
      }
      
      private function handleItemClick(param1:MouseEvent) : void
      {
         if(!GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            return;
         }
         var _loc2_:CatchInfoSwfDialog = app.dialogFactory.getCatchInfoDialog();
         _loc2_.setFish(parseInt(this._elementData.id));
         _loc2_.show();
      }
      
      public function set active(param1:Boolean) : void
      {
         if(param1)
         {
            this._child.gotoAndStop(2);
         }
         else
         {
            this._child.gotoAndStop(1);
         }
      }
      
      public function set elementData(param1:Object) : void
      {
         this._elementData = UserCaughtFishData(param1);
         this.imageUrl = this._elementData.imageUrl;
         this._name.text = this._elementData.name;
         this.userHave = this._elementData.userHave;
      }
      
      private function set imageUrl(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this._img,app.resourceManager,BITMAP_WIDTH,BITMAP_HEIGHT,BITMAP_CONTAINER_WIDTH,BITMAP_CONTAINER_HEIGHT);
      }
      
      public function set userHave(param1:Boolean) : void
      {
         if(!param1)
         {
            this._img.filters = [UtilsColor.getFilter(-256)];
         }
      }
   }
}

