package com.ax3.display.wrappers.impl
{
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.view.buttons.ShopSelectingColor;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ShopColorButtonMediator
   {
      
      private const COLOR_BUTTON_GAP:int = 5;
      
      private var _startButton:MovieClip;
      
      private var _container:DisplayObjectContainer;
      
      private var _colorButtons:Vector.<ShopSelectingColor>;
      
      private var _selectedColor:ShopSelectingColor = null;
      
      private var _targetImage:Sprite;
      
      private var _itemId:int;
      
      public function ShopColorButtonMediator(param1:MovieClip, param2:DisplayObjectContainer, param3:int)
      {
         super();
         this._startButton = param1;
         this._container = param2;
         this._itemId = param3;
         this._colorButtons = new Vector.<ShopSelectingColor>();
      }
      
      public function showColors(param1:Vector.<ShopItemColor>) : void
      {
         var _loc2_:ShopSelectingColor = null;
         var _loc3_:ShopItemColor = null;
         var _loc4_:Number = NaN;
         var _loc5_:ShopSelectingColor = null;
         for each(_loc2_ in this._colorButtons)
         {
            if(_loc2_.parent != null)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
            _loc2_.removeEventListener(MouseEvent.CLICK,this.onColorClick);
         }
         this._colorButtons = new Vector.<ShopSelectingColor>();
         for each(_loc3_ in param1)
         {
            _loc4_ = param1.indexOf(_loc3_);
            _loc5_ = new ShopSelectingColor(_loc3_,_loc4_);
            this._colorButtons.push(_loc5_);
            _loc5_.x = this._startButton.x + _loc4_ * (_loc5_.width + this.COLOR_BUTTON_GAP);
            _loc5_.y = this._startButton.y;
            _loc5_.addEventListener(MouseEvent.CLICK,this.onColorClick,false,0,true);
            this._container.addChild(_loc5_);
            if(this._selectedColor == null)
            {
               this.selectColor(_loc5_);
            }
         }
      }
      
      private function onColorClick(param1:MouseEvent) : void
      {
         if(param1.currentTarget is ShopSelectingColor)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
            this.selectColor(ShopSelectingColor(param1.currentTarget));
         }
      }
      
      private function selectColor(param1:ShopSelectingColor) : void
      {
         if(this._selectedColor != null)
         {
            ShopSelectingColor.clearBackground(this._selectedColor);
         }
         this._selectedColor = param1;
         ShopSelectingColor.showBackground(this._selectedColor);
         this.updateGivenTargetColor();
      }
      
      public function get selectedColor() : ShopItemColor
      {
         return this._selectedColor.shopItemColor;
      }
      
      public function affectColorTo(param1:Sprite) : void
      {
         this._targetImage = param1;
         this.updateGivenTargetColor();
      }
      
      private function updateGivenTargetColor() : void
      {
         var _loc1_:Array = null;
         if(this._targetImage != null)
         {
            _loc1_ = RodColorFilter.getShowColorFilters(this._itemId,this._selectedColor.shopItemColor);
            this._targetImage.filters = _loc1_;
         }
      }
   }
}

