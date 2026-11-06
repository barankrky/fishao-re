package com.ax3.fishao.view.dialogs.club_goal_history.item
{
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   
   public class _c225f2e009960c3a0d437559 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _aadcc63677c980a5114afdd2:gViewClubsItemGoalHistory = new gViewClubsItemGoalHistory();
      
      private var _3a4f17b5b994eece6d87d289:_73899a4de8f83c8d2c26f545;
      
      private var _777431047953823706b09b91:_73899a4de8f83c8d2c26f545;
      
      public function _c225f2e009960c3a0d437559(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._aadcc63677c980a5114afdd2);
         this.init();
      }
      
      public function set reward(param1:int) : void
      {
         this._777431047953823706b09b91.text = param1.toString();
      }
      
      public function _1600af6c5f9473427c52cf59(param1:String, param2:int) : void
      {
         var _loc3_:String = _c2ad9d37d7be0097d6d2e977.get(param1);
         _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,param2);
         this._3a4f17b5b994eece6d87d289.text = _loc3_;
      }
      
      private function init() : void
      {
         this._3a4f17b5b994eece6d87d289 = new _73899a4de8f83c8d2c26f545(this._aadcc63677c980a5114afdd2.labelType);
         this._777431047953823706b09b91 = new _73899a4de8f83c8d2c26f545(this._aadcc63677c980a5114afdd2.labelReward);
      }
   }
}

