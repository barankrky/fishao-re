package com.ax3.fishao.display.dialogs
{
   import assets.common.UsernameSelectWin;
   import com.ax3.display.dialog.BaseDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FishaoRadioGroupWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class UsernameSelectPopup extends BaseDialog
   {
      
      private const EVENT_COMPLETE:Event = new Event(Event.COMPLETE);
      
      public var submitButton:FrameButtonWrapper;
      
      public var title:TextField;
      
      public var description:TextField;
      
      private var _asset:UsernameSelectWin = new UsernameSelectWin();
      
      private var _selectedItem:int = 0;
      
      private var _radioGroup:FishaoRadioGroupWrapper = new FishaoRadioGroupWrapper();
      
      private var _value:String = "";
      
      public function UsernameSelectPopup()
      {
         super();
         _app = app;
         addChild(this._asset);
         UtilsTextField.setBoldFont(this._asset.valTitle3);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.submitButton.handler = this.onChooseItem;
         this.submitButton.label = I18n.get("buttonOk");
         this.title.text = I18n.getUpper("usernameSelectPopupTitle");
         var _loc1_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc1_.push(this._asset.valCheck0);
         _loc1_.push(this._asset.valCheck1);
         _loc1_.push(this._asset.valCheck2);
         _loc1_.push(this._asset.valCheck3);
         var _loc2_:Vector.<TextField> = new Vector.<TextField>();
         _loc2_.push(this._asset.valTitle0);
         _loc2_.push(this._asset.valTitle1);
         _loc2_.push(this._asset.valTitle2);
         _loc2_.push(this._asset.valTitle3);
         this._radioGroup.setGroup(_loc1_,_loc2_);
         this._radioGroup.selected = 0;
         this._asset.valTitle3.addEventListener(FocusEvent.FOCUS_IN,this.onInputFocusIn);
         this._asset.valTitle3.addEventListener(FocusEvent.FOCUS_OUT,this.onInputFocusOut);
         _canClosedByEsc = false;
      }
      
      private function onInputFocusOut(param1:FocusEvent) : void
      {
         if(this._asset.valTitle3.text == "")
         {
            this._asset.valTitle3.text = I18n.get("usernameSelectPopupOther");
         }
      }
      
      private function onInputFocusIn(param1:FocusEvent) : void
      {
         if(this._asset.valTitle3.text == I18n.get("usernameSelectPopupOther"))
         {
            this._asset.valTitle3.text = "";
         }
      }
      
      public function set list(param1:Array) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            TextField(this._asset["valTitle" + _loc2_]).text = param1[_loc2_];
            TextField(this._asset["valTitle" + _loc2_]).width = TextField(this._asset["valTitle" + _loc2_]).textWidth + 5;
            _loc2_++;
         }
      }
      
      override public function show() : void
      {
         super.show();
         this._value = "";
         this._asset.valTitle3.text = I18n.get("usernameSelectPopupOther");
      }
      
      override public function showByDialogManager() : void
      {
         _app.dialogManager.showPopup(this);
      }
      
      private function onChooseItem(param1:MouseEvent) : void
      {
         var _loc2_:int = this._radioGroup.selected;
         if(_loc2_ != -1)
         {
            this._value = TextField(this._asset["valTitle" + _loc2_]).text;
            dispatchEvent(this.EVENT_COMPLETE);
            close();
         }
      }
      
      public function get value() : String
      {
         return this._value;
      }
   }
}

