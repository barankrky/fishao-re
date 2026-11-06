package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.locations.objects._5d83b19f7624376d2aa3e68d;
   import com.ax3.fishao.locations.objects._b54df8d82f474953be7b2704;
   import com.ax3.fishao.quests._601efb0207d0488bb235ec83;
   import com.ax3.fishao.quests._9f9b0437732a732f27c8da80;
   import com.ax3.fishao.quests._a15fa3f8a5c23be696811a15;
   import com.ax3.fishao.vars.app;
   
   public class _eb8e676815edb467bb44c67e extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _97e34e30471f60d3c40f57b3:_601efb0207d0488bb235ec83;
      
      private var _041a861299d92f7f061ddf3f:_6c9355ed2a14a0afdaa3f32b;
      
      public function _eb8e676815edb467bb44c67e(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._041a861299d92f7f061ddf3f = (dialog as _47d6b9f0039348f0d7ed7877).locationLayersBase as _6c9355ed2a14a0afdaa3f32b;
      }
      
      private function init() : void
      {
         this._97e34e30471f60d3c40f57b3 = GameSwf.instance.managerQuests;
      }
      
      override protected function _b86e073791e56b2bb6e2315e(param1:String, param2:Object) : _810c4ade948afb64e9c7ee25
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = super._b86e073791e56b2bb6e2315e(param1,param2);
         if(param1 == _e42949745420bb5a55035b31.ENN_STEVE)
         {
            this._99f08fbc47a9fcd1e0bce6c6();
         }
         return _loc3_;
      }
      
      public function _99f08fbc47a9fcd1e0bce6c6() : void
      {
         var _loc1_:int = int(app.user.level);
         var _loc2_:_ba120ae720a391732e866217 = _5bbf4a7dc6de36b8bc7fc61d(_e42949745420bb5a55035b31.ENN_STEVE);
         if(_loc2_ != null)
         {
            _loc2_.visible = _loc1_ >= (0x562DB3D1 ^ 0x1F4DC228 ^ 0x6B1117B1 ^ 0x22716635);
         }
      }
      
      public function _8d2338971c32769a254cb7d8() : void
      {
         var _loc1_:_5d83b19f7624376d2aa3e68d = null;
         var _loc2_:_a15fa3f8a5c23be696811a15 = this._97e34e30471f60d3c40f57b3._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_GAME_END) as _a15fa3f8a5c23be696811a15;
         if(_loc2_ != null)
         {
            _loc1_ = this._041a861299d92f7f061ddf3f.viewBridgeKey;
            _loc1_.isEnabled = _loc2_.marshvilleBridgeKeyVisible;
         }
      }
      
      public function _e344ee33bb19e9f0e5ff549b() : void
      {
         var _loc1_:_5d83b19f7624376d2aa3e68d = null;
         var _loc2_:_b54df8d82f474953be7b2704 = null;
         var _loc3_:_a15fa3f8a5c23be696811a15 = this._97e34e30471f60d3c40f57b3._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_GAME_END) as _a15fa3f8a5c23be696811a15;
         if(_loc3_ != null)
         {
            _loc1_ = this._041a861299d92f7f061ddf3f.viewBridgeTreeCave;
            _loc2_ = this._041a861299d92f7f061ddf3f.viewDoorTreeCave;
            _loc1_.isEnabled = _loc3_.marshvilleTreeCaveAccessible;
            _loc2_.isEnabled = !_loc3_.marshvilleTreeCaveAccessible;
         }
      }
      
      public function _d7130d4b9e70f8e4ab1d9f96() : void
      {
         var _loc1_:_a15fa3f8a5c23be696811a15 = this._97e34e30471f60d3c40f57b3._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_GAME_END) as _a15fa3f8a5c23be696811a15;
         if(_loc1_ != null)
         {
            this._041a861299d92f7f061ddf3f.key.visible = !_loc1_.marshvilleTreeCaveAccessible;
         }
      }
   }
}

