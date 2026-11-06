package com.ax3.fishao.display
{
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class CommunicationIconWrapper extends MainMenuIconWrapper
   {
      
      private var _amountClip:DisplayObjectContainer;
      
      private var _amountField:TextField;
      
      public function CommunicationIconWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         handler = null;
         this._amountClip = DisplayObjectContainer((_asset.getChildByName("icon") as DisplayObjectContainer).getChildByName("amount"));
         this._amountField = TextField(this._amountClip.getChildByName("label"));
      }
      
      public function set amount(param1:int) : void
      {
         if(param1 > 0)
         {
            this._amountClip.visible = true;
            this._amountField.text = String(limit(param1,1,99));
         }
         else
         {
            this._amountClip.visible = false;
         }
      }
   }
}

