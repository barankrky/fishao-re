package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl.StaticClassFactoryWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.SetBitmapInContainer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class FishaoDropdownWithImage extends FishaoDropdownBaseWrapper implements IAssetWrapper
   {
      
      private var _image:Sprite;
      
      public function FishaoDropdownWithImage()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._image = (_child as DisplayObjectContainer).getChildByName("image") as Sprite;
      }
      
      public function init() : void
      {
         FishaoDropdownListLongItem.itemClass = this.itemClass;
         setItemFactory(new StaticClassFactoryWrapper(Class(FishaoDropdownImageListItem)));
      }
      
      public function get itemClass() : Class
      {
         return Object(_child["open_list"]["item"]).constructor;
      }
      
      public function set flag(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this._image,app.resourceManager,I18n.LANG_FLAG_BITMAP_WIDTH,I18n.LANG_FLAG_BITMAP_HEIGHT,I18n.LANG_FLAG_CONTAINER_WIDTH,I18n.LANG_FLAG_CONTAINER_HEIGHT);
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._image.numChildren)
         {
            this._image.removeChildAt(_loc1_);
            _loc1_++;
         }
      }
   }
}

