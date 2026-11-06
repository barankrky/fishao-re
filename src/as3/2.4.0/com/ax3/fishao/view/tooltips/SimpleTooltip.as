package com.ax3.fishao.view.tooltips
{
   import com.ax3.display.tfs.TextFieldStyle;
   import com.ax3.display.ui.UIUtil;
   import com.ax3.fishao.control.managers.FontManager;
   import com.ax3.fishao.control.managers.ToolTipManager;
   import com.ax3.fishao.model.events.TipEvent;
   import com.ax3.fishao.model.interfaces.IToolTip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class SimpleTooltip extends Sprite implements IToolTip
   {
      
      private static const ELLIPSE_WIDTH:int = 10;
      
      private var _bg:Sprite;
      
      private var _text:TextField;
      
      private var _width:Number;
      
      private var _height:Number;
      
      private const MAX_TEXT_WIDTH:int = 200;
      
      private const TEXT_PADDING:int = 5;
      
      protected var _hideTimer:uint;
      
      private const TEXT_RIGHT_CORRECTION:int = 4;
      
      private const TEXT_BOTTOM_CORRECTION:int = 3;
      
      public function SimpleTooltip()
      {
         super();
         this._bg = new Sprite();
         addChild(this._bg);
         this.createTextField();
         mouseChildren = false;
         mouseEnabled = false;
      }
      
      private function createTextField() : void
      {
         var _loc1_:TextFieldStyle = new TextFieldStyle({
            "font":FontManager.DEFAULT_FONT_BOLD,
            "color":16777215,
            "size":12,
            "align":TextFormatAlign.LEFT,
            "bold":true
         },{
            "width":this.MAX_TEXT_WIDTH,
            "wordWrap":true,
            "multiline":true,
            "selectable":false,
            "border":false,
            "borderColor":16711680,
            "embedFonts":true
         });
         this._text = UIUtil.createTextFieldWithTSL("",[_loc1_]);
         this._text.x = this.TEXT_PADDING;
         this._text.y = this.TEXT_PADDING;
         addChild(this._text);
      }
      
      public function config(param1:Object) : void
      {
         if(param1.hasOwnProperty("text") && param1.text != null && param1.text != "")
         {
            this._text.autoSize = TextFieldAutoSize.NONE;
            this._text.width = this.MAX_TEXT_WIDTH;
            this._text.text = param1.text;
            this._text.autoSize = TextFieldAutoSize.RIGHT;
            this._text.visible = true;
         }
         else
         {
            this._text.visible = false;
         }
         this.redrawBackground();
      }
      
      private function redrawBackground() : void
      {
         this._bg.graphics.clear();
         this._bg.graphics.beginFill(0,0.6);
         this._width = this._text.textWidth + this.TEXT_PADDING * 2 + this.TEXT_RIGHT_CORRECTION;
         this._height = this._text.textHeight + this.TEXT_PADDING * 2 + this.TEXT_BOTTOM_CORRECTION;
         this._bg.graphics.drawRoundRect(0,0,this._width,this._height,ELLIPSE_WIDTH,ELLIPSE_WIDTH);
         this._bg.graphics.endFill();
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      public function activate() : void
      {
         clearTimeout(this._hideTimer);
         this._hideTimer = 0;
         GameSwf.globalDispatcher.addEventListener(TipEvent.DESTROY_POPUP,this.onDestroyPopup);
      }
      
      private function onDestroyPopup(param1:TipEvent = null) : void
      {
         GameSwf.globalDispatcher.removeEventListener(TipEvent.DESTROY_POPUP,this.deactivate);
         if(this._hideTimer == 0)
         {
            this._hideTimer = setTimeout(this.deactivate,0);
         }
      }
      
      public function deactivate() : void
      {
         ToolTipManager.deactivateTooltip(this);
      }
      
      public function isActive() : Boolean
      {
         return parent != null;
      }
      
      public function update() : void
      {
      }
   }
}

