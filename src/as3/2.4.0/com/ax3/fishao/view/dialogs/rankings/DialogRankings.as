package com.ax3.fishao.view.dialogs.rankings
{
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishes.ManagerFishes;
   import com.ax3.fishao.view.dialogs.rankings.model.ERankingType;
   import com.ax3.fishao.view.dialogs.rankings.model.RankingItemData;
   import com.ax3.fishao.view.dialogs.rankings.views.RankingItemWrapper;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.DropDownItemWithIcon;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ElementsFactory;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.ImportPagesController;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesControl;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesElementsContainer;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import protocol.api.profile.rankings.ResponseProfileRankings;
   
   public class DialogRankings extends DialogRankingsAsset
   {
      
      public static const DIFFERENT_FISH:String = "rankings_different_fish";
      
      public static const BIGGEST_FISH:String = "rankings_biggest_fish";
      
      public static const TOTAL_FISH:String = "rankings_total_fish";
      
      public static const LEVEL:String = "rankings_level";
      
      public static const MISSIONS_COMPLETED:String = "rankings_missions_completed";
      
      public static const BADGES_COLLECTED:String = "rankings_badges_collected";
      
      public static const HOME_POINTS:String = "rankings_home_points";
      
      public static const TOURNAMENTS_WON:String = "rankings_tournaments_won";
      
      private static const START_X_ITEMS:int = 0;
      
      private static const START_Y_ITEMS:int = 0;
      
      private static const DISTANCE_HORIZONTAL:int = 0;
      
      private static const DISTANCE_VERTICAL:int = 37;
      
      public static const COUNT_ROWS:int = 9;
      
      private static const COUNT_COLUMNS:int = 1;
      
      private var _listOfRankingTypes:Vector.<String> = new Vector.<String>();
      
      private var _allFishInfo:Vector.<FishInfoVO>;
      
      private var _managerFishes:ManagerFishes;
      
      private var _availableFishes:Array;
      
      private var _pageCurrent:int;
      
      private var _items:Vector.<Object>;
      
      public function DialogRankings()
      {
         super();
         this._items = new Vector.<Object>(0);
         this._listOfRankingTypes.push(I18n.get(DIFFERENT_FISH));
         this._listOfRankingTypes.push(I18n.get(BIGGEST_FISH));
         this._listOfRankingTypes.push(I18n.get(TOTAL_FISH));
         this._listOfRankingTypes.push(I18n.get(LEVEL));
         this._listOfRankingTypes.push(I18n.get(MISSIONS_COMPLETED));
         this._listOfRankingTypes.push(I18n.get(BADGES_COLLECTED));
         this._listOfRankingTypes.push(I18n.get(HOME_POINTS));
         this._listOfRankingTypes.push(I18n.get(TOURNAMENTS_WON));
         this._allFishInfo = Vector.<FishInfoVO>(app.fishDict.getAll());
         this._allFishInfo.sort(FishInfoVO.sortByFishName);
         this._managerFishes = GameSwf.instance.managerFishes;
         this._pageCurrent = -1;
      }
      
      private function onChangePage(param1:Event) : void
      {
         this._pageCurrent = _pagesController.currentPage;
         this.importDateForPage(_pagesController.currentPage);
      }
      
      private function onChangeType(param1:Event) : void
      {
         rankingSubtypePicker.visible = rankingTypePicker.selectedItemIndex == ERankingType.FISH_SIZE || rankingTypePicker.selectedItemIndex == ERankingType.FISH_COUNT;
         rankingSubtypePicker.selectedItemIndex = 0;
         this._pageCurrent = -1;
         this.loadData();
         this.setTypeValueText();
      }
      
      private function onChangeSubtype(param1:Event) : void
      {
         this._pageCurrent = -1;
         this.loadData();
         this.setTypeValueText();
      }
      
      private function onGetAvailableFishes(param1:ServerResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         _loc3_.push(I18n.get("rankings_subtype_all"));
         this._availableFishes = this._managerFishes.getAvailableFishes(this._allFishInfo);
         var _loc4_:int = 0;
         while(_loc4_ < this._availableFishes.length)
         {
            _loc2_ = (this._availableFishes[_loc4_] as FishInfoVO).displayName;
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         rankingSubtypePicker.create(_loc3_);
         this.loadData();
         this.setTypeValueText();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         title.text = I18n.get("rankings_label");
         _rankingItem = _asset.getChildByName("rankingItem");
         _itemFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,RankingItemWrapper);
         _itemFactory.process(_rankingItem);
         _rankingTypeFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,DropDownItemWithIcon);
         _rankingTypeFactory.process(rankingTypePicker.itemTemplate);
         rankingTypePicker.setItemFactory(_rankingTypeFactory);
         rankingTypePicker.addEventListener(Event.CHANGE,this.onChangeType);
         _rankingSubtypeFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,DropDownItemWithIcon);
         _rankingSubtypeFactory.process(rankingSubtypePicker.itemTemplate);
         rankingSubtypePicker.setItemFactory(_rankingSubtypeFactory);
         rankingSubtypePicker.addEventListener(Event.CHANGE,this.onChangeSubtype);
         rankingSubtypePicker.visible = false;
         _amountTextWrapper = new TextFieldAutofitWrapper(amountTypeText);
         tabs.addTab(I18n.get("rankings_current_world"));
         tabs.addTab(I18n.get("rankings_all_worlds"));
         tabs.addTab(I18n.get("rankings_friends"));
         tabs.addEventListener(TabsWrapper.TAB_CHANGED,this.onTabChanged);
         this.initStaticData();
         super.onAssetCreationComplete();
      }
      
      private function onDataLoaded(param1:ResponseProfileRankings) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:RankingItemData = null;
         var _loc6_:int = 0;
         _pagesController.removeEventListener(ImportPagesController.EVENT_CHANGE_PAGE,this.onChangePage);
         this._items = new Vector.<Object>(0);
         var _loc7_:RankingItemData = null;
         var _loc8_:Boolean = false;
         for each(_loc2_ in param1.itemsData)
         {
            _loc5_ = new RankingItemData(rankingTypePicker.selectedItemIndex);
            _loc5_.deserialize(_loc2_);
            if(_loc5_.login.toLowerCase() == app.user.username.toLowerCase())
            {
               if(_loc8_)
               {
                  continue;
               }
               _loc7_ = _loc5_;
               _loc8_ = true;
            }
            this._items.push(_loc5_);
         }
         this._items = this._items.sort(RankingItemData.sortByPosition);
         _loc3_ = this._items.length / 9;
         _loc4_ = 0;
         if(_loc7_ != null)
         {
            _loc6_ = this._items.indexOf(_loc7_);
            _loc4_ = _loc6_ / 9;
         }
         this.importDateForPage(_loc4_);
         _pagesController.addEventListener(ImportPagesController.EVENT_CHANGE_PAGE,this.onChangePage);
      }
      
      private function importDateForPage(param1:int) : void
      {
         _pagesController.importData(this._items.slice(param1 * COUNT_ROWS,(param1 + 1) * COUNT_ROWS),param1,Math.ceil(this._items.length / COUNT_ROWS));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updateAvailableFishes();
      }
      
      private function onTabChanged(param1:Event) : void
      {
         this.loadData();
      }
      
      private function initStaticData() : void
      {
         numberText.text = I18n.get("profileNumber");
         nameText.text = I18n.get("name");
         amountTypeText.text = "";
         rankingTypePicker.create(this._listOfRankingTypes);
         rankingTypePicker.text = this._listOfRankingTypes[0];
         rankingTypePicker.iconIndex = 1;
         rankingTypePicker.selectedItemIndex = 0;
         this.initPagesController();
      }
      
      private function updateAvailableFishes() : void
      {
         this._managerFishes.getFishdexData(Preloader.waitForResponse(this.onGetAvailableFishes));
      }
      
      private function initPagesController() : void
      {
         var _loc1_:PagesControl = new PagesControl(pagesTextField,rightPageButton,leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:PagesElementsContainer = new PagesElementsContainer(itemsContainer,START_X_ITEMS,START_Y_ITEMS,DISTANCE_HORIZONTAL,DISTANCE_VERTICAL,COUNT_ROWS,COUNT_COLUMNS);
         var _loc3_:ElementsFactory = new ElementsFactory(_itemFactory);
         _pagesController = new ImportPagesController(_loc1_,_loc2_,_loc3_);
         _pagesController.autosize = TextFieldAutoSize.RIGHT;
      }
      
      private function setTypeValueText() : void
      {
         switch(rankingTypePicker.selectedItemIndex)
         {
            case ERankingType.DIFFERENT_FISH:
            case ERankingType.FISH_COUNT:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_FISH_COUNT);
               break;
            case ERankingType.FISH_SIZE:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_FISH_SIZE);
               break;
            case ERankingType.LEVEL:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_LEVEL);
               break;
            case ERankingType.MISSIONS_COMPLETED:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_MISSIONS);
               break;
            case ERankingType.BADGES_COLLECTED:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_BADGES);
               break;
            case ERankingType.HOME_POINTS:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_HOME_POINTS);
               break;
            case ERankingType.TOURNAMENTS_WON:
               _amountTextWrapper.text = I18n.get(EStringType.EST_DIALOG_RANKINGS_AMOUNT_TOURNAMENTS);
               break;
            default:
               _amountTextWrapper.text = "";
         }
      }
      
      private function loadData() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(rankingTypePicker.selectedItemIndex == ERankingType.FISH_SIZE || rankingTypePicker.selectedItemIndex == ERankingType.FISH_COUNT)
         {
            if(rankingSubtypePicker.selectedItemIndex > 0)
            {
               _loc1_ = rankingSubtypePicker.selectedItemIndex - 1;
               _loc2_ = (this._availableFishes[_loc1_] as FishInfoVO).id;
            }
         }
         var _loc3_:int = this._pageCurrent;
         FishaoFscModelManager.profileExtension.getProfileRankingInfo(app.user.username,rankingTypePicker.selectedItemIndex,_loc2_,tabs.currentTab,this._pageCurrent,Preloader.waitForResponse(this.onDataLoaded));
      }
   }
}

