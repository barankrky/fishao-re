package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class FishaoBaseDialog extends FishaoBasePopup implements IBaseDialog
   {
      
      protected var _backGroundLayer:Sprite;
      
      protected var _content:Sprite = new Sprite();
      
      public function FishaoBaseDialog()
      {
         super();
         this._backGroundLayer = new Sprite();
         super.addChild(this._backGroundLayer);
         super.addChild(this._content);
      }
      
      protected function onCloseButtonClick(param1:Event) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_052_UI_Close_menu);
         close();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this._content.addChild(param1);
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / 2 - this.width / 2 + 0.5);
         this.y = int(param4 / 2 - this.height / 2 + 0.5);
      }
      
      public function get content() : Sprite
      {
         return this._content;
      }
   }
}

