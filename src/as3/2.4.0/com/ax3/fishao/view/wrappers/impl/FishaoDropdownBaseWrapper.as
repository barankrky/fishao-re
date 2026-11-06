package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FishaoDropdownBaseWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _label:TextField;
      
      protected var _open:DropdownListOpenWrapper;
      
      private var _bg:MovieClip;
      
      private var _enabled:Boolean = false;
      
      protected var _arrow:DisplayObject;
      
      private var _selectedItemIndex:int = -1;
      
      private var _handler:Function;
      
      public function FishaoDropdownBaseWrapper()
      {
         super();
      }
      
      public function get items() : Array
      {
         return this._open.items;
      }
      
      public function set handler(param1:Function) : void
      {
         if(param1 == this._handler)
         {
            return;
         }
         this._handler = param1;
      }
      
      public function get itemTemplate() : DisplayObject
      {
         return this._open.itemDisplay;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(param1);
         this._label = (_child as DisplayObjectContainer).getChildByName("label") as TextField;
         this._arrow = (_child as DisplayObjectContainer).getChildByName("arrow");
         this._open = new DropdownListOpenWrapper();
         var _loc2_:DisplayObject = (_child as DisplayObjectContainer).getChildByName("open_list");
         this._open.process(_loc2_);
         this._open.onItemClickHandler = this.onItemClickHandler;
         this._bg = (_child as DisplayObjectContainer).getChildByName("bg") as MovieClip;
         this.hide();
         this.disable();
         addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onClick,false);
      }
      
      protected function onItemClickHandler(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
         var _loc2_:IDropdownListItem = param1.currentTarget as IDropdownListItem;
         this.text = _loc2_.displayValue;
         this._selectedItemIndex = _loc2_.index;
         this.hide();
         param1.stopPropagation();
         dispatchEvent(new Event(Event.CHANGE));
         if(this._handler != null)
         {
            this._handler(param1);
         }
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this._open.visible)
         {
            if(this._open.isScrolling() == false)
            {
               this.hide();
            }
         }
         else
         {
            this.show();
         }
      }
      
      private function show() : void
      {
         if(this._open.visible == false && this._enabled)
         {
            this._open.visible = true;
            this._open.mouseEnabled = true;
            if(stage)
            {
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onStageClick,true,0,true);
            }
         }
      }
      
      private function hide() : void
      {
         if(this._open.visible == true)
         {
            (this._bg as MovieClip).gotoAndStop("normal");
            this._open.visible = false;
            this._open.mouseEnabled = false;
            if(stage)
            {
               stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onStageClick,true);
            }
         }
      }
      
      public function set text(param1:String) : void
      {
         this._label.text = param1;
      }
      
      private function onRollOver(param1:MouseEvent) : void
      {
         if(this._enabled)
         {
            (this._bg as MovieClip).gotoAndStop("over");
         }
      }
      
      private function onRollOut(param1:MouseEvent) : void
      {
         (this._bg as MovieClip).gotoAndStop("normal");
      }
      
      public function get displayValue() : String
      {
         return this._label.text;
      }
      
      private function onStageClick(param1:MouseEvent) : void
      {
         if(this._open.contains(DisplayObject(param1.target)) == false)
         {
            if(this._open.visible)
            {
               this.hide();
            }
            param1.stopPropagation();
         }
      }
      
      public function create(param1:Vector.<String>) : void
      {
         this._open.create(param1);
         if(param1.length > 1)
         {
            this.enable();
         }
         else
         {
            if(param1.length > 0)
            {
               this.selectedItemIndex = 0;
            }
            this.disable();
         }
      }
      
      public function enable() : void
      {
         this._enabled = true;
         buttonMode = true;
         if(this._arrow != null)
         {
            this._arrow.visible = true;
            this._bg.visible = true;
         }
      }
      
      public function disable() : void
      {
         this._enabled = false;
         buttonMode = false;
         if(this._arrow != null)
         {
            this._arrow.visible = false;
            this._bg.visible = false;
         }
      }
      
      public function setItemFactory(param1:IItemFactory) : void
      {
         this._open.itemFactory = param1;
      }
      
      public function get selectedItemIndex() : int
      {
         return this._selectedItemIndex;
      }
      
      public function set selectedItemIndex(param1:int) : void
      {
         this._selectedItemIndex = param1;
         var _loc2_:String = this._open.getLabelByIndex(param1);
         if(_loc2_ != null)
         {
            this.text = _loc2_;
         }
      }
   }
}

