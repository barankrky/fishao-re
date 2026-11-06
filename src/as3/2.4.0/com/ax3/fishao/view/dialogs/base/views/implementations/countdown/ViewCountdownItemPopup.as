package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewCountdownItemPopup extends ViewBase
   {
      
      protected static const INSTANCE_NAME_LABEL:String = "label";
      
      private var _source:DisplayObjectContainer;
      
      private var _label:TextField;
      
      public function ViewCountdownItemPopup(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set label(param1:String) : void
      {
         this._label.text = param1;
      }
      
      private function init() : void
      {
         this._label = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL,TextField);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._source.alpha = 1;
         var _loc3_:Object = {"alpha":0};
         TweenCube.to(this._source,3,_loc3_);
      }
   }
}

