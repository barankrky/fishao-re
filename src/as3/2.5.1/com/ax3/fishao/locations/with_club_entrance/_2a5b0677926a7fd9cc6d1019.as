package com.ax3.fishao.locations.with_club_entrance
{
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.club_area.entrance._0708a1115bf534b5f9f8825e;
   import com.ax3.fishao.locations.club_area.entrance._087d99e8fd5796934edd182c;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.ax3.fishao.utils._d05691e68e00eacb6c602986;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _2a5b0677926a7fd9cc6d1019 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _b0be865ed1b007ed675ce215:_0708a1115bf534b5f9f8825e;
      
      public function _2a5b0677926a7fd9cc6d1019()
      {
         super();
         this.init();
      }
      
      public function get clubEntrancePosition() : Point
      {
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -1519463494 ^ -1180234050 ^ 0x0FCC8024 ^ 0x13055D20;
         return new Point(_temp_1,_temp_1);
      }
      
      override protected function _de46adb1ce4f5035d00b79ca() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc1_:Point = null;
         super._de46adb1ce4f5035d00b79ca();
         _loc2_ = this._b0be865ed1b007ed675ce215.view.source;
         _a59e9ad02d49ff892e329e08(_loc2_,mainLayer);
         _zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         _visibilityManager._cd00d97cac65b4dc892b5324(_loc2_);
         _loc1_ = this.clubEntrancePosition;
         _loc2_.x = _loc1_.x;
         _loc2_.y = _loc1_.y;
         var _loc3_:_087d99e8fd5796934edd182c = this._b0be865ed1b007ed675ce215.viewEntrance;
         var _loc4_:Point = _loc3_.obstacleOffset;
         _d05691e68e00eacb6c602986.merge(_698bb584b5b0ca8d2e60ce08(),_loc3_.obstacle,_loc2_.x + _loc4_.x,_loc2_.y + _loc4_.y);
         this._be01d97112d795ec5c42618b(_loc3_);
      }
      
      private function init() : void
      {
         this._b0be865ed1b007ed675ce215 = new _0708a1115bf534b5f9f8825e();
      }
      
      private function _be01d97112d795ec5c42618b(param1:_087d99e8fd5796934edd182c) : void
      {
         if(app.user.isGuest)
         {
            return;
         }
         _a59e9ad02d49ff892e329e08(param1.viewEnter,mainLayer);
         var _loc2_:_a5e6911f85306c220b8b5d78 = new _a5e6911f85306c220b8b5d78();
         _loc2_.process(param1.viewEnter);
         _loc2_.id = _24fc30cfc3c855ea21a231e8.CLUB_AREA.id;
         _sublocationEnters.push(_loc2_);
      }
   }
}

