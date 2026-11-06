package com.ax3.fishao.display.panels.inventory.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewButton;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewButtonInventory extends ViewButton
   {
      
      private static const INSTANCE_NAME_IMAGE:String = "viewImage";
      
      private var _source:DisplayObjectContainer;
      
      private var _imageDefault:DisplayObject;
      
      private var _image:DisplayObject;
      
      public function ViewButtonInventory(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set image(param1:DisplayObject) : void
      {
         if(this._image == param1)
         {
            return;
         }
         this._image = param1;
         this._imageDefault.parent.addChild(this._image);
         this._image.x = this._imageDefault.x + (this._imageDefault.width - this._image.width) / 2;
         this._image.y = this._imageDefault.y + (this._imageDefault.height - this._image.height) / 2;
         this._imageDefault.visible = false;
      }
      
      private function init() : void
      {
         this._imageDefault = Debug.assertProperty(this._source,INSTANCE_NAME_IMAGE,DisplayObject);
      }
   }
}

