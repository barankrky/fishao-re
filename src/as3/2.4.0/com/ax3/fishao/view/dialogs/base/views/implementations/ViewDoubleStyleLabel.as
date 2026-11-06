package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class ViewDoubleStyleLabel extends ViewBase
   {
      
      private static var TEXTFIELD_BORDER_WIDTH:int = 2;
      
      private var _source:DisplayObjectContainer;
      
      private var _labelTitle:TextField;
      
      private var _labelValue:TextField;
      
      private var _gap:int;
      
      private var _allowPlaceViews:Boolean;
      
      public function ViewDoubleStyleLabel(param1:IController, param2:TextField, param3:TextField, param4:Boolean = true)
      {
         Debug.assertNotEqual(param2.parent,null,"labelTitle should have a parent on ViewDoubleStyleLabel initialized");
         Debug.assertNotEqual(param3.parent,null,"labelValue should have a parent on ViewDoubleStyleLabel initialized");
         this._source = new Sprite();
         super(param1,this._source);
         this._labelTitle = param2;
         this._labelValue = param3;
         this._allowPlaceViews = param4;
         this.init();
      }
      
      public function set title(param1:String) : void
      {
         this._labelTitle.text = param1;
         this.placeViews(false);
      }
      
      public function set value(param1:String) : void
      {
         this._labelValue.text = param1;
         this.placeViews(false);
      }
      
      private function init() : void
      {
         this._gap = 5;
         this._source.x = this._labelTitle.x;
         this._source.y = this._labelTitle.y;
         this._labelTitle.parent.addChild(this._source);
         this._labelTitle.parent.removeChild(this._labelTitle);
         this._labelValue.parent.removeChild(this._labelValue);
         this._labelValue.x -= this._labelTitle.x;
         this._labelValue.y -= this._labelTitle.y;
         this._labelTitle.x = 0;
         this._labelTitle.y = 0;
         this._source.addChild(this._labelTitle);
         this._source.addChild(this._labelValue);
         this.placeViews(false);
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         if(!this._allowPlaceViews)
         {
            return;
         }
         this._labelTitle.width = this._labelTitle.textWidth + TEXTFIELD_BORDER_WIDTH * 2;
         this._labelValue.width = this._labelValue.textWidth + TEXTFIELD_BORDER_WIDTH * 2;
         this._labelValue.x = this._labelTitle.width + this._gap;
      }
   }
}

