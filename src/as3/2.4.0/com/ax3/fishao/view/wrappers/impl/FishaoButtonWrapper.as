package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class FishaoButtonWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      public var data:Object;
      
      protected var _button:*;
      
      protected var _buttonCls:Class = FishaoBaseButton;
      
      protected var fishBucks_icon:MovieClip;
      
      protected var fishCoins_icon:MovieClip;
      
      protected var hasCurrnsyIcons:Boolean = false;
      
      public function FishaoButtonWrapper()
      {
         super();
         this._buttonCls = FishaoBaseButton;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         _child.x = 0;
         _child.y = 0;
         if(_child is MovieClip && MovieClip(_child).totalFrames > 1)
         {
            MovieClip(_child).gotoAndStop(1);
         }
         var _loc2_:StandardBitmapButtonConfiguration = new StandardBitmapButtonConfiguration();
         _loc2_.asset = _child;
         if(_child is DisplayObjectContainer)
         {
            if(DisplayObjectContainer(_child).getChildByName("label"))
            {
               _loc2_.labelField = TextField(DisplayObjectContainer(_child).getChildByName("label"));
            }
            if(DisplayObjectContainer(_child).getChildByName("fishbucks_icon") != null && DisplayObjectContainer(_child).getChildByName("fishcoins_icon") != null)
            {
               this.fishBucks_icon = MovieClip(DisplayObjectContainer(_child).getChildByName("fishbucks_icon"));
               this.fishCoins_icon = MovieClip(DisplayObjectContainer(_child).getChildByName("fishcoins_icon"));
               this.hasCurrnsyIcons = true;
            }
         }
         this._button = new this._buttonCls(_loc2_,null);
         addChild(this._button);
      }
      
      public function set handler(param1:Function) : void
      {
         this._button.handler = param1;
      }
      
      public function showFishCoinsIcon() : void
      {
         this.fishBucks_icon.visible = false;
         this.fishCoins_icon.visible = true;
      }
      
      public function showFishBucksIcon() : void
      {
         this.fishBucks_icon.visible = true;
         this.fishCoins_icon.visible = false;
      }
      
      public function disable() : void
      {
         this._button.disable();
      }
      
      public function enable() : void
      {
         this._button.enable();
      }
      
      public function enabled() : Boolean
      {
         return this._button.enabled;
      }
      
      public function remove() : void
      {
         removeChild(this._button);
      }
      
      public function setFiltersForState(param1:ButtonState, param2:Array) : void
      {
         this._button.setFiltersForState(param1,param2);
      }
      
      public function set label(param1:String) : void
      {
         this._button.label = param1;
      }
      
      public function get label() : String
      {
         return this._button.label;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._button.addEventListener(param1,param2,param3,param4,param5);
      }
   }
}

