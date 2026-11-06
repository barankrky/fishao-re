package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishes.ManagerFishes;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import com.ax3.fishao.view.wrappers.impl.FishListItemWrapper;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.empty;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FishdexSwfDialog extends FishdexSwfDialogAsset
   {
      
      public static var showFishId:int = -1;
      
      private static const ITEMS_AT_SCREEN:int = 20;
      
      private var _movieList:ExtendedMovieList;
      
      private var _needSetFishList:Boolean;
      
      private var _filter:String;
      
      private var _filterPattern:RegExp;
      
      private var _managerFishes:ManagerFishes;
      
      public function FishdexSwfDialog()
      {
         super();
         this._managerFishes = GameSwf.instance.managerFishes;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         fishListVScroll.moveHandler = this.fishListMoveHandler;
         fishListVScroll.mouseScrollArea = fishListContainer;
         main.notepadScroll = notepadSliderVScroll;
         main.mainInterfaceScroll = fishDexVScroll;
         main.mouseScrollArea = fishInfoContainer;
         main.visible = false;
         search.serchCallback = this.sort;
         notCaught.text = I18n.get("fishdex_not_caught");
         viewCatchInfoButton.label = I18n.get("fishdex_view_catch_info");
         viewCatchInfoButton.handler = this.handleViewCatchInfoDialog;
         search.textField.tabIndex = 1;
         notepadTextField.tabIndex = 2;
         GameSwf.currentLocationDialog.fishdexDialog = this;
      }
      
      protected function handleViewCatchInfoDialog(param1:MouseEvent) : void
      {
         var _loc2_:CatchInfoSwfDialog = app.dialogFactory.getCatchInfoDialog();
         _loc2_.setFish(_fishId);
         _loc2_.show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this._filter = null;
         this._filterPattern = null;
         _loadingIndicator.start();
         GameSwf.instance.managerFishes.getFishdexData(Preloader.waitForResponse(this.onGetCaughtFishes));
      }
      
      private function onGetCaughtFishes(param1:ServerResp) : void
      {
         this.updateList();
         _loadingIndicator.stop();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function sort(param1:String) : void
      {
         this._filter = param1;
         if(!empty(this._filter))
         {
            this._filterPattern = new RegExp("^" + param1 + ".*$","i");
         }
         else
         {
            this._filterPattern = null;
         }
         this.updateList();
      }
      
      public function updateList() : void
      {
         var _loc1_:FishInfoVO = null;
         var _loc2_:Vector.<DisplayObject> = null;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:FishUserInfo = null;
         var _loc6_:Vector.<FishInfoVO> = Vector.<FishInfoVO>(app.fishDict.getAll());
         _loc6_.sort(FishInfoVO.sortByFishName);
         if(_loc6_.length == 0)
         {
            return;
         }
         var _loc7_:Array = this._managerFishes.getAvailableFishes(_loc6_);
         var _loc8_:Array = GameSwf.instance.managerFishes.fishesUser;
         _loc8_.sort(ManagerFishes.sortByFishName);
         var _loc9_:Vector.<int> = new Vector.<int>();
         if(_state == DialogState.READY)
         {
            _loc2_ = new Vector.<DisplayObject>();
            _loc3_ = 0;
            for each(_loc5_ in _loc8_)
            {
               _loc9_.push(_loc5_.id);
            }
            if(empty(this._filterPattern))
            {
               for each(_loc1_ in _loc7_)
               {
                  if(_loc9_.indexOf(_loc1_.id) == -1)
                  {
                     _loc4_ = _fishListButton.createInstance();
                     FishListItemWrapper(_loc4_).setData(_loc1_,null);
                     _loc2_.push(_loc4_);
                  }
                  else
                  {
                     if(_loc1_.id == showFishId)
                     {
                        _loc3_ = int(_loc2_.length);
                     }
                     for each(_loc5_ in _loc8_)
                     {
                        if(_loc5_.id == _loc1_.id)
                        {
                           break;
                        }
                     }
                     _loc4_ = _fishListButton.createInstance();
                     FishListItemWrapper(_loc4_).setData(_loc1_,_loc5_);
                     _loc2_.push(_loc4_);
                  }
               }
            }
            else
            {
               for each(_loc5_ in _loc8_)
               {
                  _loc1_ = FishInfoVO(app.fishDict.get(_loc5_.id));
                  if(_loc1_ != null)
                  {
                     if(this.filterAllow(_loc1_.displayName))
                     {
                        _loc4_ = _fishListButton.createInstance();
                        FishListItemWrapper(_loc4_).setData(_loc1_,_loc5_);
                        _loc2_.push(_loc4_);
                     }
                  }
               }
            }
            fishListVScroll.visible = _loc2_.length > ITEMS_AT_SCREEN;
            fishListVScroll.setHandlerSize(ITEMS_AT_SCREEN / _loc2_.length,ITEMS_AT_SCREEN);
            this._movieList = new ExtendedMovieList(1,-1,0,0,true);
            this._movieList.setList(_loc2_,_loc3_);
            this.scrollTo(_loc3_,_loc2_.length - ITEMS_AT_SCREEN);
            if(_loc3_ < _loc2_.length)
            {
               this.fishListHandler(FishListItemWrapper(_loc2_[_loc3_]));
            }
            this._movieList.showBackgroundFunction = FishListItemWrapper.showBackgroundFunction;
            this._movieList.clearBackgroundFunction = FishListItemWrapper.clearBackgroundFunction;
            this._movieList.isBackgroundActiveFunction = FishListItemWrapper.isBackgroundActiveFunction;
            listSet.addList(this._movieList,this.fishListHandler);
            fishListVScroll.listSize = this._movieList.height;
         }
         else
         {
            this._needSetFishList = true;
         }
      }
      
      private function scrollTo(param1:int, param2:int) : void
      {
         this._movieList.scrollTo(param1,limit(param1,0,param2));
         var _loc3_:Number = param1 / param2;
         _loc3_ = limit(_loc3_,0,1);
         fishListVScroll.percent = _loc3_;
      }
      
      private function filterAllow(param1:String) : Boolean
      {
         if(this._filterPattern != null)
         {
            return this._filterPattern.test(param1);
         }
         return true;
      }
      
      private function fishListMoveHandler(param1:Number) : void
      {
         var _loc2_:int = this._movieList.height - 470;
         this._movieList.y = _loc2_ * (1 - param1) - _loc2_;
      }
      
      public function fishListHandler(param1:FishListItemWrapper) : void
      {
         notCaught.visible = !param1.isActive;
         viewCatchInfoButton.visible = !param1.isActive;
         main.interfaceActive = param1.isActive;
         _fishId = param1.fishInfo.id;
         if(param1.isActive)
         {
            main.setData(param1.fishInfo,param1.userCaughtFish,_badge);
            viewFishBoard.addImg(param1.userCaughtFish,param1.fishInfo);
            stars.setRating(param1.fishInfo.rating);
         }
         main.resetScrolls();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         showFishId = -1;
         this._filterPattern = null;
         this._filter = null;
         search.resetClick();
      }
      
      override public function close() : void
      {
         super.close();
         if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.onFishdexClosed();
         }
      }
   }
}

