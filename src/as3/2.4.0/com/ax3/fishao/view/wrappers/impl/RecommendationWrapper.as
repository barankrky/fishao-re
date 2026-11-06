package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.buttons.ResizableButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class RecommendationWrapper extends Sprite implements IAssetWrapper
   {
      
      public var closeCallback:Function;
      
      public var txtRecommended:TextField;
      
      public var imgItem:MovieClip;
      
      public var btnBuyInShop:ResizableButtonWrapper;
      
      private var _child:DisplayObject;
      
      private var _item:Object;
      
      private var _itemType:int = 0;
      
      public function RecommendationWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         ShiftWrapper.shiftDisplayObject(this._child,this,true);
         this.txtRecommended = (this._child as MovieClip).getChildByName("txtRecommended") as TextField;
         this.imgItem = (this._child as MovieClip).getChildByName("imgItem") as MovieClip;
         this.btnBuyInShop = new ResizableButtonWrapper();
         this.btnBuyInShop.process((this._child as MovieClip).getChildByName("btnBuyInShop"));
      }
      
      public function show(param1:Object, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:ScaledBitmap = null;
         this._item = param1;
         this._itemType = param2;
         if(this._itemType == 0)
         {
            this.txtRecommended.text = I18n.get("catch_info_recommended_rod");
         }
         else if(this._itemType == 1)
         {
            this.txtRecommended.text = I18n.get("catch_info_recommended_bait");
         }
         else if(this._itemType == 2)
         {
            this.txtRecommended.text = I18n.get("catch_info_recommended_gadget");
         }
         this.btnBuyInShop.label = I18n.get("catch_info_buy_in_shop");
         if(this._item)
         {
            _loc3_ = "";
            if(this._itemType == 0)
            {
               _loc3_ = FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.ROD.name,this._item.id);
            }
            else if(this._itemType == 1)
            {
               _loc3_ = FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.BAIT.name,this._item.id);
            }
            else if(this._itemType == 2)
            {
               if(this._item.type_id == ResourceType.LUCK_POTION.id)
               {
                  _loc3_ = FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.LUCK_POTION.name,this._item.id);
               }
               else if(this._item.type_id == ResourceType.MAGIC_WATCH.id)
               {
                  _loc3_ = FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.MAGIC_WATCH.name,this._item.id);
               }
            }
            if(this._item.price_fishcoins > 0)
            {
               if(this._item.appear_in_shop != null)
               {
                  if(this._item.appear_in_shop == 1)
                  {
                     this.btnBuyInShop.handler = this.handleBuyInShopClick;
                  }
                  else
                  {
                     this.btnBuyInShop.visible = false;
                  }
               }
               else
               {
                  this.btnBuyInShop.handler = this.handleBuyInShopClick;
               }
            }
            else
            {
               this.btnBuyInShop.visible = false;
            }
            _loc4_ = FishaoBitmapLoader.convertImageNameURL(_loc3_);
            _loc5_ = new ScaledBitmap(null);
            _loc5_.width = 128;
            _loc5_.height = 128;
            app.resourceManager.replaceBitmapDataFromURL(_loc5_,_loc4_);
            this.imgItem.addChild(_loc5_);
            ShiftWrapper.shiftDisplayObject(this.imgItem,_loc5_);
         }
      }
      
      private function handleBuyInShopClick(param1:MouseEvent) : void
      {
         GameSwf.instance.showShopDialog(this._itemType,this._item.id);
         this.closeCallback.apply();
      }
   }
}

