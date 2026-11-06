package com.ax3.fishao.display.boosters
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ViewBoosters extends ViewBase
   {
      
      private var _source:DisplayObjectContainer = new Sprite();
      
      private var _buttonShinyPotion:ViewButtonBooster;
      
      private var _buttonLuckPotion:ViewButtonBooster;
      
      private var _buttonRadar:ViewButtonBooster;
      
      private var _buttonMagicWatch:ViewButtonBooster;
      
      private var _buttonExp:ViewButtonBooster;
      
      private var _buttonPower:ViewButtonBooster;
      
      public function ViewBoosters(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonShinyPotion() : ViewButtonBooster
      {
         return this._buttonShinyPotion;
      }
      
      public function get buttonLuckPotion() : ViewButtonBooster
      {
         return this._buttonLuckPotion;
      }
      
      public function get buttonRadar() : ViewButtonBooster
      {
         return this._buttonRadar;
      }
      
      public function get buttonExp() : ViewButtonBooster
      {
         return this._buttonExp;
      }
      
      public function get buttonMagicWatch() : ViewButtonBooster
      {
         return this._buttonMagicWatch;
      }
      
      public function get buttonPower() : ViewButtonBooster
      {
         return this._buttonPower;
      }
      
      private function init() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = 40;
         var _loc2_:Number = 43;
         this._buttonShinyPotion = new ViewButtonBooster(controller,ResourceType.SHINY_POTION.id);
         this._source.addChild(this._buttonShinyPotion.source);
         this._buttonLuckPotion = new ViewButtonBooster(controller,ResourceType.LUCK_POTION.id);
         this._source.addChild(this._buttonLuckPotion.source);
         this._buttonLuckPotion.source.x = this._buttonShinyPotion.source.x + _loc1_;
         this._buttonRadar = new ViewButtonBooster(controller,ResourceType.FISH_RADAR.id);
         this._source.addChild(this._buttonRadar.source);
         this._buttonRadar.source.x = this._buttonLuckPotion.source.x + _loc1_;
         this._buttonMagicWatch = new ViewButtonBooster(controller,ResourceType.MAGIC_WATCH.id);
         this._source.addChild(this._buttonMagicWatch.source);
         this._buttonMagicWatch.source.x = this._buttonRadar.source.x + _loc1_;
         this._buttonExp = new ViewButtonBooster(controller,ResourceType.EXP_BOOSTER.id);
         this._source.addChild(this._buttonExp.source);
         this._buttonExp.source.x = this._buttonMagicWatch.source.x + _loc1_;
         this._buttonPower = new ViewButtonBooster(controller,ResourceType.POWER_BOOSTER.id);
         this._source.addChild(this._buttonPower.source);
         this._buttonPower.source.x = this._buttonExp.source.x;
         this._buttonPower.source.y = this._buttonExp.source.y + _loc2_;
      }
   }
}

