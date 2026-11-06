package com.ax3.display.wrappers
{
   import com.ax3.display.wrappers.impl.IListItemWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class PageListWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      public var itemTemplate:DisplayObject;
      
      public var gap:int = 5;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var pagesTextField:TextField;
      
      public var rightPageButton:FrameButtonWrapper;
      
      private var _itemRenderFactory:IItemFactory;
      
      private var _asset:DisplayObjectContainer;
      
      private var _itemsPerPage:int;
      
      private var _itemWrappers:Vector.<IListItemWrapper> = new Vector.<IListItemWrapper>();
      
      private var _currentPageIndex:int;
      
      private var _totalPages:int;
      
      public var listItemClickHandler:Function;
      
      public function PageListWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName("rect");
         this.itemTemplate = this._asset.getChildByName("item");
         this.leftPageButton = new FrameButtonWrapper();
         this.leftPageButton.process(this._asset.getChildByName("leftPageButton"));
         addChild(this.leftPageButton);
         this.pagesTextField = TextField(this._asset.getChildByName("pagesTextField"));
         addChild(this.pagesTextField);
         this.rightPageButton = new FrameButtonWrapper();
         this.rightPageButton.process(this._asset.getChildByName("rightPageButton"));
         addChild(this.rightPageButton);
         removeAllChildren(this._asset);
         this._asset.scrollRect = new Rectangle(0,0,_loc2_.width,_loc2_.height);
         this._asset.x = _loc2_.x;
         this._asset.y = _loc2_.y;
         addChild(this._asset);
      }
      
      public function set itemFactory(param1:IItemFactory) : void
      {
         this._itemRenderFactory = param1;
      }
      
      private function createItemWrapper() : IListItemWrapper
      {
         return IListItemWrapper(this._itemRenderFactory.createInstance());
      }
      
      public function set itemsPerPage(param1:int) : void
      {
         this._itemsPerPage = param1;
         this.createItems();
      }
      
      private function createItems() : void
      {
         var _loc1_:IListItemWrapper = null;
         this._itemWrappers = new Vector.<IListItemWrapper>();
         removeAllChildren(this._asset);
         var _loc2_:int = 0;
         while(_loc2_ < this._itemsPerPage)
         {
            _loc1_ = this.createItemWrapper();
            if(_loc1_ is IEventDispatcher)
            {
               IEventDispatcher(_loc1_).addEventListener(ScrollListWrapper.ACTIVATE_WRAPPER,this.onListItemClick,false,0,true);
            }
            this._itemWrappers.push(_loc1_);
            this._asset.addChild(DisplayObject(_loc1_));
            _loc2_++;
         }
         this.updateList();
      }
      
      private function updateList() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = this._asset.numChildren;
         if(_loc4_ > 0)
         {
            _loc1_ = this._asset.getChildAt(0);
            _loc1_.y = 0;
            _loc3_ = _loc1_.y + _loc1_.height + this.gap;
            _loc2_ = 1;
            while(_loc2_ < _loc4_)
            {
               _loc1_ = this._asset.getChildAt(_loc2_);
               _loc1_.y = _loc3_;
               _loc3_ += _loc1_.height + this.gap;
               _loc2_++;
            }
         }
      }
      
      public function show(param1:Array, param2:int, param3:int) : void
      {
         var _loc4_:IListItemWrapper = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._itemsPerPage)
         {
            _loc4_ = this._itemWrappers[_loc5_];
            if(_loc5_ < param1.length)
            {
               _loc4_.data = param1[_loc5_];
            }
            else
            {
               _loc4_.data = null;
            }
            _loc5_++;
         }
         this.showPages(param2,param3);
      }
      
      private function showPages(param1:int, param2:int) : void
      {
         this._currentPageIndex = param1;
         this._totalPages = param2;
         if(param1 <= 0)
         {
            this.leftPageButton.disable();
         }
         else
         {
            this.leftPageButton.enable();
         }
         if(param1 >= param2 - 1)
         {
            this.rightPageButton.disable();
         }
         else
         {
            this.rightPageButton.enable();
         }
         this.pagesTextField.text = this._currentPageIndex + 1 + " " + I18n.get("of") + " " + param2;
      }
      
      public function removeAll() : void
      {
         this.show([],0,1);
      }
      
      private function onListItemClick(param1:Event) : void
      {
         this.listItemClickHandler(param1);
      }
   }
}

