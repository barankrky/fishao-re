package com.ax3.display.wrappers.impl
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class SignUpButtonWrapper extends FrameButtonWrapper
   {
      
      private var _gap:int = 5;
      
      private var _coinField:TextField;
      
      private var _coinIcon:DisplayObject;
      
      public function SignUpButtonWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._coinField = TextField((_child as DisplayObjectContainer).getChildByName("coins"));
         this._coinIcon = (_child as DisplayObjectContainer).getChildByName("coinIcon");
      }
      
      public function set coins(param1:int) : void
      {
         this._coinField.text = param1.toString();
         var _loc2_:Rectangle = this._coinField.getCharBoundaries(this._coinField.text.length - 1);
         this._coinIcon.x = int(this._coinField.x + _loc2_.right + this._gap);
      }
   }
}

