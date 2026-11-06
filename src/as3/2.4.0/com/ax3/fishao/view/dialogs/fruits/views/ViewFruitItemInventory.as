package com.ax3.fishao.view.dialogs.fruits.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   
   public class ViewFruitItemInventory extends ViewFruitItem
   {
      
      private var _source:DisplayObjectContainer = new gViewFruitItemSmall();
      
      public function ViewFruitItemInventory(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      override public function set amount(param1:int) : void
      {
         _labelAmountWrapper.text = param1.toString();
      }
      
      private function init() : void
      {
         _labelAmount = Debug.assertProperty(this._source,"labelAmount");
         _labelAmountWrapper = new TextFieldAutofitWrapper(_labelAmount);
      }
   }
}

