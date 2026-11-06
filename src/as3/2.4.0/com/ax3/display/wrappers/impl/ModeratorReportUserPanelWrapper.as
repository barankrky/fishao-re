package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.display.dialogs.SequentTextFieldMediator;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class ModeratorReportUserPanelWrapper implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      public var labelField:TextField;
      
      public var flag:BitmapContainerWrapper;
      
      public var usernameField:TextField;
      
      public var viewProfileButton:FrameButtonWrapper;
      
      public var viewLogsButton:FrameButtonWrapper;
      
      private var _sequentMediator:SequentTextFieldMediator;
      
      private var _asset:DisplayObject;
      
      public function ModeratorReportUserPanelWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = param1;
      }
      
      public function onAssetProcessComplete() : void
      {
         this.viewProfileButton.label = I18n.getUpper("viewProfileButton");
         this.viewLogsButton.label = I18n.getUpper("viewLogsButton");
         this._sequentMediator = new SequentTextFieldMediator(this.labelField,this.flag,this.usernameField);
      }
      
      public function set title(param1:String) : void
      {
         this._sequentMediator.setValue(0,param1);
      }
      
      public function set username(param1:String) : void
      {
         this._sequentMediator.setValue(2,param1);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

