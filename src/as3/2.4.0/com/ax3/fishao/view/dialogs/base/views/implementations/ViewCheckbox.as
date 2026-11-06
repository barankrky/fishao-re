package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.control.managers.GlobalSoundHandlers;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ViewCheckbox extends ViewBase
   {
      
      private var _isChecked:Boolean;
      
      private var _isMouseDownInside:Boolean;
      
      private var _source:MovieClip;
      
      private var _autocheck:Boolean;
      
      public function ViewCheckbox(param1:IController, param2:MovieClip)
      {
         super(param1,param2);
         this._source = param2;
         Debug.assertEqual(param2.totalFrames,2);
         this.init();
      }
      
      public function set autocheck(param1:Boolean) : void
      {
         if(this._autocheck == param1)
         {
            return;
         }
         this._autocheck = param1;
      }
      
      public function get isChecked() : Boolean
      {
         return this._isChecked;
      }
      
      public function set isChecked(param1:Boolean) : void
      {
         if(this._isChecked == param1)
         {
            return;
         }
         this._isChecked = param1;
         if(this._isChecked)
         {
            this.select();
         }
         else
         {
            this.deselect();
         }
      }
      
      private function init() : void
      {
         this.isChecked = true;
         this._source.buttonMode = true;
         this.handleEvents(true,false,true,true,true);
      }
      
      private function select() : void
      {
         this._source.gotoAndStop(1);
      }
      
      private function deselect() : void
      {
         this._source.gotoAndStop(2);
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         if(this._autocheck)
         {
            this.isChecked = !this.isChecked;
         }
         GlobalSoundHandlers.globalSelectItemCallback();
         super.onMouseClick(param1);
      }
      
      override protected function onMouseUpOver(param1:MouseEvent) : void
      {
         if(this._isMouseDownInside && this._autocheck)
         {
            this.isChecked = !this.isChecked;
         }
         this._isMouseDownInside = false;
         super.onMouseUpOver(param1);
      }
      
      override protected function onMouseUpOut(param1:Event) : void
      {
         this._isMouseDownInside = false;
         if(this._autocheck)
         {
            if(this._isChecked)
            {
               this.select();
            }
            else
            {
               this.deselect();
            }
         }
         super.onMouseUpOut(param1);
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         this._isMouseDownInside = true;
         if(this._autocheck)
         {
            if(!this._isChecked)
            {
               this.select();
            }
            else
            {
               this.deselect();
            }
         }
         super.onMouseDown(param1);
      }
   }
}

