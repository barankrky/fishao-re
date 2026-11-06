package com.ax3.fishao.display.panels
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.view.wrappers.CustomSoundButtonWrapper;
   import flash.display.MovieClip;
   
   public class EditorPanelWrapper
   {
      
      private var mc:MovieClip;
      
      public var counterclockwise:CustomSoundButtonWrapper;
      
      public var clockwise:CustomSoundButtonWrapper;
      
      public var confirmPlacing:CustomSoundButtonWrapper;
      
      public var removeItem:CustomSoundButtonWrapper;
      
      public function EditorPanelWrapper()
      {
         super();
      }
      
      public function init(param1:MovieClip) : void
      {
         this.mc = param1;
         param1.mouseEnabled = false;
         param1.mouseChildren = true;
         this.clockwise = new CustomSoundButtonWrapper();
         this.clockwise.process(param1.getChildByName("rotateClockwise"));
         this.counterclockwise = new CustomSoundButtonWrapper();
         this.counterclockwise.process(param1.getChildByName("rotateCounterClockwise"));
         this.confirmPlacing = new CustomSoundButtonWrapper();
         this.confirmPlacing.process(param1.getChildByName("confirmPlacing"));
         this.confirmPlacing.customClickSound = FishaoSoundManager.SFX_050_UI_Select_item;
         this.removeItem = new CustomSoundButtonWrapper();
         this.removeItem.process(param1.getChildByName("closeFurniture"));
         this.removeItem.customClickSound = FishaoSoundManager.SFX_050_UI_Select_item;
      }
      
      public function show() : void
      {
         this.mc.visible = true;
      }
      
      public function hide() : void
      {
         this.mc.visible = false;
      }
      
      public function moveTo(param1:int, param2:int) : void
      {
         this.mc.x = param1;
         this.mc.y = param2;
      }
      
      public function get width() : Number
      {
         return this.mc.width;
      }
      
      public function get height() : Number
      {
         return this.mc.height;
      }
   }
}

