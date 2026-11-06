package com.ax3.fishao.view.dialogs.club.pages.recommended
{
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.recommended.item._0dec8b8b166650436846e5fe;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObjectContainer;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.recommended.ResponseClubsGetPageRecommended;
   
   public class _d9c25250ef41670f6d803ce2 extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _7423bdebbc63154b33159bee:_e74963b31396e38fbb2aa396;
      
      private var _51bb2d143ad7955ebfa23f91:Array;
      
      public function _d9c25250ef41670f6d803ce2(param1:DisplayObjectContainer)
      {
         this._7423bdebbc63154b33159bee = new _e74963b31396e38fbb2aa396(this,param1);
         super(this._7423bdebbc63154b33159bee);
         this.init();
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageRecommended = param1 as ResponseClubsGetPageRecommended;
         this._a5391513fb475d87f4172a23(_loc2_.clubsData);
         this._7423bdebbc63154b33159bee.isRecommendedClubsExists = _loc2_.clubsData.length > (-1550479526 ^ -268476944 ^ 0x480B10D5 ^ 0x0461C27F);
      }
      
      private function init() : void
      {
         this._51bb2d143ad7955ebfa23f91 = [];
      }
      
      private function _a5391513fb475d87f4172a23(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_0dec8b8b166650436846e5fe = null;
         _f2f26e7a66175d89c6f850e5(this._51bb2d143ad7955ebfa23f91);
         var _loc4_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new _0dec8b8b166650436846e5fe(_loc2_);
            _loc3_.canOpenDialogInside = this._canOpenDialogInside;
            _loc4_.addChild(_loc3_.view.source);
            this._51bb2d143ad7955ebfa23f91.push(_loc3_);
         }
         _2366485e451061bdda2a0f22(this._51bb2d143ad7955ebfa23f91,0x6EB536CA ^ 0x473AFC64 ^ 0x02D12DBE ^ 0x2B5EE774,0x380A698D ^ -1433839050 ^ -2032179307 ^ 0x145C5428,0x7B706DE4 ^ 0x6195FD98 ^ -1267164389 ^ -1365439641);
      }
   }
}

