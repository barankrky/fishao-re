package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.RecommendationWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class CatchInfoSwfDialog extends CatchInfoSwfDialogAsset
   {
      
      private var _isLoaded:Boolean;
      
      private var _fish:FishInfoVO;
      
      private var _locations:Vector.<ToolTipTargetMovieClip>;
      
      private var _recommendationBait:RecommendationWrapper;
      
      private var _recommendationRod:RecommendationWrapper;
      
      private var _recommendationGadget:RecommendationWrapper;
      
      private var _gadgetStarRecommendationMap:Dictionary = new Dictionary();
      
      public function CatchInfoSwfDialog()
      {
         super();
         this._gadgetStarRecommendationMap[1] = ResourceType.ID_MAGIC_WATCH;
         this._gadgetStarRecommendationMap[2] = ResourceType.ID_LUCK_POTION_1;
         this._gadgetStarRecommendationMap[3] = ResourceType.ID_LUCK_POTION_1;
         this._gadgetStarRecommendationMap[4] = ResourceType.ID_LUCK_POTION_2;
         this._gadgetStarRecommendationMap[5] = ResourceType.ID_LUCK_POTION_2;
      }
      
      public function setFish(param1:int) : void
      {
         this._fish = app.fishDict.get(param1) as FishInfoVO;
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:Array = null;
         var _loc2_:ToolTipTargetMovieClip = null;
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         var _loc5_:ScaledBitmap = null;
         var _loc6_:int = 0;
         var _loc7_:Vector.<Object> = null;
         var _loc8_:Vector.<Object> = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:Vector.<Object> = null;
         var _loc12_:Vector.<Object> = null;
         var _loc13_:Object = null;
         var _loc14_:Vector.<Object> = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc17_:String = null;
         var _loc18_:ScaledBitmap = null;
         var _loc19_:Dictionary = null;
         var _loc20_:int = 0;
         closeButton.handler = this.onCloseClick;
         if(this._fish != null)
         {
            title.text = I18n.get("fish_" + this._fish.id);
            txtCaughtIn.text = I18n.get("catch_info_caught_in");
            _loc1_ = this._fish.catchRequirements.location_ids as Array;
            this._locations = new Vector.<ToolTipTargetMovieClip>();
            _loc6_ = 0;
            while(_loc6_ < 4)
            {
               _loc3_ = _asset.getChildByName("location_" + _loc6_);
               _loc2_ = this._locations[this._locations.length] = new ToolTipTargetMovieClip();
               _loc2_.graphics.beginFill(9461904,0);
               _loc2_.graphics.drawRect(0,0,_loc3_.width,_loc3_.height);
               if(_loc1_.length > _loc6_)
               {
                  _loc2_.tooltipConfig = {"text":I18n.get("location_" + _loc1_[_loc6_])};
                  _loc4_ = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.LOCATION.name,_loc1_[_loc6_]));
                  _loc5_ = new ScaledBitmap(null);
                  _loc5_.width = 95;
                  _loc5_.height = 65;
                  app.resourceManager.replaceBitmapDataFromURL(_loc5_,_loc4_);
                  _loc3_.image.addChild(_loc5_);
               }
               else
               {
                  _loc3_.visible = false;
               }
               _loc3_.image.addChild(_loc2_);
               _loc6_++;
            }
            _loc7_ = app.baitsDict.getAll();
            _loc8_ = new Vector.<Object>();
            _loc9_ = this._fish.catchRequirements.bait_category as Array;
            _loc10_ = 0;
            while(_loc10_ < _loc7_.length)
            {
               _loc20_ = 0;
               while(_loc20_ < _loc9_.length)
               {
                  if(_loc7_[_loc10_].category == _loc9_[_loc20_])
                  {
                     _loc8_.push(_loc7_[_loc10_]);
                  }
                  _loc20_++;
               }
               _loc10_++;
            }
            _loc11_ = app.rodsDict.getAll().concat();
            _loc12_ = new Vector.<Object>();
            for each(_loc13_ in _loc11_)
            {
               if(this._fish.maxLength <= parseInt(_loc13_.quality_power))
               {
                  _loc12_.push(_loc13_);
               }
            }
            if(_loc12_.length == 0)
            {
               _loc11_.sort(this.sortRodsByLength);
               _loc12_.push(_loc11_[_loc11_.length - 1]);
            }
            else
            {
               _loc12_.sort(this.sortRodsByLength);
            }
            _loc14_ = app.resourcesDict.getAll();
            _loc15_ = null;
            for each(_loc16_ in _loc14_)
            {
               if(_loc16_.id == this._gadgetStarRecommendationMap[this._fish.rating])
               {
                  _loc15_ = _loc16_;
               }
            }
            this._recommendationBait = new RecommendationWrapper();
            this._recommendationBait.process(recommendationBaitView);
            this._recommendationBait.show(_loc8_[Math.round(Math.random() * (_loc8_.length - 1))],1);
            this._recommendationBait.closeCallback = this.handleBuyClick;
            this._recommendationRod = new RecommendationWrapper();
            this._recommendationRod.process(recommendationRodView);
            this._recommendationRod.show(_loc12_[0],0);
            this._recommendationRod.closeCallback = this.handleBuyClick;
            this._recommendationGadget = new RecommendationWrapper();
            this._recommendationGadget.process(recommendationGadgetView);
            this._recommendationGadget.show(_loc15_,2);
            this._recommendationGadget.closeCallback = this.handleBuyClick;
            _loc17_ = FishaoBitmapLoader.convertImageNameURL("fishes/fish_425px_" + this._fish.id + ".png");
            _loc18_ = new ScaledBitmap(null);
            _loc18_.width = 380;
            _loc18_.height = 164;
            app.resourceManager.replaceBitmapDataFromURL(_loc18_,_loc17_);
            imgFish.addChild(_loc18_);
            _loc19_ = GameSwf.instance.managerFishes.fishesUserMap;
            if(!_loc19_.hasOwnProperty(String(this._fish.id)))
            {
               imgFish.filters = [UtilsColor.getFilter(-256)];
            }
         }
         super.onAssetCreationComplete();
      }
      
      private function sortRodsByLength(param1:Object, param2:Object) : int
      {
         if(parseInt(param1.quality_power) < parseInt(param2.quality_power))
         {
            return -1;
         }
         if(parseInt(param1.quality_power) > parseInt(param2.quality_power))
         {
            return 1;
         }
         return 0;
      }
      
      private function handleBuyClick() : void
      {
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
   }
}

