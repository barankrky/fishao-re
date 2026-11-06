package com.ax3.fishao.tutorial.views.world_map
{
   import com.ax3.display.dialog.WorldMapSwfDialog;
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.helpers.ETutorialPopupSize;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.WorldMapButton;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class WorldMapTutorial extends WorldMapSwfDialog
   {
      
      private var _isFocusOnArea:Boolean;
      
      private var _focusedArea:WorldMapButton;
      
      private var _popupText:String;
      
      public function WorldMapTutorial()
      {
         super();
      }
      
      private static function prepareAndGetPopup() : TutorialHelperPopup
      {
         var _loc1_:TutorialHelperPopup = GameSwf.instance.managerTutorial.tutorialHelpers.helperPopup;
         _loc1_.resetView();
         _loc1_.showPopup();
         _loc1_.hideTutorialPopupItems();
         _loc1_.sizeLabel = ETutorialPopupSize.ETPS_MEDIUM;
         return _loc1_;
      }
      
      override protected function areaClickHandler(param1:MouseEvent) : void
      {
         var _loc2_:TutorialInfo = null;
         var _loc3_:TutorialHelpers = null;
         var _loc4_:String = null;
         var _loc5_:WorldMapButton = null;
         if(!_isAssetsComplete && !_isDataComplete)
         {
            return;
         }
         var _loc6_:WorldMapButton = WorldMapButton(param1.currentTarget);
         if(this._isFocusOnArea)
         {
            if(this._focusedArea == _loc6_)
            {
               super.areaClickHandler(param1);
               _loc2_ = GameSwf.instance.managerTutorial.tutorialInProgress;
               _loc3_ = GameSwf.instance.managerTutorial.tutorialHelpers;
               _loc3_.helperMask.removeAllMasks();
               _loc3_.helperArrow.tryHideTutorialArrow();
               _loc3_.helperPopup.hidePopup();
               this._focusedArea.isFocused = false;
               this._isFocusOnArea = false;
               this._focusedArea = null;
               for(_loc4_ in _locationById)
               {
                  _loc5_ = _locationById[_loc4_];
                  _loc5_.addOverOutListeners();
               }
            }
         }
         else
         {
            super.areaClickHandler(param1);
         }
      }
      
      private function onGameResize(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:WorldMapButton = null;
         var _loc4_:TutorialHelpers = null;
         for(_loc2_ in _locationById)
         {
            _loc3_ = _locationById[_loc2_];
            _loc3_.placeTooltip();
         }
         if(this._isFocusOnArea && GameSwf.instance.managerTutorial != null)
         {
            _loc4_ = GameSwf.instance.managerTutorial.tutorialHelpers;
            _loc4_.update();
         }
      }
      
      public function setFocusOnArea(param1:int, param2:String = null) : void
      {
         var _loc3_:String = param1.toString();
         var _loc4_:WorldMapButton = _locationById[_loc3_];
         if(_loc4_ == null)
         {
            return;
         }
         this._focusedArea = _loc4_;
         this._isFocusOnArea = true;
         this._popupText = param2;
      }
      
      override public function activate() : void
      {
         super.activate();
         Listeners.addEventListener(this,GameSwf.globalDispatcher,GameResizeEvent.RESIZE,this.onGameResize);
         this.trySetFocusOnArea();
      }
      
      override public function dataReceive(param1:ServerResp) : void
      {
         super.dataReceive(param1);
         this.trySetFocusOnArea();
      }
      
      private function trySetFocusOnArea() : void
      {
         var _loc1_:String = null;
         var _loc2_:Sprite = null;
         var _loc3_:WorldMapButton = null;
         var _loc4_:TutorialHelpers = null;
         var _loc5_:TutorialHelperPopup = null;
         if(!this._isFocusOnArea || this._focusedArea == null)
         {
            return;
         }
         hideAllButtons();
         for(_loc1_ in _locationById)
         {
            _loc3_ = _locationById[_loc1_];
            _loc3_.removeOverOutListeners();
         }
         this._focusedArea.isFocused = true;
         this._focusedArea.show(0);
         _loc2_ = this._focusedArea.tooltip;
         if(_loc2_ != null)
         {
            _loc4_ = GameSwf.instance.managerTutorial.tutorialHelpers;
            _loc4_.helperMask.removeAllMasks();
            _loc4_.helperArrow.tryHideTutorialArrow();
            _loc4_.helperPopup.hidePopup();
            _loc4_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_,new Point(-_loc2_.width / 2)),100);
            _loc4_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc2_,new Point(0,-60)),0);
         }
         if(this._popupText != null)
         {
            _loc5_ = prepareAndGetPopup();
            _loc5_.showOnlyTextBig(I18n.get(this._popupText));
            _loc5_.alignToTop(50);
         }
         _loc4_.update();
      }
      
      override public function onShowComplete() : void
      {
         super.onShowComplete();
         this.onGameResize(null);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         Listeners.removeEventListener(this,GameSwf.globalDispatcher,GameResizeEvent.RESIZE,this.onGameResize);
      }
   }
}

