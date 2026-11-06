package com.ax3.fishao.locations.club_area.entrance
{
   import com.ax3.fishao.utils._d05691e68e00eacb6c602986;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _087d99e8fd5796934edd182c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _c2b29362056a6b07ac16c402:gViewClubEntrance = new gViewClubEntrance();
      
      private var _7aa75efaa98484d4e37745a9:BitmapData;
      
      public function _087d99e8fd5796934edd182c(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._c2b29362056a6b07ac16c402);
         this.init();
      }
      
      public function get obstacle() : BitmapData
      {
         return this._7aa75efaa98484d4e37745a9;
      }
      
      public function get obstacleOffset() : Point
      {
         return new Point(this._c2b29362056a6b07ac16c402.viewObstacle.x,this._c2b29362056a6b07ac16c402.viewObstacle.y);
      }
      
      public function get viewEnter() : DisplayObject
      {
         return this._c2b29362056a6b07ac16c402.viewEnter;
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         this._c2b29362056a6b07ac16c402.viewAnimation.visible = !param1;
         if(param1)
         {
            _loc2_ = new BitmapData(this._c2b29362056a6b07ac16c402.viewEnter.width,this._c2b29362056a6b07ac16c402.viewEnter.height,true,-2033434281 ^ 0x1618DDE0 ^ -1436126508 ^ 0x3AB2EE63);
            _loc2_.draw(this._c2b29362056a6b07ac16c402.viewEnter);
            _d05691e68e00eacb6c602986.merge(this._7aa75efaa98484d4e37745a9,_loc2_,-724061540 ^ -450073908 ^ 0x668AC826 ^ 0x5771104A,0x2AB4F4F3 ^ 0x6EF1302F ^ -732013303 ^ -1877239419);
         }
      }
      
      private function init() : void
      {
         _d3d70238b67f17bb35699a2c.cacheAsBitmap(this._c2b29362056a6b07ac16c402,true);
         var _loc1_:DisplayObject = this._c2b29362056a6b07ac16c402.viewObstacle;
         this._7aa75efaa98484d4e37745a9 = new BitmapData(_loc1_.width,_loc1_.height,true,-168713438 ^ -1678826838 ^ -1705191302 ^ -196978190);
         this._7aa75efaa98484d4e37745a9.draw(_loc1_);
         _loc1_.visible = false;
         this._c2b29362056a6b07ac16c402.viewEnter.visible = false;
         this._c2b29362056a6b07ac16c402.mouseEnabled = false;
         this._c2b29362056a6b07ac16c402.mouseChildren = false;
      }
   }
}

