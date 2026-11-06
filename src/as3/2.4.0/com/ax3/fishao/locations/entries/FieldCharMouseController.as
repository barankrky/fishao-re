package com.ax3.fishao.locations.entries
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.locations.chars.CharViewport;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class FieldCharMouseController
   {
      
      private var _charContainer:DisplayObjectContainer;
      
      private var _fieldChar:FieldChar;
      
      private var _charViewport:CharViewport;
      
      public function FieldCharMouseController(param1:FieldChar)
      {
         super();
         this._fieldChar = param1;
         this._charViewport = this._fieldChar.charViewport;
         Listeners.addEventListener(this,this._charViewport,Event.ADDED,this.addInContainer);
         this.addInContainer();
      }
      
      private function addInContainer(param1:Event = null) : void
      {
         if(this._charViewport.parent)
         {
            this.charContainer = this._charViewport.parent;
         }
      }
      
      private function set charContainer(param1:DisplayObjectContainer) : void
      {
         if(this._charContainer)
         {
            Listeners.removeEventListener(this,this._charContainer,MouseEvent.CLICK,this.onMouseClick);
            Listeners.removeEventListener(this,this._charContainer,MouseEvent.ROLL_OVER,this.onRollOver);
            Listeners.removeEventListener(this,this._charContainer,MouseEvent.ROLL_OUT,this.onRollOut);
         }
         this._charContainer = param1;
         Listeners.addEventListener(this,this._charContainer,MouseEvent.CLICK,this.onMouseClick);
         Listeners.addEventListener(this,this._charContainer,MouseEvent.ROLL_OVER,this.onRollOver);
         Listeners.addEventListener(this,this._charContainer,MouseEvent.ROLL_OUT,this.onRollOut);
      }
      
      private function onRollOver(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.BUTTON;
      }
      
      private function onRollOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         if(this._fieldChar != null)
         {
            _loc2_ = this._fieldChar.tryOpenUserPopup();
         }
         if(_loc2_)
         {
            param1.stopImmediatePropagation();
         }
      }
      
      public function destroy() : void
      {
         this._fieldChar = null;
         this._charContainer = null;
         this._charViewport = null;
         Listeners.removeEventListener(this,this._charContainer,MouseEvent.CLICK,this.onMouseClick);
         Listeners.removeEventListener(this,this._charContainer,MouseEvent.ROLL_OVER,this.onRollOver);
         Listeners.removeEventListener(this,this._charContainer,MouseEvent.ROLL_OUT,this.onRollOut);
         Listeners.destroyAllSubscriptions(this);
      }
   }
}

