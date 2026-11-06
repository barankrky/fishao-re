package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewStatus extends ViewBase
   {
      
      private static const ICON_FRAME_NAME_READY:String = "ready";
      
      private static const ICON_FRAME_NAME_NOT_READY:String = "notReady";
      
      private var _source:DisplayObjectContainer;
      
      private var _icon:MovieClip;
      
      private var _label:TextField;
      
      private var _isReady:Boolean;
      
      public function ViewStatus(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this._isReady = param1;
         this.updateStatus();
      }
      
      public function set label(param1:String) : void
      {
         this._label.text = param1;
      }
      
      private function init() : void
      {
         this._icon = Debug.assertProperty(this._source,"viewIcon",MovieClip);
         this._label = Debug.assertProperty(this._source,"label",TextField);
      }
      
      private function updateStatus() : void
      {
         this._label.visible = true;
         this._icon.visible = true;
         if(this._isReady)
         {
            this._icon.gotoAndStop(ICON_FRAME_NAME_READY);
         }
         else
         {
            this._icon.gotoAndStop(ICON_FRAME_NAME_NOT_READY);
         }
      }
   }
}

