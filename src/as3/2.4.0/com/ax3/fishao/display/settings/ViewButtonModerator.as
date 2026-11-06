package com.ax3.fishao.display.settings
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewButtonModerator extends ViewButtonSettings
   {
      
      private static const INSTANCE_NAME_VIEW_AMOUNT:String = "viewAmount";
      
      private static const INSTANCE_NAME_LABEL_AMOUNT:String = "label";
      
      private var _viewAmount:DisplayObject;
      
      private var _label:TextField;
      
      public function ViewButtonModerator(param1:IController, param2:MovieClip)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set amount(param1:int) : void
      {
         this._viewAmount.visible = param1 > 0;
         this._label.text = limit(param1,1,9).toString();
      }
      
      private function init() : void
      {
         this._viewAmount = Debug.assertProperty(source,INSTANCE_NAME_VIEW_AMOUNT);
         this._label = Debug.assertProperty(this._viewAmount,INSTANCE_NAME_LABEL_AMOUNT);
      }
   }
}

