package com.ax3.fishao.locations.club_area.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.objects._3dfef41c191ea65cc79d02e5;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import com.ax3.fishao.view.dialogs.club_fish._29f5c33033541e3bf59fe40c;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _343a2873b29368b83ebeb686 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _0ac432f884f30eb5e114dc8f:Array;
      
      private var _000d42bbbd0ca99ac4f2f464:Array;
      
      private var _1e1c85705c23df052c8f0be9:_04cce4e240ff9bea66c1b7f7;
      
      private var _3926256eb28c598e6c291e71:_04cce4e240ff9bea66c1b7f7;
      
      private var _9fbcf650609352b5e8456fed:_3dfef41c191ea65cc79d02e5;
      
      public function _343a2873b29368b83ebeb686()
      {
         var _loc1_:_04cce4e240ff9bea66c1b7f7 = new _04cce4e240ff9bea66c1b7f7(this,new Sprite());
         super(_loc1_);
         this.init();
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:_53a668138aad358ddf90ffdc = null;
         for each(_loc2_ in this._0ac432f884f30eb5e114dc8f)
         {
            _loc2_.name = param1;
         }
      }
      
      public function set emblemID(param1:int) : void
      {
         var _loc2_:_53a668138aad358ddf90ffdc = null;
         var _loc3_:_1c73633a6a4f4f6050258c2a = null;
         for each(_loc2_ in this._0ac432f884f30eb5e114dc8f)
         {
            _loc2_.emblemID = param1;
         }
         for each(_loc3_ in this._000d42bbbd0ca99ac4f2f464)
         {
            _loc3_.emblemID = param1;
         }
      }
      
      public function set monsterFishSize(param1:Number) : void
      {
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_29f5c33033541e3bf59fe40c = null;
         var _loc4_:_29f5c33033541e3bf59fe40c = null;
         var _loc5_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc5_)
         {
            switch(param1)
            {
               case this._1e1c85705c23df052c8f0be9:
                  §§push(0x5380E29B ^ 0x046F602A ^ -367759258 ^ -1107561769);
                  break;
               case this._3926256eb28c598e6c291e71:
                  §§push(0x5A3E0D19 ^ -1059957017 ^ 0x4FBAAA03 ^ -715722244);
                  break;
               default:
                  §§push(0x6CE144 ^ 0x484FEC86 ^ -434711291 ^ -1372202811);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_29f5c33033541e3bf59fe40c);
                  _loc3_.isSalt = false;
                  _loc3_.show();
                  break;
               case 1:
                  _loc4_ = app.dialogFactory._a0d214350fb42da9f32557e6(_29f5c33033541e3bf59fe40c);
                  _loc4_.isSalt = true;
                  _loc4_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc5_;
      }
      
      private function init() : void
      {
         this._0ac432f884f30eb5e114dc8f = [];
         this._000d42bbbd0ca99ac4f2f464 = [];
      }
      
      public function _a0da3c91fb1dc6ef9bc84354(param1:DisplayObjectContainer) : void
      {
         this._3926256eb28c598e6c291e71 = this._57369e698c6aaade442f3b2d(param1);
      }
      
      public function _253bc5b6d87f9cc01c119fc7(param1:DisplayObjectContainer) : void
      {
         this._1e1c85705c23df052c8f0be9 = this._57369e698c6aaade442f3b2d(param1);
      }
      
      private function _57369e698c6aaade442f3b2d(param1:DisplayObjectContainer) : _04cce4e240ff9bea66c1b7f7
      {
         var _loc2_:_04cce4e240ff9bea66c1b7f7 = new _04cce4e240ff9bea66c1b7f7(this,param1);
         _loc2_._fc17178734ae7cc816dbcc2f(true);
         _loc2_._38df5ae3c9d5e15bce3d7ffe();
         param1.mouseChildren = true;
         param1.mouseEnabled = true;
         return _loc2_;
      }
      
      public function _853306c409c926ec4f9392aa(param1:DisplayObjectContainer) : void
      {
         var _loc2_:_53a668138aad358ddf90ffdc = new _53a668138aad358ddf90ffdc(this,param1);
         this._0ac432f884f30eb5e114dc8f.push(_loc2_);
      }
      
      public function _c52c67a4d8eb87bb6d1f9f34(param1:DisplayObjectContainer) : void
      {
         var _loc2_:_1c73633a6a4f4f6050258c2a = new _1c73633a6a4f4f6050258c2a(this,param1);
         this._000d42bbbd0ca99ac4f2f464.push(_loc2_);
      }
      
      public function _6ef91c88871e4544cb0a3620(param1:DisplayObjectContainer) : void
      {
         this._9fbcf650609352b5e8456fed = new _3dfef41c191ea65cc79d02e5(this,param1);
      }
      
      public function _fde3121556e9d8d958fdfddb(param1:Number, param2:Boolean = true) : void
      {
         this._9fbcf650609352b5e8456fed._c70a84e137c1e0c5c2d6ae39(param1,param2);
      }
   }
}

