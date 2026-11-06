package com.ax3.fishao.display.panels
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.popups.PlingPopup;
   import com.ax3.fishao.model.pling.EPlingType;
   import com.ax3.fishao.model.pling.PlingMessage;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import com.ax3.utils.Callback;
   import com.ax3.utils.timer.SingleAlarm;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class PlingPanel extends Sprite
   {
      
      private const MAX_SHOWED_PLINGS:int = 3;
      
      private const DELAY_PLING_SEC:int = 3;
      
      private const DISTANCE_BETWEEN_PLINGS:int = 5;
      
      private var _screen:Sprite;
      
      private var _display:Vector.<PlingPopup> = new Vector.<PlingPopup>();
      
      private var _singleAlarmByPlingPopup:Dictionary = new Dictionary();
      
      private var _plingList:Vector.<PlingPopup> = new Vector.<PlingPopup>();
      
      public function PlingPanel(param1:Sprite)
      {
         super();
         this._screen = param1;
         this.activate();
      }
      
      private function onNewPling(param1:Event) : void
      {
         this.addPlingInList();
      }
      
      private function addPlingInList() : void
      {
         var _loc1_:PlingPopup = null;
         var _loc2_:PlingMessage = null;
         while(app.plings.newCount > 0)
         {
            _loc2_ = app.plings.getOneNew();
            if(!this.skipThisPling(_loc2_))
            {
               if(_loc2_ != null)
               {
                  _loc1_ = new PlingPopup();
                  _loc1_.id = _loc2_.id;
                  _loc1_.text = _loc2_.message;
                  _loc1_.close.handler = this.onCloseClick;
                  if(_loc2_.action != null)
                  {
                     _loc1_.useHandCursor = true;
                     _loc1_.buttonMode = true;
                  }
                  else
                  {
                     _loc1_.useHandCursor = false;
                     _loc1_.buttonMode = false;
                  }
                  _loc1_.alpha = 0;
                  _loc1_.data = _loc2_;
                  if(_loc2_.action != null)
                  {
                     _loc1_.addEventListener(MouseEvent.CLICK,this.onPlingClick);
                     _loc1_.activateButtonMode();
                  }
                  this._plingList.push(_loc1_);
                  this.showNextPling();
               }
            }
         }
      }
      
      private function skipThisPling(param1:PlingMessage) : Boolean
      {
         var _loc2_:PlingPopup = null;
         var _loc3_:PlingPopup = null;
         if(param1.type == EPlingType.TOURNAMENT_START_IN)
         {
            for each(_loc2_ in this._plingList)
            {
               if(_loc2_.data.type == EPlingType.TOURNAMENT_START_IN)
               {
                  return true;
               }
            }
            for each(_loc3_ in this._display)
            {
               if(_loc3_.data.type == EPlingType.TOURNAMENT_START_IN)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function onPlingClick(param1:MouseEvent) : void
      {
         var _loc2_:PlingPopup = PlingPopup(param1.currentTarget);
         if(!(param1.target is FishaoBaseButton))
         {
            _loc2_.data.action(param1);
         }
      }
      
      private function showNextPling() : void
      {
         var _loc1_:PlingPopup = null;
         while(this._display.length < this.MAX_SHOWED_PLINGS && this._plingList.length > 0)
         {
            _loc1_ = this._plingList.shift();
            if(this._display.length > 0)
            {
               _loc1_.y = this._display.length * (this._display[this._display.length - 1].height + this.DISTANCE_BETWEEN_PLINGS);
            }
            addChild(_loc1_);
            this._display.push(_loc1_);
            TweenLite.to(_loc1_,1,{
               "alpha":1,
               "onComplete":this.onPlingShowed,
               "onCompleteParams":[_loc1_]
            });
            FishaoSoundManager.play(FishaoSoundManager.SFX_070_UI_Generic_ping);
         }
         if(this._display.length > 0)
         {
            this._screen.addChild(this);
         }
         else if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function onPlingShowed(param1:PlingPopup) : void
      {
         if(param1.data.mustBeRead == false)
         {
            this._singleAlarmByPlingPopup[param1] = new SingleAlarm();
            SingleAlarm(this._singleAlarmByPlingPopup[param1]).activateInSec(app.plings.newCount > this.MAX_SHOWED_PLINGS ? 1 : this.DELAY_PLING_SEC,new Callback(this.closeThis,param1));
         }
      }
      
      private function onPlingHided(param1:PlingPopup) : void
      {
         if(param1.parent != null)
         {
            if(param1.data.mustBeRead == false)
            {
               if(param1 in this._singleAlarmByPlingPopup)
               {
                  SingleAlarm(this._singleAlarmByPlingPopup[param1]).destroy();
                  this._singleAlarmByPlingPopup[param1] = null;
                  delete this._singleAlarmByPlingPopup[param1];
               }
               param1.parent.removeChild(param1);
            }
         }
         var _loc2_:PlingMessage = app.plings.getMessage(param1.id);
         if(_loc2_ != null && _loc2_.action != null)
         {
            param1.removeEventListener(MouseEvent.CLICK,_loc2_.action);
         }
         var _loc3_:int = this._display.indexOf(param1);
         if(_loc3_ >= 0)
         {
            this._display.splice(_loc3_,1);
            this.moveUp(_loc3_);
         }
         else
         {
            this.moveUp(0);
         }
      }
      
      private function moveUp(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(this._display.length > param1)
         {
            _loc2_ = param1 * (this._display[param1].height + this.DISTANCE_BETWEEN_PLINGS);
            if(this._display[param1].y != _loc2_)
            {
               TweenLite.to(this._display[param1],2,{"y":_loc2_});
            }
            this.moveUp(param1 + 1);
         }
         else
         {
            this.showNextPling();
         }
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         var _loc2_:PlingPopup = PlingPopup(DisplayObject(param1.target.parent).parent);
         if(_loc2_.data.closeAction != null)
         {
            _loc2_.data.closeAction();
         }
         var _loc3_:int = this._display.indexOf(_loc2_);
         if(_loc3_ >= 0)
         {
            this._display[_loc3_].close.handler = null;
            this.onPlingHided(this._display[_loc3_]);
         }
      }
      
      private function closeAction(param1:PlingMessage) : void
      {
      }
      
      private function closeThis(param1:PlingPopup) : void
      {
         var _loc2_:int = this._display.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this._display[_loc2_].close.handler = null;
            TweenLite.to(this._display[_loc2_],2,{
               "alpha":0,
               "onComplete":this.onPlingHided,
               "onCompleteParams":[this._display[_loc2_]]
            });
         }
      }
      
      public function activate() : void
      {
         app.plings.addEventListener(Event.CHANGE,this.onNewPling);
      }
      
      public function deactivate() : void
      {
         app.plings.removeEventListener(Event.CHANGE,this.onNewPling);
      }
   }
}

