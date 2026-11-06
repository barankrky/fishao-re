package com.ax3.fishao.view.dialogs.fishingLine.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewProgress;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.fishingLine.controllers.ControllerFishLineLevelInfo;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewLineLevelInfo extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelFishLengthValue:TextField;
      
      private var _viewProgress:ViewProgress;
      
      private var _items:Array;
      
      public function ViewLineLevelInfo(param1:ControllerFishLineLevelInfo, param2:DisplayObjectContainer)
      {
         this._source = Debug.assertNotEqual(param2,null);
         super(param1,this._source);
         this.init();
      }
      
      public function set fishLength(param1:uint) : void
      {
         this._labelFishLengthValue.text = I18n.formatDistance(param1);
      }
      
      public function set percentLineMax(param1:Number) : void
      {
         this._viewProgress.percent = param1;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:IView = null;
         if(this._items == param1)
         {
            return;
         }
         this.removeItems();
         this._items = param1;
         for each(_loc2_ in this._items)
         {
            this._source.addChild(_loc2_.source);
         }
      }
      
      private function init() : void
      {
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelFishLength",TextField);
         _loc1_.text = I18n.get(EStringType.EST_DIALOG_FISHING_LINE_LEVEL_INFO_LINE_LENGTH);
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelColors",TextField);
         _loc2_.text = I18n.get(EStringType.EST_DIALOG_FISHING_LINE_LEVEL_INFO_COLORS);
         this._labelFishLengthValue = Debug.assertProperty(this._source,"labelFishLengthValue",TextField);
         this._viewProgress = new ViewProgress(controller,Debug.assertProperty(this._source,"viewProgress",DisplayObjectContainer));
      }
      
      private function removeItems() : void
      {
         var _loc1_:IView = null;
         for each(_loc1_ in this._items)
         {
            this._source.removeChild(_loc1_.source);
         }
         this._items = null;
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:IView = null;
         super.placeViews(param1);
         var _loc4_:Number = 80;
         _loc2_ = 110;
         for each(_loc3_ in this._items)
         {
            _loc3_.source.x = _loc4_;
            _loc3_.source.y = _loc2_;
            _loc4_ += _loc3_.source.width + 5;
         }
      }
      
      override public function cleanup() : void
      {
         this._viewProgress.cleanup();
         this._viewProgress = null;
         this.removeItems();
         super.cleanup();
      }
   }
}

