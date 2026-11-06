package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class FishaoCheckboxWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _button:FishaoBaseButton;
      
      private var _changeHandler:Function;
      
      private var _state:CheckBoxState = null;
      
      public function FishaoCheckboxWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         buttonMode = true;
         mouseChildren = false;
         this.state = CheckBoxState.UNSELECTED;
         addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.onClick);
      }
      
      public function set state(param1:CheckBoxState) : void
      {
         if(this._state != param1)
         {
            this._state = param1;
            this.updateGivenState();
         }
      }
      
      private function updateGivenState() : void
      {
         (_child as MovieClip).gotoAndStop(this._state.name);
      }
      
      public function set changeHandler(param1:Function) : void
      {
         this._changeHandler = param1;
      }
      
      private function onRollOver(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         if(this._state.isEnabled)
         {
            if(this._state.isSelected)
            {
               this.state = CheckBoxState.SELECTED_OVER;
            }
            else
            {
               this.state = CheckBoxState.UNSELECTED_OVER;
            }
         }
      }
      
      private function onRollOut(param1:MouseEvent) : void
      {
         if(this._state.isEnabled)
         {
            if(this._state.isSelected)
            {
               this.state = CheckBoxState.SELECTED;
            }
            else
            {
               this.state = CheckBoxState.UNSELECTED;
            }
         }
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this._state.isEnabled)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
            if(this._state.isSelected)
            {
               this.state = CheckBoxState.UNSELECTED_OVER;
            }
            else
            {
               this.state = CheckBoxState.SELECTED_OVER;
            }
            if(this._changeHandler != null)
            {
               this._changeHandler(param1);
            }
         }
      }
      
      public function get isSelected() : Boolean
      {
         return this._state.isSelected;
      }
      
      public function get isEnabled() : Boolean
      {
         return this._state.isEnabled;
      }
   }
}

