package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   
   public class ChatHistoryLineWrapper extends CHAT_HISTORY_MESSAGE
   {
      
      private var _toolTipTarget:ToolTipTargetMovieClip = null;
      
      private var _hasTooltip:Boolean = false;
      
      public function ChatHistoryLineWrapper()
      {
         super();
         username.x = 1;
         separatorLine.alpha = 0.9;
      }
      
      private function createTooltipTarget(param1:String) : void
      {
         this._toolTipTarget = new ToolTipTargetMovieClip();
         this._toolTipTarget.x = 0;
         this._toolTipTarget.y = 0;
         this._toolTipTarget.graphics.beginFill(9461904,0);
         this._toolTipTarget.graphics.drawRect(0,0,this.width,this.height);
         this._toolTipTarget.graphics.endFill();
         this._toolTipTarget.tooltipConfig = {"text":param1};
      }
      
      public function set sender(param1:String) : void
      {
         username.text = param1 + ":";
         username.width = username.textWidth + 3;
         userMessage.x = username.x + username.width + 5;
      }
      
      public function get sender() : String
      {
         return username.text;
      }
      
      public function get message() : String
      {
         return userMessage.text;
      }
      
      public function set message(param1:String) : void
      {
         userMessage.text = param1;
         userMessage.width = 300 - username.width - 6;
         this.setTooltipIfNeeded(param1);
      }
      
      private function setTooltipIfNeeded(param1:String) : void
      {
         if(userMessage.width < userMessage.textWidth)
         {
            if(this._toolTipTarget == null)
            {
               this.createTooltipTarget(param1);
            }
            if(!this._hasTooltip)
            {
               addChild(this._toolTipTarget);
               this._hasTooltip = true;
            }
            this._toolTipTarget.tooltipConfig = {"text":param1};
         }
         else if(this._hasTooltip)
         {
            removeChild(this._toolTipTarget);
            this._hasTooltip = false;
         }
      }
   }
}

