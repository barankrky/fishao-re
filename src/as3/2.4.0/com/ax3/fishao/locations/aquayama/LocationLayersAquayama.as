package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.objects.ViewSecretEntranceWall;
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public class LocationLayersAquayama extends LocationLayersWithClubEntrance
   {
      
      private var _viewSecretEntranceWall:ViewSecretEntranceWall;
      
      public function LocationLayersAquayama()
      {
         super();
      }
      
      public function get viewSecretEntranceWall() : ViewSecretEntranceWall
      {
         return this._viewSecretEntranceWall;
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(1784,220);
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_SPECIAL_SECRET_ENTRANCE_WALL:
               this._viewSecretEntranceWall = new ViewSecretEntranceWall(param1 as DisplayObjectContainer);
               this._viewSecretEntranceWall.isEnabled = true;
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._viewSecretEntranceWall != null)
         {
            this._viewSecretEntranceWall.cleanup();
            this._viewSecretEntranceWall = null;
         }
         super.destroy();
      }
   }
}

