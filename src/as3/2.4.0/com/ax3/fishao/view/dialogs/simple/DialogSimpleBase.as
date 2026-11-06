package com.ax3.fishao.view.dialogs.simple
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.FishaoBaseDialog;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class DialogSimpleBase extends FishaoBaseDialog
   {
      
      protected static const INSTANCE_NAME_LABEL_TITLE:String = "labelTitle";
      
      protected static const INSTANCE_NAME_LABEL_DESCRIPTION:String = "labelDescription";
      
      protected static const INSTANCE_NAME_LABEL_BUTTON_CLOSE:String = "buttonClose";
      
      private var _source:DisplayObjectContainer;
      
      private var _labelTitle:TextField;
      
      private var _labelDescription:TextField;
      
      private var _buttonClose:Sprite;
      
      public function DialogSimpleBase(param1:DisplayObjectContainer)
      {
         super();
         this._source = Debug.assertNotEqual(param1,null);
         addChild(this._source);
         this.init();
      }
      
      public function get buttonClose() : Sprite
      {
         return this._buttonClose;
      }
      
      public function set title(param1:String) : void
      {
         this._labelTitle.text = param1;
      }
      
      public function get labelDescription() : TextField
      {
         return this._labelDescription;
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
         if(this._labelDescription.textHeight < this._labelDescription.height)
         {
            this._labelDescription.y += (this._labelDescription.height - this._labelDescription.textHeight) * 0.5;
         }
      }
      
      protected function onViewClicked(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = false;
         switch(param1)
         {
            case this._buttonClose:
               this.onButtonCloseClicked();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      protected function onButtonCloseClicked() : void
      {
         this._buttonClose.removeEventListener(MouseEvent.CLICK,this.onButtonCloseClickedHandler);
         super.close();
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return true;
      }
      
      private function onButtonCloseClickedHandler(param1:MouseEvent) : void
      {
         this.onViewClicked(this._buttonClose,param1);
      }
      
      private function init() : void
      {
         this._labelTitle = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL_TITLE,TextField);
         this._labelDescription = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL_DESCRIPTION,TextField);
         this._buttonClose = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL_BUTTON_CLOSE,Sprite);
         this._buttonClose.buttonMode = true;
         this._buttonClose.useHandCursor = true;
         this._buttonClose.addEventListener(MouseEvent.CLICK,this.onButtonCloseClickedHandler,false,0,true);
      }
   }
}

