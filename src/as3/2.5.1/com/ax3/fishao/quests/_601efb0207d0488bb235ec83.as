package com.ax3.fishao.quests
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.utils.Dictionary;
   import protocol.api.quests.FscExtensionQuests;
   import protocol.api.quests.init.ResponseQuestsInit;
   import protocol.api.quests.update.ResponseQuestsUpdate;
   
   public class _601efb0207d0488bb235ec83 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _9386968850c276c9b2a9e66b:Dictionary;
      
      private var _c1a2bf0f340b4a460c34753d:FscExtensionQuests;
      
      public function _601efb0207d0488bb235ec83()
      {
         super();
         this.init();
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc4_:ResponseQuestsInit = param1 as ResponseQuestsInit;
         for(_loc2_ in _loc4_.questsMap)
         {
            _loc3_ = _loc4_.questsMap[_loc2_];
            this._9386968850c276c9b2a9e66b[_loc2_] = _87f14a16dc945c2c89cb7617._ff24e1caee72749574ec098d(_loc2_,_loc3_);
         }
      }
      
      private function _4e222467a227c00f37eaff86(param1:ResponseQuestsUpdate) : void
      {
         var _loc2_:String = null;
         var _loc3_:_ef35c5b7acd3132a397260e8 = null;
         var _loc4_:Object = null;
         for(_loc2_ in param1.questsMap)
         {
            _loc3_ = this._9386968850c276c9b2a9e66b[_loc2_];
            _loc4_ = param1.questsMap[_loc2_];
            if(_loc3_ == null)
            {
               _loc3_ = _87f14a16dc945c2c89cb7617._ff24e1caee72749574ec098d(_loc2_,_loc4_);
            }
            else
            {
               _loc3_.deserialize(_loc4_);
            }
            this._9386968850c276c9b2a9e66b[_loc2_] = _loc3_;
         }
      }
      
      private function init() : void
      {
         this._9386968850c276c9b2a9e66b = new Dictionary(true);
         this._c1a2bf0f340b4a460c34753d = _dfa25706e58a240c1e33e5c6.fscModel.extensionQuests;
         _remoteExtension = this._c1a2bf0f340b4a460c34753d;
         _4575c3ec15103b43cbf2be04(ResponseQuestsUpdate,this._4e222467a227c00f37eaff86);
      }
      
      public function _344867a3030aa4d0c44e7c27(param1:String) : _ef35c5b7acd3132a397260e8
      {
         return this._9386968850c276c9b2a9e66b[param1];
      }
   }
}

