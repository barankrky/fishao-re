package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.SizebleByWidthTextFieldWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.display.textfield.setFontSize;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   
   public class TabsWrapper extends ShiftWrapper implements IAssetWrapper, IAssetWrapperWithFactory
   {
      
      public static const TAB_CHANGED:String = "tab_changed";
      
      private const TAB_CHANGED_EVENT:Event = new Event(TAB_CHANGED);
      
      private var _tabClass:Class;
      
      private var _tabs:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _currentTab:int = 0;
      
      private var _fields:Dictionary = new Dictionary();
      
      private var _minimalTextSize:int = 2147483647;
      
      public function TabsWrapper()
      {
         super();
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._tabClass = param1.resourceManager.getDefinitionFromLibraryByName(param2,"assets.Tab");
      }
      
      public function setTabTitle(param1:int, param2:String, param3:int = 2147483647) : void
      {
         var _loc4_:SizebleByWidthTextFieldWrapper = null;
         var _loc5_:MovieClip = this._tabs[param1];
         if(_loc5_ != null)
         {
            _loc4_ = this._fields[_loc5_];
            if(_loc4_ != null)
            {
               _loc4_.widthNeed = param3;
               _loc4_.text = param2;
               _loc4_.autoSize = TextFieldAutoSize.LEFT;
               this.inspectFieldFontSizes();
               this.resizeTab(param1);
            }
         }
      }
      
      private function resizeTab(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:SizebleByWidthTextFieldWrapper = null;
         var _loc4_:int = param1;
         while(_loc4_ < this._tabs.length)
         {
            _loc2_ = this._tabs[_loc4_];
            if(_loc4_ != param1 && _loc4_ > 0)
            {
               MovieClip(_loc2_).x = MovieClip(this._tabs[_loc4_ - 1]).width + MovieClip(this._tabs[_loc4_ - 1]).x;
            }
            _loc3_ = this._fields[_loc2_];
            MovieClip(_loc2_.getChildByName("center")).width = _loc3_.width + 5;
            MovieClip(_loc2_.getChildByName("rightPart")).x = MovieClip(_loc2_.getChildByName("center")).width + MovieClip(_loc2_.getChildByName("center")).x;
            _loc3_.x = MovieClip(_loc2_.getChildByName("center")).x + 5;
            _loc4_++;
         }
      }
      
      public function addTab(param1:String) : int
      {
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:SizebleByWidthTextFieldWrapper = null;
         if(this._tabClass != null)
         {
            _loc2_ = new this._tabClass();
            _loc2_.useHandCursor = true;
            _loc2_.mouseEnabled = true;
            _loc2_.mouseChildren = false;
            _loc2_.buttonMode = true;
            _loc2_.addEventListener(MouseEvent.CLICK,this.onTabClick);
            _loc3_ = TextField(_loc2_.getChildByName("label"));
            _loc3_.text = param1;
            _loc3_.width = _loc3_.textWidth + 5;
            _loc4_ = new SizebleByWidthTextFieldWrapper(false,TextFieldAutoSize.LEFT);
            _loc4_.process(_loc3_);
            _loc4_.text = param1;
            _loc4_.autoSize = TextFieldAutoSize.LEFT;
            this.inspectFieldFontSizes();
            this._fields[_loc2_] = _loc4_;
            if(this._tabs.length == 0)
            {
               MovieClip(_loc2_.getChildByName("center")).x = MovieClip(_loc2_.getChildByName("leftPart")).width + MovieClip(_loc2_.getChildByName("leftPart")).x;
            }
            else
            {
               MovieClip(_loc2_.getChildByName("leftPart")).visible = false;
               MovieClip(_loc2_.getChildByName("center")).x = 0;
            }
            this._tabs.push(_loc2_);
            this.resizeTab(this._tabs.length - 1);
            addChild(_loc2_);
            this.redrawTabs();
         }
         return this._tabs.length - 1;
      }
      
      private function inspectFieldFontSizes() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:MovieClip = null;
         var _loc3_:SizebleByWidthTextFieldWrapper = null;
         var _loc4_:* = undefined;
         var _loc5_:SizebleByWidthTextFieldWrapper = null;
         var _loc6_:int = int.MAX_VALUE;
         for(_loc1_ in this._fields)
         {
            _loc2_ = _loc1_;
            _loc3_ = this._fields[_loc1_];
            if(_loc6_ > _loc3_.curFontSize && _loc3_.curFontSize > 0)
            {
               _loc6_ = _loc3_.curFontSize;
            }
         }
         if(this._minimalTextSize != _loc6_)
         {
            this._minimalTextSize = _loc6_;
            for(_loc4_ in this._fields)
            {
               _loc5_ = this._fields[_loc4_];
               setFontSize(_loc5_,this._minimalTextSize);
               _loc5_.autoSize = TextFieldAutoSize.LEFT;
               _loc5_.alignVertical();
            }
            this.resizeTab(0);
         }
      }
      
      private function onTabClick(param1:MouseEvent) : void
      {
         this.activateTab(this._tabs.indexOf(param1.target));
      }
      
      public function activateTab(param1:int, param2:Boolean = true) : void
      {
         this._currentTab = param1;
         if(param2)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
         }
         this.redrawTabs();
         dispatchEvent(this.TAB_CHANGED_EVENT);
      }
      
      public function redrawTabs() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < this._tabs.length)
         {
            this._tabs[_loc2_].x = _loc3_;
            if(this._tabs[_loc2_].visible == true)
            {
               _loc3_ += this._tabs[_loc2_].width;
               if(_loc4_ == false)
               {
                  MovieClip(this._tabs[_loc2_].getChildByName("leftPart")).visible = true;
                  MovieClip(this._tabs[_loc2_].getChildByName("center")).x = MovieClip(this._tabs[_loc2_].getChildByName("leftPart")).width + MovieClip(this._tabs[_loc2_].getChildByName("leftPart")).x;
                  this.resizeTab(_loc2_);
                  _loc4_ = true;
               }
            }
            if(_loc2_ == this._currentTab)
            {
               _loc1_ = "selected";
               if(_loc2_ > 0)
               {
                  MovieClip(this._tabs[_loc2_ - 1].getChildByName("rightPart")).gotoAndStop("normal_adjacent_selected");
               }
            }
            else
            {
               _loc1_ = "normal";
            }
            MovieClip(this._tabs[_loc2_].getChildByName("center")).gotoAndStop(_loc1_);
            MovieClip(this._tabs[_loc2_].getChildByName("leftPart")).gotoAndStop(_loc1_);
            if(_loc2_ < this._tabs.length - 1)
            {
               _loc1_ = "adjacent_" + _loc1_;
               if(_loc2_ != this._currentTab)
               {
                  _loc1_ += _loc2_ < this._currentTab ? "_under" : "_over";
               }
            }
            MovieClip(this._tabs[_loc2_].getChildByName("rightPart")).gotoAndStop(_loc1_);
            _loc2_++;
         }
      }
      
      public function get currentTab() : int
      {
         return this._currentTab;
      }
      
      public function set currentTab(param1:int) : void
      {
         this._currentTab = param1;
      }
      
      public function hideTab(param1:int) : void
      {
         this._tabs[param1].visible = false;
      }
      
      public function showTab(param1:int) : void
      {
         this._tabs[param1].visible = true;
      }
      
      public function getTabByIndex(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         if(this._tabs != null && this._tabs.length > param1)
         {
            _loc2_ = this._tabs[param1];
         }
         return _loc2_;
      }
   }
}

