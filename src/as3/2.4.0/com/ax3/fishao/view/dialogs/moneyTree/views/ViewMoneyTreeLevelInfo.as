package com.ax3.fishao.view.dialogs.moneyTree.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewProgress;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewMoneyTreeLevelInfo extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelFishcoinsValue:TextField;
      
      private var _viewProgressFishcoins:ViewProgress;
      
      private var _labelFishbucksValue:TextField;
      
      private var _viewProgressFishbucks:ViewProgress;
      
      public function ViewMoneyTreeLevelInfo(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = Debug.assertNotEqual(param2,null);
         super(param1,this._source);
         this.init();
      }
      
      public function set fishcoins(param1:uint) : void
      {
         this._labelFishcoinsValue.text = I18n.get(EStringType.EST_FISHCOINS_COUNT).replace(EStringTypeStubs.ESTS_COUNT,param1);
      }
      
      public function set percentFishcoinsMax(param1:uint) : void
      {
         this._viewProgressFishcoins.percent = param1;
      }
      
      public function set fishbucks(param1:uint) : void
      {
         this._labelFishbucksValue.text = I18n.get(EStringType.EST_FISHBUCKS_COUNT).replace(EStringTypeStubs.ESTS_COUNT,param1);
      }
      
      public function set percentFishbucksMax(param1:uint) : void
      {
         this._viewProgressFishbucks.percent = param1;
      }
      
      private function init() : void
      {
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelFishcoins",TextField);
         _loc1_.text = I18n.get(EStringType.EST_DIALOG_MONEY_TREE_LEVEL_INFO_FISHCOINS);
         this._labelFishcoinsValue = Debug.assertProperty(this._source,"labelFishcoinsValue",TextField);
         this._viewProgressFishcoins = new ViewProgress(controller,Debug.assertProperty(this._source,"viewProgressFishcoins"));
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelFishbucks",TextField);
         _loc2_.text = I18n.get(EStringType.EST_DIALOG_MONEY_TREE_LEVEL_INFO_FISHBUCKS);
         this._labelFishbucksValue = Debug.assertProperty(this._source,"labelFishbucksValue",TextField);
         this._viewProgressFishbucks = new ViewProgress(controller,Debug.assertProperty(this._source,"viewProgressFishbucks"));
      }
   }
}

