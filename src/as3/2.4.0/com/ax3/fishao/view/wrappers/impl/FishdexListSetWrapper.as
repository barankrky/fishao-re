package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class FishdexListSetWrapper implements IAssetWrapper
   {
      
      private var _child:DisplayObject;
      
      private var _list:ExtendedMovieList;
      
      private var _handler:Function;
      
      public function FishdexListSetWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
      }
      
      public function addList(param1:ExtendedMovieList, param2:Function = null) : void
      {
         if(this._list != null && this._list.parent != null)
         {
            this._list.parent.removeChild(this._list);
         }
         this._list = param1;
         this._handler = param2;
         DisplayObjectContainer(this._child).addChild(param1.getList(this.click));
      }
      
      private function click(param1:MouseEvent) : void
      {
         var _loc2_:FishListItemWrapper = FishListItemWrapper(param1.currentTarget);
         if(FishListItemWrapper.isBackgroundActiveFunction(_loc2_))
         {
            return;
         }
         FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
         this._list.clearBackground();
         FishListItemWrapper.showBackgroundFunction(_loc2_);
         if(this._handler != null)
         {
            this._handler(_loc2_);
         }
      }
   }
}

