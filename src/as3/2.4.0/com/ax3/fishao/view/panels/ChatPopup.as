package com.ax3.fishao.view.panels
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.Callback;
   import com.ax3.utils.timer.SingleAlarm;
   import com.inkora.tween.TweenCube;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ChatPopup extends ChatPopupAsset
   {
      
      private static const TEXT_FILED_RIGHT_CORRECTION:int = 6;
      
      private static const TEXT_PADDING:int = 6;
      
      private static const TEXT_FIELD_BOTTOM_CORRECTION:int = 3;
      
      private const SHOW_TIME:Number = 5;
      
      private const MAX_WIDTH:int = 177;
      
      private const MAX_HEIGHT:int = 149;
      
      private const LINE_HEIGHT:int = 14;
      
      private const DELAY_MESSAGE_FOR_SYMBOL_MS:int = 150;
      
      private const MINIMAL_MESSAGE_DELAY_MS:int = 2000;
      
      private var _messagesList:Vector.<String> = new Vector.<String>();
      
      private var _chatAlarm:SingleAlarm;
      
      public var volume:Number = 0;
      
      private var _currentMessage:String = null;
      
      public function ChatPopup()
      {
         super();
         txt.mouseWheelEnabled = false;
         buttonMode = true;
         this.onHideAnimationComplete();
      }
      
      protected function hide() : void
      {
         if(this.alpha > 0)
         {
            TweenCube.destroyTweensOf(this);
            TweenCube.to(this,1,{"alpha":0},{
               "onComplete":this.onHideAnimationComplete,
               "delay":0.25
            });
         }
         app.user.canMove = true;
      }
      
      private function onHideAnimationComplete() : void
      {
         visible = false;
      }
      
      private function show() : void
      {
         if(visible == false)
         {
            visible = true;
         }
         TweenCube.destroyTweensOf(this);
         if(this.alpha < 1)
         {
            TweenCube.to(this,1,{"alpha":1},{"delay":0.25});
         }
      }
      
      private function changeTextFormat(param1:TextField, param2:String) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.align = param2;
         param1.setTextFormat(_loc3_);
      }
      
      private function addMessageInList(param1:String) : void
      {
         this._messagesList.push(param1);
         this.updateQueue();
      }
      
      private function updateQueue() : void
      {
         if(this._currentMessage == null)
         {
            if(this._messagesList.length > 0)
            {
               this._currentMessage = this._messagesList.shift();
               this.showMessage(this._currentMessage);
               this.show();
               if(this._chatAlarm == null)
               {
                  this._chatAlarm = new SingleAlarm();
               }
               this._chatAlarm.activateInSec(this._currentMessage.length * this.DELAY_MESSAGE_FOR_SYMBOL_MS / 1000 + this.MINIMAL_MESSAGE_DELAY_MS / 1000,new Callback(this.onCurrentMessageAlarmComplete));
            }
            else if(this._chatAlarm != null)
            {
               this.hide();
               this._chatAlarm.destroy();
               this._chatAlarm = null;
            }
         }
      }
      
      private function onCurrentMessageAlarmComplete() : void
      {
         this._currentMessage = null;
         this.updateQueue();
      }
      
      private function showMessage(param1:String) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_043_UI_Chat_message,this.volume);
         txt.text = param1;
         if(param1 == "")
         {
            this.hide();
            return;
         }
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
      }
      
      public function set text(param1:String) : void
      {
         this.onCurrentMessageAlarmComplete();
         this.addMessageInList(param1);
      }
      
      protected function resizePopup(param1:int, param2:int) : void
      {
         background.leftUp.x = 0;
         background.leftUp.y = 0;
         background.centerUp.x = background.leftUp.width;
         background.centerUp.y = background.leftUp.y;
         background.centerUp.width = int(param1 + TEXT_PADDING * 2 - background.leftUp.width * 2);
         if(background.centerUp.width < background.arrow.width)
         {
            background.centerUp.width = background.arrow.width;
            txt.width = int(background.centerUp.width + background.leftUp.width * 2 - TEXT_PADDING * 2);
            this.changeTextFormat(txt,TextFormatAlign.CENTER);
         }
         else
         {
            this.changeTextFormat(txt,TextFormatAlign.LEFT);
         }
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
         background.centerDownLeft.width = int((background.centerUp.width - background.arrow.width) * 0.5);
         background.arrow.x = background.centerDownLeft.x + background.centerDownLeft.width;
         background.arrow.y = background.centerDownLeft.y;
         background.centerDownRight.x = background.arrow.x + background.arrow.width;
         background.centerDownRight.y = background.arrow.y;
         background.centerDownRight.width = background.centerUp.width - background.centerDownLeft.width - background.arrow.width;
         background.rightDown.x = background.right.x;
         background.rightDown.y = background.arrow.y;
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
         TweenCube.destroyTweensOf(this);
         this._messagesList.length = 0;
         this._messagesList = null;
         if(this._chatAlarm != null)
         {
            this._chatAlarm.destroy();
            this._chatAlarm = null;
         }
      }
   }
}

