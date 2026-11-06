package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewWheelReward extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelReward:TextFieldAutofitWrapper;
      
      private var _iconReward:MovieClip;
      
      public function ViewWheelReward(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      public function set text(param1:String) : void
      {
         this._labelReward.text = param1;
      }
      
      public function set rewardType(param1:String) : void
      {
         this._iconReward.gotoAndStop(param1);
      }
      
      private function init() : void
      {
         this._iconReward = Debug.assertProperty(this._source,"iconReward");
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelReward");
         this._labelReward = new TextFieldAutofitWrapper(_loc1_);
      }
   }
}

