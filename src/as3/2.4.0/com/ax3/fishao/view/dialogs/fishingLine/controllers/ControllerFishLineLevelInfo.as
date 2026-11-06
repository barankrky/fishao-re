package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao.core.IDisposable;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.fishingLine.model.ManagerFishingLine;
   import com.ax3.fishao.view.dialogs.fishingLine.views.ViewLineLevelInfo;
   import flash.display.DisplayObjectContainer;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class ControllerFishLineLevelInfo extends Controller
   {
      
      private var _view:ViewLineLevelInfo;
      
      private var _entity:FishingLineLevelInfo;
      
      private var _managerFishingLine:ManagerFishingLine;
      
      private var _enableColorSelection:Boolean;
      
      private var _items:Array;
      
      public function ControllerFishLineLevelInfo(param1:DisplayObjectContainer, param2:Boolean)
      {
         this._view = new ViewLineLevelInfo(this,param1);
         super(this._view);
         this._enableColorSelection = param2;
         this.init();
      }
      
      public function set entity(param1:FishingLineLevelInfo) : void
      {
         var _loc2_:String = null;
         var _loc3_:ControllerButtonColor = null;
         this.cleanupItems();
         this._entity = Debug.assertNotEqual(param1,null);
         this._view.fishLength = this._entity.lineLength;
         this._view.percentLineMax = this._entity.lineLength / this._managerFishingLine.levelInfoMaxFishingLine.lineLength * 100;
         this._items = [];
         var _loc4_:Array = [];
         for each(_loc2_ in this._entity.availableColors)
         {
            _loc3_ = new ControllerButtonColor(_loc2_);
            _loc3_.enableSelection = this._enableColorSelection;
            this._items.push(_loc3_);
            _loc4_.push(_loc3_.view);
         }
         this._view.items = _loc4_;
         this._view.placeViews(false);
      }
      
      private function init() : void
      {
         this._managerFishingLine = GameSwf.instance.managerFishingLine;
         this._items = [];
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:IController = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FISHING_LINE_COLOR:
               for each(_loc2_ in this._items)
               {
                  _loc2_.update(param1);
               }
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function cleanupItems() : void
      {
         var _loc1_:IDisposable = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
         }
         this._items = null;
      }
      
      override public function cleanup() : void
      {
         this.cleanupItems();
         super.cleanup();
      }
   }
}

