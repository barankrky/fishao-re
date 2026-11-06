package com.ax3.fishao.locations.club_area.entrance
{
   import com.ax3.fishao.utils.UtilsBitmap;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class ViewClubEntrance extends ViewBase
   {
      
      private var _source:gViewClubEntrance = new gViewClubEntrance();
      
      private var _obstacle:BitmapData;
      
      public function ViewClubEntrance(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get obstacle() : BitmapData
      {
         return this._obstacle;
      }
      
      public function get obstacleOffset() : Point
      {
         return new Point(this._source.viewObstacle.x,this._source.viewObstacle.y);
      }
      
      public function get viewEnter() : DisplayObject
      {
         return this._source.viewEnter;
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         this._source.viewAnimation.visible = !param1;
         if(param1)
         {
            _loc2_ = new BitmapData(this._source.viewEnter.width,this._source.viewEnter.height,true,0);
            _loc2_.draw(this._source.viewEnter);
            UtilsBitmap.merge(this._obstacle,_loc2_,60,80);
         }
      }
      
      private function init() : void
      {
         UtilsDisplayObject.cacheAsBitmap(this._source,true);
         var _loc1_:DisplayObject = this._source.viewObstacle;
         this._obstacle = new BitmapData(_loc1_.width,_loc1_.height,true,0);
         this._obstacle.draw(_loc1_);
         _loc1_.visible = false;
         this._source.viewEnter.visible = false;
         this._source.mouseEnabled = false;
         this._source.mouseChildren = false;
      }
   }
}

