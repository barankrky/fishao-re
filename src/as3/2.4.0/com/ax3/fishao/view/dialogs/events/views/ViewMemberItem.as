package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   
   public class ViewMemberItem extends ViewBase
   {
      
      private var _source:gViewEventRow = new gViewEventRow();
      
      public function ViewMemberItem(param1:IController)
      {
         super(param1,this._source);
         this._source.viewFishcoin.visible = false;
         this._source.viewFishbucks.visible = false;
         this._source.labelReward.visible = false;
      }
      
      public function set position(param1:uint) : void
      {
         this._source.labelPosition.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._source.labelNameUser.text = param1;
      }
      
      public function set criteria(param1:String) : void
      {
         this._source.labelCriteria.text = param1;
      }
      
      public function set fish(param1:String) : void
      {
         this._source.labelNameFish.text = param1;
      }
      
      public function set rewardFishbucks(param1:uint) : void
      {
         this._source.labelReward.text = param1.toString();
         this._source.labelReward.visible = true;
         this._source.viewFishbucks.visible = true;
      }
      
      public function set rewardFishcoins(param1:uint) : void
      {
         this._source.labelReward.text = param1.toString();
         this._source.labelReward.visible = true;
         this._source.viewFishcoin.visible = true;
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         this._source.viewBgCurrent.visible = param1;
      }
      
      public function set displayFishnameColumn(param1:Boolean) : void
      {
         if(param1)
         {
            this._source.labelCriteria.width = 80;
            this._source.labelNameFish.visible = true;
         }
         else
         {
            this._source.labelCriteria.width = 280;
            this._source.labelNameFish.visible = false;
         }
      }
   }
}

