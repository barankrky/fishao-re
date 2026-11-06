package com.ax3.fishao.locations.privateHouse
{
   import com.ax3.fishao.debug.Debug;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ViewMoneyTree
   {
      
      private var _source:DisplayObject;
      
      private var _viewLeaves:MovieClip;
      
      private var _viewShadow:MovieClip;
      
      private var _viewTrunk:MovieClip;
      
      private var _isEnabled:Boolean;
      
      public function ViewMoneyTree(param1:DisplayObject)
      {
         super();
         this._source = Debug.assertNotEqual(param1,null);
         this._viewLeaves = Debug.assertProperty(this._source,"viewLeaves",MovieClip);
         this._viewShadow = Debug.assertProperty(this._source,"viewShadow",MovieClip);
         this._viewTrunk = Debug.assertProperty(this._source,"viewTrunk",MovieClip);
         this.level = 1;
         this.init();
      }
      
      public function get source() : DisplayObject
      {
         return this._source;
      }
      
      public function set level(param1:uint) : void
      {
         this._viewTrunk.gotoAndStop(param1);
         this._viewShadow.gotoAndStop(param1);
         this._viewLeaves.gotoAndStop(param1);
      }
      
      public function get viewLeaves() : DisplayObject
      {
         return this._viewLeaves;
      }
      
      public function get viewShadow() : DisplayObject
      {
         return this._viewShadow;
      }
      
      public function get viewTrunk() : DisplayObject
      {
         return this._viewTrunk;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         if(param1 == this._isEnabled)
         {
            return;
         }
         this._isEnabled = param1;
         this._viewLeaves.buttonMode = this._isEnabled;
         this._viewTrunk.buttonMode = this._isEnabled;
      }
      
      private function onMouseClick(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!this._isEnabled)
         {
            return;
         }
         GameSwf.currentLocationDialog.showMoneyTreeDialog();
      }
      
      private function init() : void
      {
         this._viewLeaves.addEventListener(MouseEvent.CLICK,this.onMouseClick,false,0,true);
         this._viewLeaves.stop();
         this._viewShadow.stop();
         this._viewShadow.mouseEnabled = false;
         this._viewShadow.mouseChildren = false;
         this._viewTrunk.addEventListener(MouseEvent.CLICK,this.onMouseClick,false,0,true);
         this._viewTrunk.stop();
      }
      
      public function show() : void
      {
         this._viewTrunk.visible = true;
         this._viewShadow.visible = true;
         this._viewLeaves.visible = true;
      }
      
      public function hide() : void
      {
         this._viewTrunk.visible = false;
         this._viewShadow.visible = false;
         this._viewLeaves.visible = false;
      }
      
      public function cleanup() : void
      {
         this._viewTrunk.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._viewLeaves.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
   }
}

