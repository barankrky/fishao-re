package com.ax3.fishao.view.panels
{
   import com.greensock.TweenMax;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class WaterPopup extends WaterPopupAsset
   {
      
      private static const TEXT_FILED_RIGHT_CORRECTION:int = 6;
      
      private static const TEXT_PADDING:int = 6;
      
      public static const SCREEN_PADDING:int = 20;
      
      private static const TEXT_FIELD_BOTTOM_CORRECTION:int = 3;
      
      private const SHOW_TIME:Number = 5;
      
      private const MAX_WIDTH:int = 177;
      
      private const MAX_HEIGHT:int = 100;
      
      private const LINE_HEIGHT:int = 14;
      
      private var _showTimeout:int;
      
      public function WaterPopup()
      {
         super();
         txt.mouseWheelEnabled = false;
         buttonMode = true;
         this.onHideAnimationComplete();
      }
      
      protected function hide() : void
      {
         TweenMax.to(this,1,{
            "alpha":0,
            "delay":0.25,
            "onComplete":this.onHideAnimationComplete
         });
         clearTimeout(this._showTimeout);
      }
      
      private function onHideAnimationComplete() : void
      {
         visible = false;
      }
      
      private function show() : void
      {
         visible = true;
         TweenMax.to(this,1,{
            "alpha":1,
            "delay":0.25
         });
      }
      
      private function changeTextFormat(param1:TextField, param2:String) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.align = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public function set text(param1:String) : void
      {
         txt.text = param1;
         if(param1 == "")
         {
            this.hide();
            return;
         }
         this.show();
         txt.width = this.MAX_WIDTH;
         txt.height = this.MAX_HEIGHT;
         txt.x = TEXT_PADDING;
         txt.y = TEXT_PADDING;
         if(txt.textWidth + TEXT_FILED_RIGHT_CORRECTION < this.MAX_WIDTH)
         {
            txt.width = int(txt.textWidth + TEXT_FILED_RIGHT_CORRECTION);
         }
         if(this.LINE_HEIGHT * txt.numLines < this.MAX_HEIGHT)
         {
            txt.height = int(this.LINE_HEIGHT * txt.numLines + TEXT_FIELD_BOTTOM_CORRECTION);
         }
         this.resizePopup(txt.width,txt.height);
         this.startTimeout();
      }
      
      protected function resizePopup(param1:int, param2:int) : void
      {
         background.leftUp.x = 0;
         background.leftUp.y = 0;
         background.centerUp.x = background.leftUp.width;
         background.centerUp.y = background.leftUp.y;
         background.centerUp.width = int(param1 + TEXT_PADDING * 2 - background.leftUp.width * 2);
         this.changeTextFormat(txt,TextFormatAlign.LEFT);
         background.rightUp.x = background.centerUp.width + background.centerUp.x;
         background.rightUp.y = background.centerUp.y;
         background.left.x = 0;
         background.left.y = background.leftUp.height;
         background.left.height = int(param2 + TEXT_PADDING * 2 - background.leftUp.height * 2);
         background.center.x = background.centerUp.x;
         background.center.y = background.left.y;
         background.center.width = background.centerUp.width;
         background.center.height = background.left.height;
         background.right.x = background.center.width + background.centerUp.x;
         background.right.y = background.center.y;
         background.right.height = background.left.height;
         background.leftDown.x = 0;
         background.leftDown.y = background.left.height + background.leftUp.height;
         background.centerDownLeft.x = background.center.x;
         background.centerDownLeft.y = background.leftDown.y;
         background.centerDownLeft.width = int(background.centerUp.width * 0.5);
         background.centerDownRight.x = background.centerDownLeft.x + background.centerDownLeft.width;
         background.centerDownRight.y = background.centerDownLeft.y;
         background.centerDownRight.width = background.centerUp.width - background.centerDownLeft.width;
         background.rightDown.x = background.right.x;
         background.rightDown.y = background.centerDownRight.y;
      }
      
      protected function startTimeout() : void
      {
         if(this._showTimeout > 0)
         {
            clearTimeout(this._showTimeout);
         }
         this._showTimeout = setTimeout(this.hide,this.SHOW_TIME * 1000);
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = param1 - width * 0.5;
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = param1 - height - 55;
      }
      
      public function destroy() : void
      {
         TweenMax.killTweensOf(this,false);
         clearTimeout(this._showTimeout);
      }
   }
}

