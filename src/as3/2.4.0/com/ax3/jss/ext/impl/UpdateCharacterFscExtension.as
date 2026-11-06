package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.OpenFishboxReq;
   import protocol.cr.UpdateReq;
   
   public class UpdateCharacterFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      private var _updateRequest:UpdateReq;
      
      public function UpdateCharacterFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function update(param1:String, param2:String, param3:Function = null) : int
      {
         this._updateRequest = new UpdateReq();
         this._updateRequest.data["charView"] = param1;
         this._updateRequest.sid = param2;
         this.sendUpdate(param3);
         return this._updateRequest.reqId;
      }
      
      public function chooseBait(param1:int) : int
      {
         this._updateRequest = new UpdateReq();
         this._updateRequest.data["selBait"] = param1;
         this.sendUpdate();
         return this._updateRequest.reqId;
      }
      
      public function chooseRod(param1:int) : int
      {
         this._updateRequest = new UpdateReq();
         this._updateRequest.data["selRod"] = param1;
         this.sendUpdate();
         return this._updateRequest.reqId;
      }
      
      public function openFishbox(param1:Function = null) : void
      {
         var _loc2_:OpenFishboxReq = new OpenFishboxReq();
         _connection.send(_loc2_,param1);
      }
      
      public function getCharacterEditorLockedItems(param1:Function) : void
      {
         var _loc2_:GetDataReq = new GetDataReq();
         _loc2_.data = {"closedClothing":1};
         _connection.send(_loc2_,param1);
      }
      
      private function sendUpdate(param1:Function = null) : void
      {
         if(Boolean(this._updateRequest) && _connection.isConnect())
         {
            _connection.send(this._updateRequest,param1);
         }
      }
   }
}

