package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.objects._617ed8d075488c781d6d73f5;
   import com.ax3.fishao.quests._601efb0207d0488bb235ec83;
   import com.ax3.fishao.quests._9f9b0437732a732f27c8da80;
   import com.ax3.fishao.quests._a15fa3f8a5c23be696811a15;
   
   public class _71e2d838266b5b3439b6d925 extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _6aa5f9a367420cc9296a4ce2:_601efb0207d0488bb235ec83;
      
      private var _4ac050df626da1cc5d2449b5:_ebf8a819d6b9763d3314defe;
      
      public function _71e2d838266b5b3439b6d925(param1:int)
      {
         super(param1);
         this.init();
      }
      
      public function get isLostValleyAvailable() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:_a15fa3f8a5c23be696811a15 = this._6aa5f9a367420cc9296a4ce2._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_GAME_END) as _a15fa3f8a5c23be696811a15;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.lostValleyOpened;
         }
         return _loc1_;
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._4ac050df626da1cc5d2449b5 = (dialog as _4fe4be035fa328f89afd1c4a).locationLayersBase as _ebf8a819d6b9763d3314defe;
      }
      
      private function init() : void
      {
         this._6aa5f9a367420cc9296a4ce2 = GameSwf.instance.managerQuests;
      }
      
      public function _44e8358a14176e3c346a077b() : void
      {
         var _loc1_:_617ed8d075488c781d6d73f5 = null;
         var _loc2_:_a15fa3f8a5c23be696811a15 = this._6aa5f9a367420cc9296a4ce2._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_GAME_END) as _a15fa3f8a5c23be696811a15;
         if(_loc2_ != null)
         {
            _loc1_ = this._4ac050df626da1cc5d2449b5.viewSecretEntranceWall;
            _loc1_.isEnabled = !_loc2_.lostValleyOpened;
         }
      }
   }
}

