package com.ax3.fishao.display.panels
{
   import assets.common.PlingHistoryLine;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class PlingHistoryLineView extends Sprite
   {
      
      private var _source:PlingHistoryLine;
      
      private var _labelDescription:TextFieldAutofitWrapper;
      
      private var _action:MenuFrameButtonWrapper;
      
      public function PlingHistoryLineView()
      {
         super();
         this.init();
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
      }
      
      public function get action() : MenuFrameButtonWrapper
      {
         return this._action;
      }
      
      private function init() : void
      {
         this._source = new PlingHistoryLine();
         addChild(this._source);
         this._labelDescription = new TextFieldAutofitWrapper(Debug.assertProperty(this._source,"message",TextField));
         this._action = new MenuFrameButtonWrapper();
         this._action.process(this._source.action);
      }
   }
}

