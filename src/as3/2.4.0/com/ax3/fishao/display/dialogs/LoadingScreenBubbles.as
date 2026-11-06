package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.*;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   
   public class LoadingScreenBubbles extends IN_GAME_LOADING implements ILoadingScreen
   {
      
      protected var _showPercents:Boolean = true;
      
      protected var _showProgress:Boolean = true;
      
      protected var _showBubbles:Boolean = true;
      
      public function LoadingScreenBubbles()
      {
         super();
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc2_:int = int(param1 * 100 + 0.5);
         progressBar.progressText.text = _loc2_ + "%";
         progressBar.gotoAndStop(_loc2_);
         this.update();
      }
      
      public function fitToScreen() : void
      {
         this.drawOverlay();
         this.x = int(Config.SCREEN_WIDTH / 2);
         this.y = int(Config.SCREEN_HEIGHT / 2);
      }
      
      private function drawOverlay() : void
      {
         with(graphics)
         {
            clear();
            beginFill(2360067,0.5);
            drawRect(-Config.SCREEN_WIDTH / 2,-Config.SCREEN_HEIGHT / 2,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
            endFill();
         }
      }
      
      public function textUpdate() : void
      {
         UtilsTextField.setBoldFont(label);
         this.label.text = I18n.get("loading");
      }
      
      private function update() : void
      {
         progressBar.progressText.visible = this._showPercents && this._showProgress;
         progressBar.visible = this._showProgress;
         bubbles.visible = this._showBubbles;
      }
      
      public function destroy() : void
      {
      }
   }
}

