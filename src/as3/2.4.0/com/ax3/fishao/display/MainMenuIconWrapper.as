package com.ax3.fishao.display
{
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.display.buttons.StandardBitmapButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class MainMenuIconWrapper extends StandardBitmapButton implements IAssetWrapper
   {
      
      private static var disableColorMatrix:ColorMatrix = new ColorMatrix([0.29140390000000005,0.643644,0.0649521,0,0.25,0.19140390000000002,0.743644,0.0649521,0,0.25,0.19140390000000002,0.643644,0.1649521,0,0.25,0,0,0,1,0]);
      
      public static var DISABLE_FILTERS:Array = [disableColorMatrix.filter];
      
      public static var NORMAL_FILTERS:Array = [];
      
      protected var _asset:DisplayObjectContainer;
      
      private var _icon:DisplayObject;
      
      private var _originIconY:Number;
      
      private var _originShadowY:Number;
      
      private const ICON_OVER_Y:Number = 3;
      
      private const SHADOW_OVER_Y:Number = 2;
      
      private var _shadow:DisplayObject;
      
      public function MainMenuIconWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._icon = this._asset.getChildByName("icon");
         this._shadow = this._asset.getChildAt(0);
         this._originIconY = this._icon.y;
         this._originShadowY = this._shadow.y;
         ShiftWrapper.shiftDisplayObject(this._asset,this);
         var _loc2_:StandardBitmapButtonConfiguration = new StandardBitmapButtonConfiguration();
         _loc2_.asset = this._asset;
         init(_loc2_,null);
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         TweenCube.destroyTweensOf(this._icon,true);
         TweenCube.destroyTweensOf(this._shadow,true);
         if(_state == ButtonState.OVER)
         {
            TweenCube.to(this._icon,0.05,{"y":this._originIconY - this.ICON_OVER_Y});
            TweenCube.to(this._shadow,0.05,{
               "y":this._originShadowY + this.SHADOW_OVER_Y,
               "alpha":0.75
            });
            filters = NORMAL_FILTERS;
         }
         else if(_state == ButtonState.NORMAL)
         {
            TweenCube.to(this._icon,0.1,{"y":this._originIconY});
            TweenCube.to(this._shadow,0.1,{
               "y":this._originShadowY,
               "alpha":1
            });
            filters = NORMAL_FILTERS;
         }
         else if(_state == ButtonState.DOWN)
         {
            TweenCube.to(this._icon,0.1,{"y":this._originIconY + this.ICON_OVER_Y});
            TweenCube.to(this._shadow,0.1,{
               "y":this._originShadowY,
               "alpha":1
            });
            filters = NORMAL_FILTERS;
         }
         else if(_state == ButtonState.DISABLED)
         {
            TweenCube.to(this._icon,0.1,{"y":this._originIconY});
            TweenCube.to(this._shadow,0.1,{
               "y":this._originShadowY,
               "alpha":1
            });
            filters = DISABLE_FILTERS;
         }
      }
      
      override protected function playClickSound() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
   }
}

