package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.view.wrappers.impl.VScrollWrapper;
   import com.ax3.fishao.view.wrappers.impl.WorldListItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.WorldListSetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class WorldListDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:TextField;
      
      public var serverName:TextField;
      
      public var users:TextField;
      
      public var viewsListHSlider:VScrollWrapper;
      
      public var listSet:WorldListSetWrapper;
      
      private var _worldLine:DisplayObject;
      
      protected var _worldLineFactory:SwfFactoryWrapper;
      
      protected var worldListContainer:DisplayObjectContainer;
      
      public function WorldListDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "worldList.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._worldLineFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,WorldListItemWrapper);
         this._worldLineFactory.process(this._worldLine);
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         super.onAssetLoadingComplete(param1);
         this._worldLine = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName("worldListContainer")).getChildByName("listSet")).getChildByName("worldLine");
         this.worldListContainer = DisplayObjectContainer(param1.getChildByName("worldListContainer"));
      }
   }
}

