package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   
   public class ViewWithLoadedImage extends ViewBase
   {
      
      private var _imagesMap:Dictionary;
      
      public function ViewWithLoadedImage(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set imageURL(param1:String) : void
      {
         if(!(param1 in this._imagesMap))
         {
            this._imagesMap[param1] = FishaoBitmapLoader.loadImageAndReplaceStub(param1,source);
         }
         this.hideAllImages(param1);
      }
      
      public function set filters(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:DisplayObject = null;
         for(_loc2_ in this._imagesMap)
         {
            _loc3_ = this._imagesMap[_loc2_];
            _loc3_.filters = param1;
         }
      }
      
      private function init() : void
      {
         this._imagesMap = new Dictionary(true);
         this.source.alpha = 0.01;
      }
      
      private function hideAllImages(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:DisplayObject = null;
         for(_loc2_ in this._imagesMap)
         {
            _loc3_ = this._imagesMap[_loc2_];
            _loc3_.visible = _loc2_ == param1;
         }
      }
   }
}

