package com.ax3.fishao.tutorial.common.base
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display.dialogs._eaf1c366e9817b3f7cf20d19;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.entries._0d47696161f1136a4c3be130;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.info._69796f101fc3fc2b4b8665e9;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.helpers._f68c6ad080882f1d18d7d86d;
   import com.ax3.fishao.tutorial.views.dialogs.shop._62e6ad6eb7ca56c1fbbc638a;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class _c1dd3094cb2ba333147208b3 extends _9b5482b3978b7abe1547abb8
   {
      
      public function _c1dd3094cb2ba333147208b3()
      {
         super();
      }
      
      protected static function _6723a672cb0e6782ec4e6665(param1:Point) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         param1 = _loc2_.player._42da5931475ef60d3da8d4a2(param1.x,param1.y);
         _91ecc890ba82e7acb012d6f4(param1);
         app.user.canMove = false;
      }
      
      protected static function _7d5f055ef82d414752f9a0e7() : void
      {
         var moveStrategy:_8b5edf1c1de2751d1bc6fca0 = null;
         var isRodShown:Boolean = false;
         var callback:Function = null;
         var locationUser:_810c4ade948afb64e9c7ee25 = null;
         locationUser = null;
         locationUser = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         (locationUser.fieldChar as _0d47696161f1136a4c3be130)._ff5cb7d960bbce83c0d99e6c(true);
         moveStrategy = locationUser.fieldChar.moveStrategy;
         if(moveStrategy != null)
         {
            moveStrategy.stop();
         }
         isRodShown = locationUser.fieldChar._1ac276fa38c42f5b354104cd();
         callback = function():void
         {
            locationUser.fieldChar._1ac276fa38c42f5b354104cd(true);
         };
         if(!isRodShown)
         {
            Cc.warn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刺劮劈効剓勅勚刻剳劎勯剞勵則剖剿勮剛剚剺剹剦励刄刳劋剷刨刵刭勹勜剦剑劶办剶劃剉劘劤勂勎劸剼刈勃劣勫剞剌创分剷办勎勱剑劔割刘剹勲勬励剼勈刃劯劲刪勺劑劋刨刔刲劓勑刍勇劵勀劸剎務劏剥刴券刀初劻剒勔剕劼劐剟勫","刼劈剋刴剮刐劋刌勇前効勈分劍副劻"));
            setTimeout(callback,-1680784587 ^ 0x101818CC ^ 0x5F0EA2E4 ^ -725092119);
         }
      }
      
      protected static function _140ab335dcc3352af7a23f34() : void
      {
         var _loc1_:_62e6ad6eb7ca56c1fbbc638a = null;
         var _loc2_:_69796f101fc3fc2b4b8665e9 = app.user.inventory._d65c0405e9175079a9c60504(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
         if(_loc2_ == null || _loc2_.quantity <= (-1973812095 ^ -915581062 ^ 0x5D3F6A38 ^ 0x1E0839C3))
         {
            _loc1_ = app.dialogFactory._b04ada8430ddb118e5aa7113();
            _loc1_._23e239fed1452ab5d19ef1d9(_eaf1c366e9817b3f7cf20d19.TAB_ID_BAIT,_67282af25befe9778e5c8dd1.BAIT,_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
         }
      }
      
      override public function get canFishing() : Boolean
      {
         return true;
      }
      
      public function _700de4bb8697d0fa859ddab2() : void
      {
         --this.stepCurrent;
         --this.stepCurrent;
         _0e1bc13a989d12a3776df86c();
      }
      
      protected function _d00d9453caf68cdb6c5262dc(param1:int, param2:_91aad973ddd3030366bf3e1f = null) : void
      {
         var _loc3_:_67f8febc099eaa05c48aa41e = null;
         app.user.userRodId = param1;
         if(param1 != _a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY)
         {
            _loc3_ = GameSwf.currentLocationDialog;
            if(_loc3_ != null && _loc3_.player != null)
            {
               _loc3_.player._1c5844c9d006616ded423d2f(param1,param2);
            }
            _dfa25706e58a240c1e33e5c6.updateExtension._9f15b41d96685367a04746f1(param1);
         }
      }
      
      protected function _fdb0406343aa72f7e555d70b(param1:int) : void
      {
         app.user.baitInfoId = param1;
         _dfa25706e58a240c1e33e5c6.updateExtension._f07c714c9cfebd37ad0170a7(param1);
      }
      
      protected function _e1f82a64d03bcf00a77d2c76() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         var _loc2_:_0d47696161f1136a4c3be130 = _loc1_.fieldChar as _0d47696161f1136a4c3be130;
         _loc2_._ff5cb7d960bbce83c0d99e6c(false);
      }
      
      protected function _4ce0dd12e4d6e2cb004181bd() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         var _loc2_:_0d47696161f1136a4c3be130 = _loc1_.fieldChar as _0d47696161f1136a4c3be130;
         _loc2_._ff5cb7d960bbce83c0d99e6c(true);
         _loc2_._89619ce3363ecc3ce96c8aba();
      }
      
      override protected function _520ba4dbc5360c791fc5a2f0() : _e444b603a0e799e84b427ae5
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = super._520ba4dbc5360c791fc5a2f0();
         _loc1_.sizeLabel = _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM;
         return _loc1_;
      }
      
      protected function _b6941f31289625a2993aad01(param1:int) : void
      {
         _gameSwf.enterToLocation(param1);
      }
   }
}

