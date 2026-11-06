package com.ax3.fishao.view.dialogs.club.pages.goals
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.goals.item._48b2f9e1732820f46aa9d02d;
   import com.ax3.fishao.view.dialogs.club_goal_history._bc64ff0e09d214a7fd6e24a9;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.goals.ResponseClubsGetPageGoals;
   
   public class _88ae430af03d2344051b380e extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _65fd7af583285601ae47540f:_bf2e51fddb4c91b1ee444409;
      
      private var _46ac631b21d8933f51f4f4fa:Array;
      
      private var _75c264e1be48605cbdfdaf23:int;
      
      public function _88ae430af03d2344051b380e(param1:DisplayObjectContainer)
      {
         this._65fd7af583285601ae47540f = new _bf2e51fddb4c91b1ee444409(this,param1);
         super(this._65fd7af583285601ae47540f);
         this.init();
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageGoals = param1 as ResponseClubsGetPageGoals;
         this._65fd7af583285601ae47540f.buttonHistory.visible = _loc2_.completedGoalsCount > (-482015381 ^ -1179114647 ^ 0x7AEA8FA3 ^ 0x2017ABA1);
         var _loc3_:Array = _loc2_.uncompletedGoals;
         this._65fd7af583285601ae47540f.isAllGoalsComplete = _loc3_.length == (-296551154 ^ -443713613 ^ 0x3E80D4FC ^ 0x355F5E41);
         this._15e68f5bd910abcb056d7cfb(_loc3_);
         this._65fd7af583285601ae47540f.viewPagination.pageCurrent = 0x7A7C0B29 ^ -960426166 ^ 0x6D0EBD9F ^ -776750596;
         this._fab2580966b8ddf86614f025();
         this._c73698e02413986fe415ea24();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_bc64ff0e09d214a7fd6e24a9 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._65fd7af583285601ae47540f.buttonHistory:
                  §§push(0x1F13039C ^ 0x0230501D ^ -226756008 ^ -279402023);
                  break;
               case this._65fd7af583285601ae47540f.viewPagination.buttonLeft:
                  §§push(-440275747 ^ 0x3F9903DE ^ 0x3DE53AF0 ^ -406989326);
                  break;
               case this._65fd7af583285601ae47540f.viewPagination.buttonRight:
                  §§push(-571826090 ^ -1531350036 ^ 0x0BF7A8C3 ^ 0x72A47B7B);
                  break;
               default:
                  §§push(0x4BD3E198 ^ -1577324914 ^ 0x35706657 ^ -547854014);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_bc64ff0e09d214a7fd6e24a9);
                  _loc3_.show();
                  break;
               case 1:
               case 2:
                  this._c73698e02413986fe415ea24();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._75c264e1be48605cbdfdaf23 = -1936803291 ^ 0x61C16EF5 ^ -996442898 ^ 0x29D4A83A;
         this._46ac631b21d8933f51f4f4fa = [];
      }
      
      private function _15e68f5bd910abcb056d7cfb(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_48b2f9e1732820f46aa9d02d = null;
         _f2f26e7a66175d89c6f850e5(this._46ac631b21d8933f51f4f4fa);
         var _loc4_:DisplayObjectContainer = this._65fd7af583285601ae47540f.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new _48b2f9e1732820f46aa9d02d(_loc2_);
            this._46ac631b21d8933f51f4f4fa.push(_loc3_);
            _loc4_.addChild(_loc3_.view.source);
         }
         this._9019b2fab841c750f13fdbc0();
      }
      
      private function _9019b2fab841c750f13fdbc0() : void
      {
         _2366485e451061bdda2a0f22(this._46ac631b21d8933f51f4f4fa,0x611EE783 ^ 0x7DDFEDC1 ^ -1813255123 ^ -1893013933,this._75c264e1be48605cbdfdaf23,0x110B24A4 ^ 0x45CDFDCA ^ -246473760 ^ -1517698422);
      }
      
      private function _fab2580966b8ddf86614f025() : void
      {
         this._65fd7af583285601ae47540f.viewPagination.pagesTotal = Math.ceil(this._46ac631b21d8933f51f4f4fa.length / this._75c264e1be48605cbdfdaf23);
      }
      
      private function _c73698e02413986fe415ea24() : void
      {
         _3d866f07adb02a6079215c17(this._46ac631b21d8933f51f4f4fa,this._65fd7af583285601ae47540f.viewPagination.pageCurrent,this._75c264e1be48605cbdfdaf23);
      }
   }
}

