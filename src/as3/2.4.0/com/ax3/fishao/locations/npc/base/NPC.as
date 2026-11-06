package com.ax3.fishao.locations.npc.base
{
   import assets.common.NpcArrow;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.core.ICursorTarget;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.chars.CharAnimationSource;
   import com.ax3.fishao.locations.chars.CharViewport;
   import com.ax3.fishao.locations.chars.ForceMoveStrategy;
   import com.ax3.fishao.locations.chars.IBitmapAnimationSource;
   import com.ax3.fishao.locations.entries.*;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.NPCDialog;
   import com.ax3.geom.GraphPoint;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.removeAllChildren;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Rectangle;
   
   public class NPC extends FieldChar implements ICursorTarget
   {
      
      public var onStartTalk:Function;
      
      private var _canMove:Boolean = true;
      
      protected var _npcName:String = "";
      
      private const NPC_AVALIABLE_RADIUS_PX:int = 100;
      
      private var _canTalk:Boolean = false;
      
      protected var _dialogStep:int = 0;
      
      private var _npcChat:NPCDialog;
      
      private var _arrow:NpcArrow = new NpcArrow();
      
      public var player:PlayerChar;
      
      private var _isFirstGraphicLoad:Boolean = false;
      
      public function NPC(param1:LocationUser, param2:FloatInWaterManager)
      {
         this._npcName = param1.username;
         super(param1,param2);
         this._npcChat = new NPCDialog(this.onNPCDialogLinkClick);
      }
      
      public function set canMove(param1:Boolean) : void
      {
         this._canMove = param1;
      }
      
      public function onNpcAction(param1:String, param2:Object) : void
      {
         switch(param1)
         {
            case "John_TradeFishDialog":
               this.dialogStep = 0;
               this.noTalk();
               GameSwf.instance.showTradeFishSwfDialog();
               break;
            case "Carp_open_dialog":
               this.dialogStep = 0;
               this.noTalk();
               GameSwf.instance.showTradeDecorationSwfDialog();
         }
      }
      
      protected function onNPCDialogLinkClick(param1:TextEvent) : void
      {
         switch(param1.text)
         {
            case "shop.show":
               GameSwf.instance.showBuyFishcoinsDialog();
               break;
            case "fishcoin.buy":
               GameSwf.instance.showBuyEnergyWindow();
               break;
            default:
               Cc.warnch(this,"Unknown action \'" + param1.text + "\' on link in NPC dialog");
         }
      }
      
      public function tryTalk(param1:GraphPoint) : void
      {
         if(param1 != null && Utils.distanceBetweenPoints(param1,position) <= this.NPC_AVALIABLE_RADIUS_PX && visible)
         {
            this._canTalk = true;
            this.updateArrowPosition();
            LocationLayers.charMessagesLayer.addChild(this._arrow);
            graphic.addEventListener(MouseEvent.CLICK,this.onClick);
            graphic.name = "NPC_" + this._npcName;
            Sprite(graphic).buttonMode = true;
            Sprite(graphic).useHandCursor = true;
         }
         else
         {
            this.noTalk();
         }
      }
      
      public function noTalk() : void
      {
         this._canTalk = false;
         if(this._npcChat.visible && this._npcChat.parent != null)
         {
            this._npcChat.close();
         }
         graphic.removeEventListener(MouseEvent.CLICK,this.onClick);
         Sprite(graphic).buttonMode = false;
         Sprite(graphic).useHandCursor = false;
         this.removeArrow();
      }
      
      public function onClick(param1:MouseEvent = null) : void
      {
         if(Boolean(app.user.inFishingProcess.value) || !GameSwf.currentLocationDialog.isPlayerAbleToTalkWithNpc())
         {
            return;
         }
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(!this.isLeaveLocation())
         {
            FishaoFscModelManager.locationExtension.talkWithNpc(this.npcName,position,this._dialogStep,ENpcAnswer.ENA_NO,this._dialogStep > -1 ? Preloader.waitForResponse() : null);
            this.tryCallOnStartTalk();
         }
      }
      
      protected function isLeaveLocation() : Boolean
      {
         return _moveStrategy is ForceMoveStrategy;
      }
      
      override public function updateBitmapAnimationSource() : IBitmapAnimationSource
      {
         if(_charViewport)
         {
            _charViewport.destroy();
            if(_charViewport.parent == _charSprite)
            {
               _charSprite.removeChild(_charViewport);
            }
         }
         if(_charAnimationSource)
         {
            _charAnimationSource.destroy();
         }
         _charAnimationSource = new CharAnimationSource();
         if(locationUser.username.toLowerCase() == "nanook")
         {
            _charAnimationSource.config({"cellSize":new Rectangle(0,0,100,125)});
         }
         else
         {
            _charAnimationSource.config({"cellSize":new Rectangle(0,0,50,80)});
         }
         _charAnimationSource.bitmapData = new BitmapData(100,100,true,255);
         _charAnimationSource.addEventListener(Event.CHANGE,this.onChange);
         this._isFirstGraphicLoad = true;
         graphic.alpha = 0;
         app.resourceManager.replaceBitmapDataFromURL(_charAnimationSource,FishaoBitmapLoader.convertImageNameURL("npc/" + this.npcName.toLowerCase()));
         _charViewport = new CharViewport();
         _charViewport.smoothing = true;
         if(graphic is DisplayObjectContainer)
         {
            removeAllChildren(DisplayObjectContainer(graphic));
            removeAllChildren(_charSprite);
            _charSprite.addChild(_charViewport);
            DisplayObjectContainer(graphic).addChild(_charSprite);
            DisplayObjectContainer(graphic).addChild(_rod);
            LocationLayers.charMessagesLayer.addChild(chat);
            LocationLayers.charMessagesLayer.addChild(_controllerUserPopup.view.source);
         }
         _frameIndex = int.MIN_VALUE;
         _lastRotationAngle = int.MIN_VALUE;
         this.updateGraphic();
         updateMouseHandleState();
         return _charAnimationSource;
      }
      
      private function onChange(param1:Event) : void
      {
         param1.target.removeEventListener(Event.CHANGE,this.onChange);
         if(graphic == null)
         {
            return;
         }
         if(this._isFirstGraphicLoad)
         {
            this._isFirstGraphicLoad = false;
            TweenCube.destroyTweensOf(graphic);
            graphic.alpha = 0;
            TweenCube.to(graphic,2,{"alpha":1});
         }
         _frameIndex = 1;
         this.updateGraphic();
      }
      
      public function getCursorName() : String
      {
         return this._canTalk ? "hand" : "auto";
      }
      
      public function toChat(param1:String, param2:int) : void
      {
         rotateToChar(this.player);
         this.dialogStep = param2;
         if(param1 != "")
         {
            this._npcChat.text = param1;
            this.removeArrow();
            this._npcChat.addEventListener(NPCDialog.CLOSED,this.onChatClose);
            app.user.isTalkingWithNPC.value = true;
         }
         if(param2 == -2)
         {
            this._npcChat.showButtons = false;
            this._npcChat.autoClose();
         }
      }
      
      private function removeArrow() : void
      {
         if(this._arrow != null && this._arrow.parent != null)
         {
            this._arrow.parent.removeChild(this._arrow);
         }
      }
      
      public function set dialogStep(param1:int) : void
      {
         this._dialogStep = param1;
         this._npcChat.showButtons = this._dialogStep != 0;
         if(this._npcChat.showButtons)
         {
            this._npcChat.addEventListener(NPCDialog.CLICK_ON_YES,this.onChatYes);
            this._npcChat.addEventListener(NPCDialog.CLICK_ON_NO,this.onChatNo);
         }
      }
      
      protected function onChatYes(param1:Event) : void
      {
         this._npcChat.removeEventListener(NPCDialog.CLICK_ON_YES,this.onChatYes);
         this._npcChat.removeEventListener(NPCDialog.CLICK_ON_NO,this.onChatNo);
         if(this.npcName == "Rick")
         {
            if(GameSwf.inspectGuestLockedAction())
            {
               this.dialogStep = 0;
               this.noTalk();
               return;
            }
         }
         FishaoFscModelManager.locationExtension.talkWithNpc(this.npcName,position,this.dialogStep,ENpcAnswer.ENA_YES);
      }
      
      protected function onChatNo(param1:Event) : void
      {
         this._npcChat.removeEventListener(NPCDialog.CLICK_ON_YES,this.onChatYes);
         this._npcChat.removeEventListener(NPCDialog.CLICK_ON_NO,this.onChatNo);
         FishaoFscModelManager.locationExtension.talkWithNpc(this.npcName,position,this.dialogStep,ENpcAnswer.ENA_NO);
      }
      
      protected function onChatClose(param1:Event) : void
      {
         app.user.isTalkingWithNPC.value = false;
         FishaoFscModelManager.locationExtension.talkWithNpcStop(this._npcName);
         this._npcChat.removeEventListener(NPCDialog.CLOSED,this.onChatClose);
      }
      
      public function get dialogStep() : int
      {
         return this._dialogStep;
      }
      
      public function get npcName() : String
      {
         return this._npcName;
      }
      
      public function set npcName(param1:String) : void
      {
         this._npcName = param1;
         this._npcChat.npcNameText = I18n.get("npc_name_" + this.npcName.toLowerCase());
         this._npcChat.loadAvatar(this.npcName);
      }
      
      override public function updateGraphic(param1:uint = 0, param2:uint = 0) : void
      {
         var _loc3_:Rectangle = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         if(this._npcChat != null && graphic != null)
         {
            this._npcChat.x = graphic.x - 150;
            if(this._npcChat.x < 5)
            {
               this._npcChat.x = 5;
            }
            else
            {
               _loc3_ = FieldChar.locationLayersScrollRect;
               _loc4_ = locationLayers != null ? locationLayers.fullWidth : Number.MAX_VALUE;
               _loc5_ = Math.min(_loc3_.x + _loc3_.width,_loc4_);
               if(_loc5_ < this._npcChat.x + this._npcChat.width + 5)
               {
                  this._npcChat.x = _loc5_ - (this._npcChat.width + 5);
               }
            }
            this._npcChat.y = graphic.y - graphic.height - 50;
            if(this._npcChat.y < 5)
            {
               this._npcChat.y = graphic.y + 5;
            }
            if(this._arrow.parent != null)
            {
               this.updateArrowPosition();
            }
         }
         super.updateGraphic(param1,param2);
      }
      
      private function updateArrowPosition() : void
      {
         this._arrow.x = graphic.x - this._arrow.width / 2;
         this._arrow.y = graphic.y - graphic.height - 20;
      }
      
      override public function destroy() : void
      {
         this._npcChat.destroy();
         this.removeArrow();
         super.destroy();
      }
      
      public function removeFromLocation() : void
      {
         moveStrategy = _forceMoveStrategy;
         _forceMoveStrategy.maxCalculationTimeMs = TimeConverter.fromMinutes(2);
         _forceMoveStrategy.moveTo(-200,-1,NaN);
      }
      
      override public function moveByMouseClick(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         if(!this._canMove)
         {
            return;
         }
         if(this.player == null)
         {
            super.moveByMouseClick(param1,param2,param3);
         }
         else
         {
            rotateToChar(this.player);
         }
      }
      
      override public function showRodAndHideChar(param1:Boolean = false) : Boolean
      {
         return false;
      }
      
      protected function tryCallOnStartTalk() : void
      {
         if(this.onStartTalk == null)
         {
            return;
         }
         this.onStartTalk(this);
      }
      
      public function get npcDialog() : NPCDialog
      {
         return this._npcChat;
      }
   }
}

