package com.ax3.fishao.view.dialogs.rankings
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.rankings.views.DropDownRankings;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.ImportPagesController;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class DialogRankingsAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var tabs:TabsWrapper;
      
      public var numberText:TextField;
      
      public var nameText:TextField;
      
      public var amountTypeText:TextField;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var rankingTypePicker:DropDownRankings;
      
      public var rankingSubtypePicker:DropDownRankings;
      
      public var itemsContainer:Sprite;
      
      protected var _itemFactory:SwfFactoryWrapper;
      
      protected var _rankingTypeFactory:SwfFactoryWrapper;
      
      protected var _rankingSubtypeFactory:SwfFactoryWrapper;
      
      protected var _rankingItem:DisplayObject;
      
      protected var _pagesController:ImportPagesController;
      
      protected var _amountTextWrapper:TextFieldAutofitWrapper;
      
      public function DialogRankingsAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "rankings_dialog.swf";
         super(_loc1_);
      }
   }
}

