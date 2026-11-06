package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewTitleAutosized extends ViewBase
   {
      
      private static const INSTANCE_NAME_VIEW_LEFT:String = "viewLeft";
      
      private static const INSTANCE_NAME_VIEW_CENTER:String = "viewCenter";
      
      private static const INSTANCE_NAME_VIEW_RIGHT:String = "viewRight";
      
      private static const INSTANCE_NAME_LABEL:String = "label";
      
      private var _source:DisplayObjectContainer;
      
      private var _label:TextField;
      
      private var _viewLeft:DisplayObject;
      
      private var _viewCenter:DisplayObject;
      
      private var _viewRight:DisplayObject;
      
      private var _originalX:Number;
      
      public function ViewTitleAutosized(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set text(param1:String) : void
      {
         this._label.text = param1;
         this._label.width = this._label.textWidth + 5;
         this.updateSize();
      }
      
      private function init() : void
      {
         this._viewLeft = Debug.assertProperty(this._source,INSTANCE_NAME_VIEW_LEFT,DisplayObject);
         this._viewCenter = Debug.assertProperty(this._source,INSTANCE_NAME_VIEW_CENTER,DisplayObject);
         this._viewRight = Debug.assertProperty(this._source,INSTANCE_NAME_VIEW_RIGHT,DisplayObject);
         this._label = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL,TextField);
         this._originalX = this._source.x + this._source.width / 2;
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         this.updateSize();
      }
      
      private function updateSize() : void
      {
         this._viewCenter.width = int(this._label.width + 0.5);
         this._viewCenter.x = int(this._viewLeft.width);
         this._viewRight.x = int(this._viewCenter.x + this._viewCenter.width);
         this._source.x = int(this._originalX - source.width / 2);
      }
   }
}

