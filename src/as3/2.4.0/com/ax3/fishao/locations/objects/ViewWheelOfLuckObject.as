package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ViewWheelOfLuckObject
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      private var _handlerArea:Sprite;
      
      public function ViewWheelOfLuckObject(param1:DisplayObjectContainer)
      {
         super();
         this._source = param1;
         this.init();
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._managerWheelOfFortune.getInfo();
      }
      
      private function init() : void
      {
         this._managerWheelOfFortune = GameSwf.instance.managerWheelOfFortune;
         this._source.mouseEnabled = true;
         this._source.mouseChildren = true;
         this._handlerArea = Debug.assertProperty(this._source,"$handler_area");
         this._handlerArea.alpha = 0;
         this._handlerArea.buttonMode = true;
         this._handlerArea.mouseEnabled = true;
         this._handlerArea.addEventListener(MouseEvent.CLICK,this.onMouseClick,false,0,true);
      }
      
      public function cleanup() : void
      {
         this._handlerArea.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._managerWheelOfFortune = null;
      }
   }
}

