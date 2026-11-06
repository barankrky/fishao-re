package com.ax3.fishao.view.dialogs.collections.views
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.collections.model.ECollectionType;
   import com.ax3.utils.ColorMatrix;
   import flash.filters.ColorMatrixFilter;
   
   public class ViewCollectionItem extends ViewBase
   {
      
      private static var FILTER_NOT_COLLECTED:ColorMatrixFilter = UtilsColor.getFilter(-256);
      
      private var _source:gViewCollectionItem = new gViewCollectionItem();
      
      private var _type:int;
      
      private var _id:int;
      
      private var _isCollected:Boolean;
      
      private var _imagePlaceholder:ToolTipTargetMovieClip;
      
      private var _image:ScaledBitmap;
      
      public function ViewCollectionItem(param1:IController, param2:int, param3:int, param4:Boolean)
      {
         super(param1,this._source);
         this._type = param2;
         this._id = param3;
         this._isCollected = param4;
         this.init();
      }
      
      public function set tooltip(param1:String) : void
      {
         this._imagePlaceholder.tooltipConfig = {"text":param1};
      }
      
      private function init() : void
      {
         this._imagePlaceholder = new ToolTipTargetMovieClip();
         ShiftWrapper.shiftDisplayObject(this._source.image,this._imagePlaceholder);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:String = null;
         super.show(param1,param2);
         if(this._image == null)
         {
            _loc3_ = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(this.getResourceName(),this._id));
            this._image = new ScaledBitmap(null);
            this._image.width = this._source.image.width;
            this._image.height = this._source.image.height;
            this._image.filters = this.getImageFilters();
            app.resourceManager.replaceBitmapDataFromURL(this._image,_loc3_);
            this._imagePlaceholder.addChild(this._image);
         }
      }
      
      private function getResourceName() : String
      {
         var _loc1_:String = null;
         switch(this._type)
         {
            case ECollectionType.ECT_CATCH_ALL_FISHES_AT_LOCATION:
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_TYPE:
            case ECollectionType.ECT_CATCH_SHINY_FISH_WITH_TYPE:
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_NAME:
               _loc1_ = ResourceType.FISH.name;
               break;
            case ECollectionType.ECT_COLLECT_FURNITURE:
            case ECollectionType.ECT_FURNITURE_FACTORY:
               _loc1_ = ResourceType.DECORATION.name;
               break;
            case ECollectionType.ECT_COLLECT_FOSSILS:
               _loc1_ = ResourceType.FOSSIL.name;
               break;
            case ECollectionType.ECT_CRUSH_FRUITS:
               _loc1_ = ResourceType.FRUIT.name;
               break;
            default:
               Debug.assert(false);
         }
         return _loc1_;
      }
      
      private function getImageFilters() : Array
      {
         var _loc1_:ColorMatrix = null;
         var _loc2_:ColorMatrixFilter = null;
         var _loc3_:Array = [];
         if(this._isCollected)
         {
            if(this._type == ECollectionType.ECT_CATCH_SHINY_FISH_WITH_TYPE)
            {
               _loc1_ = new ColorMatrix();
               _loc1_.adjustHue((app.fishDict.get(this._id) as FishInfoVO).hueShiftOfShiny);
               _loc2_ = new ColorMatrixFilter(_loc1_.matrix);
               _loc3_ = [_loc2_];
            }
            else
            {
               _loc3_ = [];
            }
         }
         else
         {
            _loc3_ = [FILTER_NOT_COLLECTED];
         }
         return _loc3_;
      }
   }
}

