package com.ax3.fishao.tutorial.helpers
{
   import com.ax3.fishao.view.dialogs.PopupManager;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class TutorialHelperArrow extends TutorialHelperBase
   {
      
      private var _tutorialArrow:gViewTurorialArrow;
      
      private var _functionGetPosition:Function;
      
      public function TutorialHelperArrow()
      {
         super();
         this.init();
      }
      
      public static function getArrowPositionFor(param1:DisplayObject, param2:Point = null) : Function
      {
         var result:Function = null;
         var view:DisplayObject = param1;
         var offset:Point = param2;
         if(offset == null)
         {
            offset = new Point(0,0);
         }
         result = function():Point
         {
            return view.localToGlobal(offset);
         };
         return result;
      }
      
      override protected function onGameResize(param1:Event) : void
      {
         this.updateArrow();
      }
      
      private function init() : void
      {
         this._tutorialArrow = new gViewTurorialArrow();
      }
      
      public function updateArrow() : void
      {
         if(this._tutorialArrow.parent == null)
         {
            return;
         }
         var _loc1_:Point = this._functionGetPosition() as Point;
         if(_loc1_ != null)
         {
            this._tutorialArrow.x = _loc1_.x;
            this._tutorialArrow.y = _loc1_.y;
         }
      }
      
      public function showTutorialArrow(param1:Function, param2:Number) : void
      {
         testPointFunction(param1);
         this.tryHideTutorialArrow();
         this._functionGetPosition = param1;
         this._tutorialArrow.rotation = param2;
         PopupManager.TUTORIAL_LAYER.addChild(this._tutorialArrow);
         this.onGameResize(null);
      }
      
      public function tryHideTutorialArrow() : void
      {
         if(this._tutorialArrow.parent != null)
         {
            this._tutorialArrow.parent.removeChild(this._tutorialArrow);
         }
         this._functionGetPosition = null;
      }
   }
}

