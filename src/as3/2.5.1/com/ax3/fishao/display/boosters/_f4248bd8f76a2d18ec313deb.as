package com.ax3.fishao.display.boosters
{
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _f4248bd8f76a2d18ec313deb extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _4dc382e1eed9cdddddac6869:DisplayObjectContainer = new Sprite();
      
      private var _4375e3f4eea15247560b2e7d:_305fa3f8dbbefcf8a5b9c778;
      
      private var _1508225a23c8ebf202a7edf9:_305fa3f8dbbefcf8a5b9c778;
      
      private var _16e7facfb813525e11eb8b4f:_305fa3f8dbbefcf8a5b9c778;
      
      private var _d1de014193feb249e4aeb54a:_305fa3f8dbbefcf8a5b9c778;
      
      private var _acba25ac4ef902834912cea3:_305fa3f8dbbefcf8a5b9c778;
      
      private var _dcd25fa999725edd9cb0673e:_305fa3f8dbbefcf8a5b9c778;
      
      public function _f4248bd8f76a2d18ec313deb(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._4dc382e1eed9cdddddac6869);
         this.init();
      }
      
      public function get buttonShinyPotion() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._4375e3f4eea15247560b2e7d;
      }
      
      public function get buttonLuckPotion() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._1508225a23c8ebf202a7edf9;
      }
      
      public function get buttonRadar() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._16e7facfb813525e11eb8b4f;
      }
      
      public function get buttonExp() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._acba25ac4ef902834912cea3;
      }
      
      public function get buttonMagicWatch() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._d1de014193feb249e4aeb54a;
      }
      
      public function get buttonPower() : _305fa3f8dbbefcf8a5b9c778
      {
         return this._dcd25fa999725edd9cb0673e;
      }
      
      private function init() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = -1275627388 ^ -1599844098 ^ -1961391311 ^ -1740332189;
         var _loc2_:Number = -1926111543 ^ 0x09D029BD ^ 0x29D9E500 ^ -1388834209;
         this._4375e3f4eea15247560b2e7d = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.SHINY_POTION.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._4375e3f4eea15247560b2e7d.source);
         this._1508225a23c8ebf202a7edf9 = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.LUCK_POTION.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._1508225a23c8ebf202a7edf9.source);
         this._1508225a23c8ebf202a7edf9.source.x = this._4375e3f4eea15247560b2e7d.source.x + _loc1_;
         this._16e7facfb813525e11eb8b4f = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.FISH_RADAR.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._16e7facfb813525e11eb8b4f.source);
         this._16e7facfb813525e11eb8b4f.source.x = this._1508225a23c8ebf202a7edf9.source.x + _loc1_;
         this._d1de014193feb249e4aeb54a = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.MAGIC_WATCH.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._d1de014193feb249e4aeb54a.source);
         this._d1de014193feb249e4aeb54a.source.x = this._16e7facfb813525e11eb8b4f.source.x + _loc1_;
         this._acba25ac4ef902834912cea3 = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.EXP_BOOSTER.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._acba25ac4ef902834912cea3.source);
         this._acba25ac4ef902834912cea3.source.x = this._d1de014193feb249e4aeb54a.source.x + _loc1_;
         this._dcd25fa999725edd9cb0673e = new _305fa3f8dbbefcf8a5b9c778(controller,_67282af25befe9778e5c8dd1.POWER_BOOSTER.id);
         this._4dc382e1eed9cdddddac6869.addChild(this._dcd25fa999725edd9cb0673e.source);
         this._dcd25fa999725edd9cb0673e.source.x = this._acba25ac4ef902834912cea3.source.x;
         this._dcd25fa999725edd9cb0673e.source.y = this._acba25ac4ef902834912cea3.source.y + _loc2_;
      }
   }
}

