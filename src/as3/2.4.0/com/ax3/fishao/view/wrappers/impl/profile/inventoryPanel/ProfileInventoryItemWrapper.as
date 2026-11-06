package com.ax3.fishao.view.wrappers.impl.profile.inventoryPanel
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.IPagesElement;
   import com.ax3.utils.SetBitmapInContainer;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class ProfileInventoryItemWrapper extends Sprite implements IAssetWrapper, IPagesElement
   {
      
      private static const BITMAP_WIDTH:int = 80;
      
      private static const BITMAP_HEIGHT:int = 80;
      
      private static const BITMAP_CONTAINER_WIDTH:int = 80;
      
      private static const BITMAP_CONTAINER_HEIGHT:int = 80;
      
      private var _child:MovieClip;
      
      private var _img:MovieClip;
      
      private var _elementData:InventoryItem;
      
      public function ProfileInventoryItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:MovieClip = null;
         this._child = MovieClip(param1);
         this._img = MovieClip(this._child.getChildByName("img"));
         if(this._child.hasOwnProperty("selected"))
         {
            _loc2_ = MovieClip(this._child.getChildByName("selected"));
            _loc2_.visible = false;
         }
         this._child.stop();
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
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
         this._elementData = InventoryItem(param1);
         var _loc2_:String = InventoryItem.getImageFilename(this._elementData.id,this._elementData.type);
         if(_loc2_ != null)
         {
            this.imageUrl = _loc2_;
         }
         else
         {
            Cc.error("empty image url: " + _loc2_ + " for _elementData.id=" + this._elementData.id + ", _elementData.type=" + this._elementData.type);
            GameSwf.sendReportToServer("emptyImageUrl");
         }
      }
      
      private function set imageUrl(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this._img,app.resourceManager,BITMAP_WIDTH,BITMAP_HEIGHT,BITMAP_CONTAINER_WIDTH,BITMAP_CONTAINER_HEIGHT);
      }
   }
}

