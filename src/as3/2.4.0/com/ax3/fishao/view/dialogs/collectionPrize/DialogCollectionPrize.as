package com.ax3.fishao.view.dialogs.collectionPrize
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.collections.model.CollectionBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class DialogCollectionPrize extends DialogCollectionPrizeAsset
   {
      
      private var _buttonOk:MenuFrameButtonWrapper;
      
      private var _entity:CollectionBase;
      
      public function DialogCollectionPrize()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_COLLECTION_PRIZE;
      }
      
      public function set entity(param1:CollectionBase) : void
      {
         this._entity = param1;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:TextField = Debug.assertProperty(_asset,"labelBadge",TextField);
         var _loc6_:TextFieldAutofitWrapper = new TextFieldAutofitWrapper(Debug.assertProperty(_asset,"labelCongratulations",TextField));
         switch(this._entity.reward.resourceType)
         {
            case ResourceType.BADGE.id:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_COLLECTION_PRIZE_CONGRATULATIONS);
               _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_COLLECTION_NAME,I18n.get("collection_title_" + this._entity.id));
               _loc2_ = I18n.get("collection_badge_" + this._entity.id);
               _loc4_ = FishaoBitmapLoader.convertImageNameURL("prizes/CollectionBadge_" + this._entity.id + ".png");
               break;
            case ResourceType.FISH.id:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_COLLECTION_PRIZE_CONGRATULATIONS_FISH_UNLOCKED);
               _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_COLLECTION_NAME,I18n.get("collection_title_" + this._entity.id));
               _loc2_ = I18n.get("fish_" + this._entity.reward.resourceId);
               _loc4_ = FishaoBitmapLoader.convertImageNameURL("fishes/fish_origin_" + this._entity.reward.resourceId + ".png");
         }
         _loc6_.text = _loc1_;
         _loc5_.text = _loc2_;
         var _loc7_:String = ResourceType.getKindByType(this._entity.reward.resourceType);
         var _loc8_:String = FishaoBitmapLoader.getResourceFilenameByKind(_loc7_,this._entity.reward.resourceId);
         _loc3_ = FishaoBitmapLoader.convertImageNameURL(_loc8_);
         this._buttonOk = new MenuFrameButtonWrapper();
         this._buttonOk.process(Debug.assertProperty(_asset,"buttonOk"));
         this._buttonOk.label = I18n.get(EStringType.EST_DIALOG_COLLECTION_PRIZE_BUTTON_OK);
         this._buttonOk.handler = onButtonCloseClicked;
         var _loc9_:DisplayObject = Debug.assertProperty(_asset,"viewImageBig");
         var _loc10_:ScaledBitmap = new ScaledBitmap(null);
         _loc10_.width = _loc9_.width;
         _loc10_.height = _loc9_.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc10_,_loc4_);
         ShiftWrapper.shiftDisplayObject(_loc9_,_loc10_);
         var _loc11_:DisplayObject = Debug.assertProperty(_asset,"viewImageSmall");
         var _loc12_:ScaledBitmap = new ScaledBitmap();
         _loc12_.width = _loc11_.width;
         _loc12_.height = _loc11_.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc12_,_loc3_);
         ShiftWrapper.shiftDisplayObject(_loc11_,_loc12_);
         super.onAssetCreationComplete();
      }
      
      override public function close() : void
      {
         this._buttonOk.handler = null;
         super.close();
      }
   }
}

