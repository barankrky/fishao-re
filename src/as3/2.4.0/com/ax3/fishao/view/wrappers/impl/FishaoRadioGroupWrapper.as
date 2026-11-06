package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   
   public class FishaoRadioGroupWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _changeHandler:Function;
      
      private var _list:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _labels:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _currentSelected:int = -1;
      
      public function FishaoRadioGroupWrapper()
      {
         super();
      }
      
      public function setGroup(param1:Vector.<MovieClip>, param2:Vector.<TextField> = null) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         _loc3_ = null;
         _loc4_ = 0;
         this._list = param1;
         if(this._list != null)
         {
            _loc4_ = 0;
            while(_loc4_ < this._list.length)
            {
               this._list[_loc4_].addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
               this._list[_loc4_].gotoAndStop("unselected");
               this._list[_loc4_].mouseChildren = false;
               this._list[_loc4_].buttonMode = true;
               if(param2 != null && param2.length > _loc4_ && param2[_loc4_] != null)
               {
                  _loc3_ = new MovieClip();
                  if(param2[_loc4_].type != TextFieldType.INPUT)
                  {
                     _loc3_.buttonMode = true;
                     _loc3_.mouseChildren = false;
                     _loc3_.addEventListener(MouseEvent.ROLL_OVER,this.onLabelRollOver);
                  }
                  else
                  {
                     param2[_loc4_].addEventListener(MouseEvent.CLICK,this.onInputFieldClick);
                  }
                  param2[_loc4_].parent.addChild(_loc3_);
                  _loc3_.x = param2[_loc4_].x;
                  _loc3_.y = param2[_loc4_].y;
                  _loc3_.addChild(param2[_loc4_]);
                  param2[_loc4_].x = 0;
                  param2[_loc4_].y = 0;
                  param2[_loc4_].height = param2[_loc4_].textHeight + 3;
                  this._labels[_loc4_] = _loc3_;
               }
               _loc4_++;
            }
         }
      }
      
      private function onInputFieldClick(param1:MouseEvent) : void
      {
         this.selected = this._labels.indexOf(TextField(param1.target).parent);
      }
      
      public function set changeHandler(param1:Function) : void
      {
         this._changeHandler = param1;
      }
      
      public function get selected() : int
      {
         return this._currentSelected;
      }
      
      public function set selected(param1:int) : void
      {
         this._currentSelected = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this._list.length)
         {
            if(_loc2_ == this._currentSelected)
            {
               this._list[_loc2_].gotoAndStop("selected");
            }
            else
            {
               this._list[_loc2_].gotoAndStop("unselected");
            }
            _loc2_++;
         }
         if(this._changeHandler != null)
         {
            this._changeHandler(null);
         }
      }
      
      private function onLabelRollOver(param1:MouseEvent) : void
      {
         param1.target.removeEventListener(MouseEvent.ROLL_OVER,this.onLabelRollOver);
         param1.target.addEventListener(MouseEvent.ROLL_OUT,this.onLabelRollOut);
         param1.target.addEventListener(MouseEvent.CLICK,this.onLabelClick);
      }
      
      private function onLabelRollOut(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.ROLL_OVER,this.onLabelRollOver);
         param1.target.removeEventListener(MouseEvent.ROLL_OUT,this.onLabelRollOut);
         param1.target.removeEventListener(MouseEvent.CLICK,this.onLabelClick);
      }
      
      private function onLabelClick(param1:MouseEvent) : void
      {
         this.selected = this._labels.indexOf(param1.target);
      }
      
      private function onRollOver(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop((param1.target as MovieClip).currentFrame + 1);
         (param1.target as MovieClip).removeEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         (param1.target as MovieClip).addEventListener(MouseEvent.CLICK,this.onClick);
         (param1.target as MovieClip).addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
      }
      
      private function onRollOut(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop((param1.target as MovieClip).currentFrame - 1);
         (param1.target as MovieClip).addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         (param1.target as MovieClip).removeEventListener(MouseEvent.CLICK,this.onClick);
         (param1.target as MovieClip).removeEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._list.length)
         {
            if(param1.target == this._list[_loc2_])
            {
               this._list[_loc2_].gotoAndStop("selected_over");
               this._currentSelected = _loc2_;
            }
            else
            {
               this._list[_loc2_].gotoAndStop("unselected");
            }
            _loc2_++;
         }
         if(this._changeHandler != null)
         {
            this._changeHandler(param1);
         }
      }
   }
}

