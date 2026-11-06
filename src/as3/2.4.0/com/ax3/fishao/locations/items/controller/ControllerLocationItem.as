package com.ax3.fishao.locations.items.controller
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.items.model.LocationItem;
   import com.ax3.fishao.locations.items.view.ViewFishbucks;
   import com.ax3.fishao.locations.items.view.ViewFishcoin;
   import com.ax3.fishao.locations.items.view.ViewFossil;
   import com.ax3.fishao.locations.items.view.ViewFruit;
   import com.ax3.fishao.locations.items.view.ViewItem;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.utils.sound.SoundFile;
   
   public class ControllerLocationItem extends Controller
   {
      
      private var _view:ViewItem = this.getLocationItemView();
      
      private var _entity:LocationItem;
      
      private var _isCollectable:Boolean;
      
      public function ControllerLocationItem(param1:LocationItem)
      {
         this._entity = param1;
         super(this._view);
         this.init();
      }
      
      public function get entity() : LocationItem
      {
         return this._entity;
      }
      
      public function get isCollectable() : Boolean
      {
         return this._isCollectable;
      }
      
      public function set isCollectable(param1:Boolean) : void
      {
         this._isCollectable = param1;
      }
      
      private function init() : void
      {
         this._isCollectable = true;
         this._view.source.x = this._entity.position.x;
         this._view.source.y = this._entity.position.y;
      }
      
      private function getLocationItemView() : ViewItem
      {
         var _loc1_:ViewItem = null;
         switch(this._entity.resourceType)
         {
            case ResourceType.FISHBUCKS.id:
               _loc1_ = new ViewFishbucks(this);
               break;
            case ResourceType.FISHCOINS.id:
               _loc1_ = new ViewFishcoin(this);
               break;
            case ResourceType.FOSSIL.id:
               _loc1_ = new ViewFossil(this);
               break;
            case ResourceType.FRUIT.id:
               _loc1_ = new ViewFruit(this,this._entity.resourceId);
               break;
            default:
               Debug.assert(false,"Unsupported locationItem resource type view : " + this._entity.resourceType);
         }
         return _loc1_;
      }
      
      public function tryPlaySoundCollect() : void
      {
         var _loc1_:SoundFile = null;
         switch(this._entity.resourceType)
         {
            case ResourceType.FISHBUCKS.id:
            case ResourceType.FISHCOINS.id:
               _loc1_ = FishaoSoundManager.SFX_060_UI_Fish_coin;
               break;
            case ResourceType.FOSSIL.id:
               _loc1_ = FishaoSoundManager.SFX_075_UI_Fossil_collect;
               break;
            case ResourceType.FRUIT.id:
               _loc1_ = FishaoSoundManager.SFX_074_UI_Fruit_collect;
         }
         if(_loc1_ != null)
         {
            FishaoSoundManager.play(_loc1_);
         }
      }
   }
}

