package com.ax3.fishao.model.pling
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.jss.model.states.FscModelState;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import protocol.api.plings.receive.ResponsePlingReceive;
   import protocol.sr.GetDataResp;
   
   public class PlingModel extends EventDispatcher
   {
      
      private const CHANGED:Event = new Event(Event.CHANGE);
      
      private var _messages:Vector.<PlingMessage> = new Vector.<PlingMessage>();
      
      private var _lastView:int = 0;
      
      public function PlingModel()
      {
         super();
         FishaoFscModelManager.fscModel.addRequestHandler(GetDataResp,this.onGetDataResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponsePlingReceive,this.onPlingResp);
         FishaoFscModelManager.fscModel.addStateHandler(FscModelState.CONNECTED,this.onSessionReady);
      }
      
      private function onSessionReady() : void
      {
         FishaoFscModelManager.fscModel.plingExtension.getHistory();
      }
      
      private function onGetDataResp(param1:GetDataResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:ResponsePlingReceive = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1.data.hasOwnProperty("plingHistory"))
         {
            _loc2_ = JSON.parse(param1.data.plingHistory) as Array;
            if(_loc2_ != null)
            {
               this._messages.length = 0;
               _loc2_.sortOn("timestampSec",Array.NUMERIC);
               _loc4_ = Math.min(10,_loc2_.length);
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  _loc3_ = new ResponsePlingReceive();
                  _loc3_.id = _loc2_[_loc5_].id;
                  _loc3_.type = _loc2_[_loc5_].type;
                  _loc3_.params = _loc2_[_loc5_].params;
                  this._messages.push(new PlingMessage(_loc3_));
                  _loc5_++;
               }
               this._lastView = this._messages.length;
               this.dispatchEvent(this.CHANGED);
            }
         }
      }
      
      public function onPlingResp(param1:ResponsePlingReceive) : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.isActive())
         {
            this._messages.push(new PlingMessage(param1));
            this.dispatchEvent(this.CHANGED);
         }
      }
      
      public function get newCount() : int
      {
         return Math.max(0,this._messages.length - this._lastView);
      }
      
      public function getOneNew() : PlingMessage
      {
         var _loc1_:PlingMessage = null;
         if(this._messages.length > this._lastView)
         {
            _loc1_ = this._messages[this._lastView];
            ++this._lastView;
            return _loc1_;
         }
         return null;
      }
      
      public function getMessage(param1:int) : PlingMessage
      {
         if(param1 >= 0 && param1 < this._messages.length)
         {
            return this._messages[param1];
         }
         return null;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if(hasEventListener(param1.type) || param1.bubbles)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      public function get length() : int
      {
         return this._messages.length;
      }
      
      public function loadHistory() : void
      {
         if(this._messages.length < 10)
         {
            FishaoFscModelManager.fscModel.plingExtension.getHistory();
         }
      }
   }
}

