package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.FloatMovieList;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import com.ax3.utils.StringUtil;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class FishdexMainInterfaceWrapper implements IAssetWrapper
   {
      
      private static const LOCATION_BADGE_CONTAINER_WIDTH:int = 223;
      
      private static const LOCATION_BAIT_CONTAINER_WIDTH:int = 188;
      
      private var _child:DisplayObject;
      
      private var _mainScrollingInterface:DisplayObjectContainer;
      
      private var _fishName:TextField;
      
      private var _descriptionText:TextField;
      
      private var _descriptionBg:MovieClip;
      
      private var _notepadTextField:TextField;
      
      private var _notepadScroll:ScrollWrapper;
      
      private var _mainInterfaceScroll:ScrollWrapper;
      
      private var _scrollingInterface:MovieClip;
      
      private var _maskHeight:int = 346;
      
      private var _catchIn:DisplayObjectContainer;
      
      private var _catchWith:DisplayObjectContainer;
      
      private var _badge:DisplayObject;
      
      private var _timesCaughtBadge:FishdexBadgeWrapper = new FishdexBadgeWrapper();
      
      private var _averageLengthBadge:FishdexBadgeWrapper = new FishdexBadgeWrapper();
      
      private var _biggestCatchBadge:FishdexBadgeWrapper = new FishdexBadgeWrapper();
      
      private var _worldRecordBadge:FishdexBadgeWrapper = new FishdexBadgeWrapper();
      
      private var _mouseScrollArea:DisplayObjectContainer;
      
      private var _scrollingInterfaceYOffset:int;
      
      public function FishdexMainInterfaceWrapper()
      {
         super();
      }
      
      private static function generateButtonsVector(param1:String, param2:Array, param3:SwfFactoryWrapper) : Vector.<DisplayObject>
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:String = null;
         var _loc6_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc5_ in param2)
         {
            _loc4_ = param3.createInstance();
            FishdexBadgeWrapper(_loc4_).text = I18n.get(param1 + _loc5_);
            _loc6_.push(_loc4_);
         }
         return _loc6_;
      }
      
      private static function getUniqueBaits(param1:Vector.<DisplayObject>) : Vector.<DisplayObject>
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc2_ = true;
            _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               if(FishdexBadgeWrapper(param1[_loc5_]).text == FishdexBadgeWrapper(_loc4_[_loc3_]).text)
               {
                  _loc2_ = false;
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               _loc4_.push(param1[_loc5_]);
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         this.setChildren();
      }
      
      public function set interfaceActive(param1:Boolean) : void
      {
         this._child.visible = param1;
      }
      
      public function set notepadScroll(param1:ScrollWrapper) : void
      {
         this._notepadScroll = param1;
         this._notepadScroll.moveHandler = this.notepadScrolling;
         this.updateNotepadScroll();
      }
      
      public function set mainInterfaceScroll(param1:ScrollWrapper) : void
      {
         this._mainInterfaceScroll = param1;
         this._mainInterfaceScroll.moveHandler = this.scrolling;
         this.updateScroll();
      }
      
      public function get mainInterfaceScroll() : ScrollWrapper
      {
         return this._mainInterfaceScroll;
      }
      
      public function get badge() : DisplayObject
      {
         if(this._badge == null)
         {
            this.setChildren();
         }
         return this._badge;
      }
      
      private function setChildren() : void
      {
         if(this._badge != null)
         {
            return;
         }
         this._mainScrollingInterface = DisplayObjectContainer(DisplayObjectContainer(DisplayObjectContainer(this._child).getChildByName("fishInfoContainer")).getChildByName("scrollingInterface"));
         this._fishName = TextField(DisplayObjectContainer(this._child).getChildByName("fishName"));
         this._descriptionText = TextField(this._mainScrollingInterface.getChildByName("descriptionText"));
         this._scrollingInterface = MovieClip(this._mainScrollingInterface.getChildByName("scrolling"));
         this._notepadTextField = TextField(this._scrollingInterface.getChildByName("notepadTextField"));
         this._descriptionBg = MovieClip(this._mainScrollingInterface.getChildByName("descriptionBg"));
         this._catchIn = DisplayObjectContainer(this._scrollingInterface.getChildByName("catchIn"));
         this._catchWith = DisplayObjectContainer(this._scrollingInterface.getChildByName("catchWith"));
         var _loc1_:TextField = TextField(this._scrollingInterface.getChildByName("personalNotepadText"));
         var _loc2_:TextField = TextField(this._scrollingInterface.getChildByName("timesCatchedText"));
         var _loc3_:TextField = TextField(this._scrollingInterface.getChildByName("averageLenghtText"));
         var _loc4_:TextField = TextField(this._scrollingInterface.getChildByName("biggestCatchText"));
         var _loc5_:TextField = TextField(this._scrollingInterface.getChildByName("worldRecordText"));
         var _loc6_:TextField = TextField(this._scrollingInterface.getChildByName("catchWithText"));
         var _loc7_:TextField = TextField(this._scrollingInterface.getChildByName("catchInText"));
         this._timesCaughtBadge.process(this._scrollingInterface.getChildByName("timesCatchedBadge"));
         this._averageLengthBadge.process(this._scrollingInterface.getChildByName("averageLenghtBadge"));
         this._biggestCatchBadge.process(this._scrollingInterface.getChildByName("biggestCatchBadge"));
         this._worldRecordBadge.process(this._scrollingInterface.getChildByName("worldRecordBadge"));
         _loc1_.text = I18n.get("fishdex_personal_notepad");
         _loc2_.text = I18n.get("fishdex_times_caught");
         _loc3_.text = I18n.get("fishdex_average_length");
         _loc4_.text = I18n.get("fishdex_your_biggest_length");
         _loc5_.text = I18n.get("fishdex_world_record");
         _loc6_.text = I18n.get("fishdex_caught_it_with");
         _loc7_.text = I18n.get("fishdex_caught_it_in");
         this._badge = this._catchIn.getChildByName("fishdex_catchInBadge");
      }
      
      private function updateNotepadScroll(param1:Event = null) : void
      {
         if(this._notepadScroll != null)
         {
            if(param1 != null && KeyboardEvent(param1).keyCode == Keyboard.DELETE)
            {
               this._notepadScroll.visible = false;
            }
            else
            {
               this._notepadScroll.visible = this._notepadTextField.maxScrollV != 1;
               this._notepadScroll.setHandlerSize(1 / this._notepadTextField.maxScrollV,50);
               this._notepadScroll.percent = (this._notepadTextField.scrollV - 1) / (this._notepadTextField.maxScrollV - 1);
            }
         }
      }
      
      private function updateScroll() : void
      {
         var _loc1_:Number = NaN;
         if(this._mainInterfaceScroll != null)
         {
            this._mainInterfaceScroll.visible = this._mainScrollingInterface.height > this._maskHeight;
            this._mainInterfaceScroll.mouseScrollArea = this._mouseScrollArea;
            this._mainInterfaceScroll.listSize = this._mainScrollingInterface.height - this._maskHeight;
            _loc1_ = this._maskHeight / this._mainScrollingInterface.height;
            this._mainInterfaceScroll.setHandlerSize(_loc1_,50);
         }
      }
      
      public function set mouseScrollArea(param1:DisplayObjectContainer) : void
      {
         this._mouseScrollArea = param1;
      }
      
      public function setData(param1:FishInfoVO, param2:FishUserInfo, param3:SwfFactoryWrapper) : void
      {
         this._fishName.text = param1.displayName;
         this.setDescriptionText(param1.displayDescription);
         this._notepadTextField.text = StringUtil.getNotNull(param2.notepad);
         this._timesCaughtBadge.text = String(param2.countTotal);
         this._averageLengthBadge.text = I18n.formatDistance(param2.average);
         this._biggestCatchBadge.text = I18n.formatDistance(param2.biggest);
         this._worldRecordBadge.text = I18n.formatDistance(param2.biggestServers);
         removeAllChildren(this._catchIn);
         var _loc4_:FloatMovieList = new FloatMovieList(LOCATION_BADGE_CONTAINER_WIDTH,5,3);
         _loc4_.addChildren(generateButtonsVector("location_",param2.locationIds,param3));
         this._catchIn.addChild(_loc4_);
         removeAllChildren(this._catchWith);
         var _loc5_:FloatMovieList = new FloatMovieList(LOCATION_BAIT_CONTAINER_WIDTH,5,3);
         _loc5_.addChildren(getUniqueBaits(generateButtonsVector("bait_",param2.baitIds,param3)));
         this._catchWith.addChild(_loc5_);
         this._notepadTextField.addEventListener(KeyboardEvent.KEY_DOWN,this.updateNotepadScroll);
         this.updateNotepadScroll();
         this.updateScroll();
      }
      
      public function resetScrolls() : void
      {
         this._mainInterfaceScroll.reset();
         this._notepadScroll.reset();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._child.visible = param1;
      }
      
      private function notepadScrolling(param1:Number) : void
      {
         this._notepadTextField.scrollV = Math.round(param1 * this._notepadTextField.maxScrollV) + 1;
      }
      
      private function scrolling(param1:Number) : void
      {
         var _loc2_:int = this._mainScrollingInterface.height - this._maskHeight;
         this._mainScrollingInterface.y = _loc2_ * (1 - param1) - _loc2_ + 117;
      }
      
      private function setDescriptionText(param1:String) : void
      {
         this._descriptionText.text = param1;
         this._descriptionText.height = this._descriptionText.textHeight + 8;
         this._descriptionBg.height = this._descriptionText.height;
         this._scrollingInterface.y = this._descriptionBg.y + this._descriptionBg.height + 10;
      }
   }
}

