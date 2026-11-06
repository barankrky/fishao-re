package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.view.dialogs.featuresTemporary._3448adb92d27f2f312cd893f;
   import com.ax3.fishao.view.dialogs.featuresTemporary._9e1f9b3860f889ae7d4d377b;
   
   public class _0a3b7f9e9c67be2ea3c24a8a extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _2036d514fa030939ffb004f6:_9e1f9b3860f889ae7d4d377b;
      
      private var _c62ff3e68419b3767f73e780:_de00f89231bcfcd042af6bc5;
      
      public function _0a3b7f9e9c67be2ea3c24a8a(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._c62ff3e68419b3767f73e780 = (dialog as _a08941853c581750ff3fb5de).locationLayersBase as _de00f89231bcfcd042af6bc5;
      }
      
      private function init() : void
      {
         this._2036d514fa030939ffb004f6 = GameSwf.instance.managerFeaturesTemporary;
      }
      
      override protected function _b86e073791e56b2bb6e2315e(param1:String, param2:Object) : _810c4ade948afb64e9c7ee25
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = super._b86e073791e56b2bb6e2315e(param1,param2);
         if(param1 == _e42949745420bb5a55035b31.ENN_SAM)
         {
            this._39a66c9eecc40ffda7102bdf();
         }
         return _loc3_;
      }
      
      private function _39a66c9eecc40ffda7102bdf() : void
      {
         var _loc1_:_ba120ae720a391732e866217 = _5bbf4a7dc6de36b8bc7fc61d(_e42949745420bb5a55035b31.ENN_SAM);
         if(_loc1_ != null)
         {
            _loc1_.visible = !GameSwf.instance.managerTutorial.isTutorialCommonComplete;
         }
      }
      
      public function _0efccb9dd7d6bf42881e653a() : void
      {
         if(this._c62ff3e68419b3767f73e780 == null)
         {
            return;
         }
         var _loc1_:Boolean = this._2036d514fa030939ffb004f6.isFeatureEnabled(_3448adb92d27f2f312cd893f.EFTT_WATERFALL_CAVE);
         this._c62ff3e68419b3767f73e780.viewWaterfallCave.isEnabled = _loc1_;
      }
   }
}

