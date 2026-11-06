package com.ax3.fishao.view.dialogs.fruits.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class ViewDialogFruitsCrush extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _buttonCrush:FrameButtonWrapper;
      
      public function ViewDialogFruitsCrush(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonCrush() : FrameButtonWrapper
      {
         return this._buttonCrush;
      }
      
      private function init() : void
      {
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_FRUITS_CRUSH_TITLE);
         this._buttonCrush = new FrameButtonWrapper();
         this._buttonCrush.process(Debug.assertProperty(this._source,"buttonCrush"));
         this._buttonCrush.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonCrush,param1);
         };
         this._buttonCrush.label = I18n.getUpper(EStringType.EST_DIALOG_FRUITS_CRUSH_BUTTON_CRUSH);
      }
   }
}

