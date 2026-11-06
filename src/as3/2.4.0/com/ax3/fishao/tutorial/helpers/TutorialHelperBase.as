package com.ax3.fishao.tutorial.helpers
{
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.locations.base.LocationDialog;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class TutorialHelperBase
   {
      
      public function TutorialHelperBase()
      {
         super();
         Listeners.addEventListener(this,GameSwf.globalDispatcher,GameResizeEvent.RESIZE,this.onGameResize);
      }
      
      public static function getConstantPoint(param1:Point) : Function
      {
         var size:Point = param1;
         var result:Function = function():Point
         {
            return size;
         };
         return result;
      }
      
      public static function getPointOnLocation(param1:Point, param2:Point = null) : Function
      {
         var result:Function = null;
         var location:LocationDialog = null;
         var point:Point = param1;
         var offset:Point = param2;
         location = null;
         location = null;
         if(offset == null)
         {
            offset = new Point(0,0);
         }
         result = function():Point
         {
            var _loc1_:Point = null;
            location = location || GameSwf.currentLocationDialog;
            if(location != null && location.locationLayersBase != null)
            {
               _loc1_ = location.locationLayersBase.localToGlobal(point).add(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      protected static function testPointFunction(param1:Function) : void
      {
         Debug.assert(param1 != null,"function can\'t be null");
         Debug.assert(param1() as Point != null,"function should return point value");
      }
      
      protected function onGameResize(param1:Event) : void
      {
      }
      
      protected function get location() : LocationDialog
      {
         return GameSwf.currentLocationDialog;
      }
      
      protected function get gui() : Gui
      {
         var _loc1_:Gui = null;
         if(this.location != null)
         {
            _loc1_ = this.location.gui;
         }
         return _loc1_;
      }
   }
}

