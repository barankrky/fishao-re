package com.ax3.fishao.view.dialogs.collections.views
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.info.RewardItem;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class ViewCollection extends ViewBase
   {
      
      private static var FILTER_NOT_COMPLETED:ColorMatrixFilter = UtilsColor.getFilter(-256);
      
      private var _source:gViewCollection = new gViewCollection();
      
      private var _rewardImage:ScaledBitmap;
      
      private var _rewardImagePlaceholder:ToolTipTargetMovieClip;
      
      private var _reward:RewardItem;
      
      private var _items:Array;
      
      private var _buttonNext:FrameButtonWrapper;
      
      private var _buttonPrev:FrameButtonWrapper;
      
      public function ViewCollection(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._buttonNext;
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._buttonPrev;
      }
      
      public function get itemsOnPage() : int
      {
         return 4;
      }
      
      public function get items() : Array
      {
         return this._items;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:IView = null;
         this._items = param1;
         var _loc3_:Number = 60;
         var _loc4_:Number = 100;
         var _loc5_:Number = _loc3_;
         var _loc6_:Number = 40;
         var _loc7_:uint = 0;
         for each(_loc2_ in this._items)
         {
            this._source.addChild(_loc2_.source);
            _loc2_.source.x = _loc5_;
            _loc2_.source.y = _loc6_;
            _loc5_ += _loc4_;
            _loc7_++;
            if(_loc7_ == this.itemsOnPage)
            {
               _loc7_ = 0;
               _loc5_ = _loc3_;
            }
         }
         UtilsDisplayObject.toFront(this._source.viewLock);
      }
      
      public function set reward(param1:RewardItem) : void
      {
         this._reward = param1;
         var _loc2_:String = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.findById(param1.resourceType).name,param1.resourceId));
         this._rewardImage = new ScaledBitmap(null);
         this._rewardImage.width = this._source.viewImageReward.width;
         this._rewardImage.height = this._source.viewImageReward.height;
         app.resourceManager.replaceBitmapDataFromURL(this._rewardImage,_loc2_);
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._source.viewLock.visible = param1;
      }
      
      public function set lockMessage(param1:String) : void
      {
         this._source.viewLock.label.text = param1;
      }
      
      public function set collectionId(param1:int) : void
      {
         this._source.labelTitle.text = I18n.get("collection_title_" + param1);
      }
      
      public function setProgress(param1:int, param2:int) : void
      {
         this._source.labelProgress.text = param1 + "/" + param2;
      }
      
      public function set isComplete(param1:Boolean) : void
      {
         var _loc2_:String = "";
         var _loc3_:String = "";
         switch(this._reward.resourceType)
         {
            case ResourceType.BADGE.id:
               _loc3_ = I18n.get("collection_badge_" + this._reward.resourceId);
               _loc2_ = I18n.get(param1 ? EStringType.EST_DIALOG_COLLECTIONS_LABEL_REWARD_RECEIVED : EStringType.EST_DIALOG_COLLECTIONS_LABEL_REWARD_NOT_RECEIVED);
               break;
            case ResourceType.FISH.id:
               _loc3_ = I18n.get(param1 ? EStringType.EST_DIALOG_COLLECTIONS_TOOLTIP_REWARD_FISH_UNLOCKED : EStringType.EST_DIALOG_COLLECTIONS_TOOLTIP_REWARD_FISH_LOCKED);
               _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_FISH,I18n.getFishName(this._reward.resourceId));
               _loc2_ = I18n.get(param1 ? EStringType.EST_DIALOG_COLLECTIONS_LABEL_REWARD_FISH_UNLOCKED : EStringType.EST_DIALOG_COLLECTIONS_LABEL_REWARD_FISH_LOCKED);
               break;
            default:
               Debug.assert(false,"Unsupported resource type as collection reward");
         }
         this._rewardImage.filters = this.getImageFilters(param1);
         this._rewardImagePlaceholder.addChild(this._rewardImage);
         this._rewardImagePlaceholder.tooltipConfig = {"text":_loc3_};
         this._source.labelReward.text = _loc2_;
      }
      
      private function init() : void
      {
         this._items = [];
         this._rewardImagePlaceholder = new ToolTipTargetMovieClip();
         ShiftWrapper.shiftDisplayObject(this._source.viewImageReward,this._rewardImagePlaceholder);
         this._buttonNext = new FrameButtonWrapper();
         this._buttonNext.process(Debug.assertProperty(this._source,"buttonNext",DisplayObjectContainer));
         this._buttonNext.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonNext,param1);
         };
         this._buttonPrev = new FrameButtonWrapper();
         this._buttonPrev.process(Debug.assertProperty(this._source,"buttonPrev",DisplayObjectContainer));
         this._buttonPrev.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPrev,param1);
         };
      }
      
      private function getImageFilters(param1:Boolean) : Array
      {
         var _loc2_:Array = [];
         if(!param1)
         {
            switch(this._reward.resourceType)
            {
               case ResourceType.FISH.id:
                  _loc2_ = [FILTER_NOT_COMPLETED];
            }
         }
         return _loc2_;
      }
      
      override public function cleanup() : void
      {
         this._buttonNext.handler = null;
         this._buttonPrev.handler = null;
         super.cleanup();
      }
   }
}

