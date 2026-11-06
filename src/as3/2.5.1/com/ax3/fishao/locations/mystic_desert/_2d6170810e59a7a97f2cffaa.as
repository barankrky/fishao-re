package com.ax3.fishao.locations.mystic_desert
{
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.features._f49970bf420b737db92228d1;
   
   public class _2d6170810e59a7a97f2cffaa extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _53ae8594b9d3c0317be5c1e8:_f49970bf420b737db92228d1;
      
      public function _2d6170810e59a7a97f2cffaa(param1:int)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         this._53ae8594b9d3c0317be5c1e8 = GameSwf.instance.managerFeatures;
      }
      
      override protected function _b86e073791e56b2bb6e2315e(param1:String, param2:Object) : _810c4ade948afb64e9c7ee25
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = super._b86e073791e56b2bb6e2315e(param1,param2);
         if(param1 == _e42949745420bb5a55035b31.ENN_HOUSSAM)
         {
            this._022b4c60ef4ae506d57a07f4();
         }
         return _loc3_;
      }
      
      public function _022b4c60ef4ae506d57a07f4() : void
      {
         var _loc1_:_ba120ae720a391732e866217 = _5bbf4a7dc6de36b8bc7fc61d(_e42949745420bb5a55035b31.ENN_HOUSSAM);
         var _loc2_:Boolean = this._53ae8594b9d3c0317be5c1e8.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_LOCATION_TREE_CAVE);
         _loc1_.visible = _loc1_ != null && _loc2_;
      }
   }
}

