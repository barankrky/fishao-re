package com.ax3.fishao.view.dialogs
{
   import assets.common.NpcDialogWindow;
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   
   public class NPCDialog extends Sprite
   {
      
      public static const CLICK_ON_YES:String = "click_on_yes";
      
      public static const CLICK_ON_NO:String = "click_on_no";
      
      public static const CLOSED:String = "closed";
      
      private const YES_EVENT:Event = new Event(CLICK_ON_YES);
      
      private const NO_EVENT:Event = new Event(CLICK_ON_NO);
      
      private const CLOSED:Event;
      
      private var _asset:NpcDialogWindow = new NpcDialogWindow();
      
      private var _showYesNo:Boolean = false;
      
      private var _onLinkClick:Function;
      
      private var _autoCloseClock:Object = {"x":1};
      
      public var npcName:TextField;
      
      public var yesButton:FrameButtonWrapper;
      
      public var noButton:FrameButtonWrapper;
      
      public var message:TextField;
      
      public var nextButton:MovieClip;
      
      public var mouse:MovieClip;
      
      public var npcNameBack:MovieClip;
      
      public function NPCDialog(param1:Function)
      {
         this.CLOSED = new Event(CLOSED);
         super();
         y = -height;
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         UtilsTextField.setBoldFont(this.message);
         var _loc2_:StyleSheet = new StyleSheet();
         var _loc3_:Object = {
            "fontWeight":"bold",
            "color":"#00CCFF"
         };
         var _loc4_:Object = {
            "fontWeight":"bold",
            "textDecoration":"underline",
            "color":"#0099FF"
         };
         _loc2_.setStyle("a:link",_loc4_);
         _loc2_.setStyle("a:hover",_loc3_);
         _loc2_.setStyle("a:active",_loc4_);
         _loc2_.setStyle(".visited",_loc4_);
         this.message.styleSheet = _loc2_;
         this.yesButton.label = I18n.getUpper("yes");
         this.noButton.label = I18n.getUpper("no");
         this._asset.yesButton.addEventListener(MouseEvent.CLICK,this.onYesClick,true,100);
         this._asset.noButton.addEventListener(MouseEvent.CLICK,this.onNoClick,true,100);
         this.mouse.visible = false;
         this.mouse.x = 310;
         if(param1 != null)
         {
            this._onLinkClick = param1;
            this.message.addEventListener(TextEvent.LINK,this.onLinkClick);
         }
      }
      
      public function set npcNameText(param1:String) : void
      {
         this.npcName.text = param1;
         var _loc2_:int = this.npcName.textWidth;
         this.npcName.width = _loc2_ + 10;
         this.npcNameBack.width = this.npcName.width + 8;
      }
      
      public function get showButtons() : Boolean
      {
         return this._showYesNo;
      }
      
      public function set showButtons(param1:Boolean) : void
      {
         this._showYesNo = param1;
         this.yesButton.visible = false;
         this.noButton.visible = false;
         app.user.canMove = param1;
      }
      
      private function onYesClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_053_UI_Confirm_click);
         param1.stopPropagation();
         dispatchEvent(this.YES_EVENT);
      }
      
      private function onNoClick(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         dispatchEvent(this.NO_EVENT);
      }
      
      public function close() : void
      {
         this.unlockClick();
         if(parent != null)
         {
            parent.removeChild(this);
         }
         dispatchEvent(this.CLOSED);
      }
      
      public function show() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
         LocationLayers.charMessagesLayer.addChild(this);
         if(stage == null)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         else
         {
            this.onAddedToStage();
         }
      }
      
      private function onAddedToStage(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         stage.addEventListener(MouseEvent.CLICK,this.onLocationClick,true,1);
      }
      
      public function loadAvatar(param1:String) : void
      {
         var _loc2_:ScaledBitmap = new ScaledBitmap();
         _loc2_.width = 53;
         _loc2_.height = 53;
         _loc2_.x = 8;
         _loc2_.y = 30;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL("npc/avatars/" + param1.toLowerCase()));
         this._asset.addChild(_loc2_);
      }
      
      public function set text(param1:String) : void
      {
         TweenCube.destroyTweensOf(this._autoCloseClock,false);
         var _loc2_:String = "<b>" + param1 + "</b>";
         this.message.scrollV = 0;
         this.message.htmlText = _loc2_;
         while(this.message.maxScrollV % 3 != 1)
         {
            _loc2_ += "<br>";
            this.message.htmlText = _loc2_;
         }
         this.mouse.visible = true;
         if(this.message.height < this.message.textHeight)
         {
            this.nextButton.visible = true;
         }
         else
         {
            this.nextButton.visible = false;
            if(this._showYesNo)
            {
               this.yesButton.visible = true;
               this.noButton.visible = true;
               this.mouse.visible = false;
            }
         }
         this.lockClick();
         this.show();
      }
      
      private function lockClick() : void
      {
      }
      
      private function onLocationClick(param1:MouseEvent) : void
      {
         if(param1.target == this.yesButton || param1.target is DisplayObject && DisplayObject(param1.target).parent == this.yesButton)
         {
            this.onYesClick(param1);
         }
         else if(param1.target == this.noButton || param1.target is DisplayObject && DisplayObject(param1.target).parent == this.noButton)
         {
            this.onNoClick(param1);
         }
         else if(!PopupManager.getInstance().isDialogBaseOpen)
         {
            param1.stopPropagation();
            if(!this.yesButton.visible && !this.noButton.visible)
            {
               if(!this.nextButton.visible)
               {
                  if(this._showYesNo && !this.yesButton.visible && !this.noButton.visible)
                  {
                     this.yesButton.visible = true;
                     this.noButton.visible = true;
                     this.mouse.visible = false;
                     FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
                  }
                  else
                  {
                     FishaoSoundManager.play(FishaoSoundManager.SFX_052_UI_Close_menu);
                     if(app.user.completedMissionData.length > 0)
                     {
                        GameSwf.currentLocationDialog.showMissionCompletedDialog();
                     }
                     this.close();
                  }
               }
               else
               {
                  FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
                  this.message.scrollV += 3;
                  if(this.message.maxScrollV <= this.message.scrollV)
                  {
                     if(this._showYesNo && !this.yesButton.visible && !this.noButton.visible)
                     {
                        this.yesButton.visible = true;
                        this.noButton.visible = true;
                        this.mouse.visible = false;
                     }
                     this.nextButton.visible = false;
                  }
               }
            }
         }
      }
      
      private function unlockClick() : void
      {
         if(stage != null)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.onLocationClick,true);
         }
         app.user.canMove = true;
         if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.removeNpcFromPlayer();
         }
      }
      
      public function destroy() : void
      {
         TweenCube.destroyTweensOf(this._autoCloseClock,false);
         if(this._onLinkClick == null)
         {
            return;
         }
         this.message.removeEventListener(TextEvent.LINK,this._onLinkClick);
      }
      
      public function autoClose() : void
      {
         TweenCube.destroyTweensOf(this._autoCloseClock,false);
         this._autoCloseClock.x = 1;
         new TweenCube(this._autoCloseClock,3,{"x":100},{"onComplete":this.close});
      }
      
      private function onLinkClick(param1:TextEvent) : void
      {
         if(this._onLinkClick == null)
         {
            return;
         }
         this.close();
         this._onLinkClick(param1);
      }
      
      public function get asset() : NpcDialogWindow
      {
         return this._asset;
      }
   }
}

