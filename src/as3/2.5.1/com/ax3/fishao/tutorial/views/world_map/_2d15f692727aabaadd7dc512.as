package com.ax3.fishao.tutorial.views.world_map
{
   import com.ax3.display.dialog._21f310fbd4549eade0783c0a;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.helpers._f68c6ad080882f1d18d7d86d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl._e63cfaa74949a39494ed2b0b;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _2d15f692727aabaadd7dc512 extends _21f310fbd4549eade0783c0a
   {
      
      private var _07b9a9fa65d2408b541dc7e0:Boolean;
      
      private var _30b8c52748e2c156006e9557:_e63cfaa74949a39494ed2b0b;
      
      private var _ab928a5584c952a9da43397b:String;
      
      public function _2d15f692727aabaadd7dc512()
      {
         super();
      }
      
      private static function _6ee5a2f15d30b128322d5392() : _e444b603a0e799e84b427ae5
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = GameSwf.instance.managerTutorial.tutorialHelpers.helperPopup;
         _loc1_._81aa5d8d1d01452f84568fed();
         _loc1_.showPopup();
         _loc1_._2533a4be141ff5419474243f();
         _loc1_.sizeLabel = _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM;
         return _loc1_;
      }
      
      override protected function _d65391439aa79cda1f72fbae(param1:MouseEvent) : void
      {
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         var _loc3_:_0c6054b5aa20a9fd2b92f9c1 = null;
         var _loc4_:String = null;
         var _loc5_:_e63cfaa74949a39494ed2b0b = null;
         if(!_isAssetsComplete && !_isDataComplete)
         {
            return;
         }
         var _loc6_:_e63cfaa74949a39494ed2b0b = _e63cfaa74949a39494ed2b0b(param1.currentTarget);
         if(this._07b9a9fa65d2408b541dc7e0)
         {
            if(this._30b8c52748e2c156006e9557 == _loc6_)
            {
               super._d65391439aa79cda1f72fbae(param1);
               _loc2_ = GameSwf.instance.managerTutorial.tutorialInProgress;
               _loc3_ = GameSwf.instance.managerTutorial.tutorialHelpers;
               _loc3_.helperMask._95b9b777a6d00d1a4a825220();
               _loc3_.helperArrow._e2dc7bfe294f5d88c4d9aa9d();
               _loc3_.helperPopup.hidePopup();
               this._30b8c52748e2c156006e9557.isFocused = false;
               this._07b9a9fa65d2408b541dc7e0 = false;
               this._30b8c52748e2c156006e9557 = null;
               for(_loc4_ in _locationById)
               {
                  _loc5_ = _locationById[_loc4_];
                  _loc5_._5dcc51b8d894ed469bdfc955();
               }
            }
         }
         else
         {
            super._d65391439aa79cda1f72fbae(param1);
         }
      }
      
      private function _b9fcf2a83dc98422c2abe1d8(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:_e63cfaa74949a39494ed2b0b = null;
         var _loc4_:_0c6054b5aa20a9fd2b92f9c1 = null;
         for(_loc2_ in _locationById)
         {
            _loc3_ = _locationById[_loc2_];
            _loc3_._bec82d22816469f9d6cc4eb3();
         }
         if(this._07b9a9fa65d2408b541dc7e0 && GameSwf.instance.managerTutorial != null)
         {
            _loc4_ = GameSwf.instance.managerTutorial.tutorialHelpers;
            _loc4_.update();
         }
      }
      
      public function _672fea5b40693665c61d3bd6(param1:int, param2:String = null) : void
      {
         var _loc3_:String = param1.toString();
         var _loc4_:_e63cfaa74949a39494ed2b0b = _locationById[_loc3_];
         if(_loc4_ == null)
         {
            return;
         }
         this._30b8c52748e2c156006e9557 = _loc4_;
         this._07b9a9fa65d2408b541dc7e0 = true;
         this._ab928a5584c952a9da43397b = param2;
      }
      
      override public function activate() : void
      {
         super.activate();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.globalDispatcher,_8365e76620d1837a83b767d1.RESIZE,this._b9fcf2a83dc98422c2abe1d8);
         this._16657a2700c34ce15673751e();
      }
      
      override public function _607377c21c536ba8e2f92d86(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._607377c21c536ba8e2f92d86(param1);
         this._16657a2700c34ce15673751e();
      }
      
      private function _16657a2700c34ce15673751e() : void
      {
         var _loc1_:String = null;
         var _loc2_:Sprite = null;
         var _loc3_:_e63cfaa74949a39494ed2b0b = null;
         var _loc4_:_0c6054b5aa20a9fd2b92f9c1 = null;
         var _loc5_:_e444b603a0e799e84b427ae5 = null;
         if(!this._07b9a9fa65d2408b541dc7e0 || this._30b8c52748e2c156006e9557 == null)
         {
            return;
         }
         _7b5429a372e9042281993e89();
         for(_loc1_ in _locationById)
         {
            _loc3_ = _locationById[_loc1_];
            _loc3_._b4b0a9f643237f8ed72f5ee5();
         }
         this._30b8c52748e2c156006e9557.isFocused = true;
         this._30b8c52748e2c156006e9557.show(-999989042 ^ 0x7F796E98 ^ -1925115950 ^ 0x365D0184);
         _loc2_ = this._30b8c52748e2c156006e9557.tooltip;
         if(_loc2_ != null)
         {
            _loc4_ = GameSwf.instance.managerTutorial.tutorialHelpers;
            _loc4_.helperMask._95b9b777a6d00d1a4a825220();
            _loc4_.helperArrow._e2dc7bfe294f5d88c4d9aa9d();
            _loc4_.helperPopup.hidePopup();
            _loc4_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_,new Point(-_loc2_.width / (-1028870161 ^ 0x6D642EFD ^ -1787251953 ^ 0x3AB0321F))),0x4E889F41 ^ 0x9757FD ^ 0x387C227F ^ 0x7663EAA7);
            _loc4_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc2_,new Point(-1264176439 ^ -1316066411 ^ 0x76D808CF ^ 0x73F05193,-119857315 ^ 0x1E5148C2 ^ -1106337286 ^ -1485108831)),-1603570993 ^ 0x02E3ABB6 ^ -1176409442 ^ 0x1B69B3E7);
         }
         if(this._ab928a5584c952a9da43397b != null)
         {
            _loc5_ = _6ee5a2f15d30b128322d5392();
            _loc5_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(this._ab928a5584c952a9da43397b));
            _loc5_._406b04d0c8d59430e3058ade(0x23EB7535 ^ 0x6A4F066A ^ -35461939 ^ -1270442080);
         }
         _loc4_.update();
      }
      
      override public function onShowComplete() : void
      {
         super.onShowComplete();
         this._b9fcf2a83dc98422c2abe1d8(null);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,GameSwf.globalDispatcher,_8365e76620d1837a83b767d1.RESIZE,this._b9fcf2a83dc98422c2abe1d8);
      }
   }
}

