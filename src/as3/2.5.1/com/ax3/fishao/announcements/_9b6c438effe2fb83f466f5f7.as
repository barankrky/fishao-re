package com.ax3.fishao.announcements
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.announcement._0343a212c8aa81ae0e291b84;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.announcements.init.AnnouncementInfo;
   import protocol.api.announcements.init.ResponseAnnouncements;
   
   public class _9b6c438effe2fb83f466f5f7 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _c8213b7fa9bc73b4ce453568:Array;
      
      public function _9b6c438effe2fb83f466f5f7()
      {
         super();
         this.init();
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseAnnouncements = param1 as ResponseAnnouncements;
         this._c8213b7fa9bc73b4ce453568 = _loc2_.list;
      }
      
      private function init() : void
      {
         this._c8213b7fa9bc73b4ce453568 = [];
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionAnnouncements;
      }
      
      public function _13ab1346478fd6c3c7bfa7fc() : void
      {
         if(this._c8213b7fa9bc73b4ce453568.length == (-1346400040 ^ 0x766478FD ^ 0x3BA444E9 ^ -494949172) || GameSwf.instance.managerTutorial.isAnyTutorialInProgress || Boolean(app.user.isGuest))
         {
            return;
         }
         var _loc1_:AnnouncementInfo = this._c8213b7fa9bc73b4ce453568[0x2FF7A439 ^ 0x51C9A4E9 ^ -313546481 ^ -1821267489];
         _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._c8213b7fa9bc73b4ce453568,_loc1_);
         var _loc2_:_0343a212c8aa81ae0e291b84 = app.dialogFactory._9dc25bdbf460e537519dd470();
         _loc2_.entity = _loc1_;
         _loc2_.show();
      }
   }
}

