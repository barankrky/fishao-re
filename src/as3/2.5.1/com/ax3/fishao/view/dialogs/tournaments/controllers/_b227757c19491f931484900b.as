package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._e49f888e5d8714a6c39e60da;
   import com.ax3.fishao.view.dialogs.tournaments.views._0c1740bf1fed0c8f95ec2962;
   import flash.display.DisplayObjectContainer;
   
   public class _b227757c19491f931484900b extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _7144b00c2e30f6fd45f98c8d:_0c1740bf1fed0c8f95ec2962;
      
      private var _6d0c7c3932ffa9a7646377ca:_e49f888e5d8714a6c39e60da;
      
      public function _b227757c19491f931484900b(param1:DisplayObjectContainer, param2:_e49f888e5d8714a6c39e60da)
      {
         this._6d0c7c3932ffa9a7646377ca = param2;
         this._7144b00c2e30f6fd45f98c8d = new _0c1740bf1fed0c8f95ec2962(this,param1);
         super(this._7144b00c2e30f6fd45f98c8d);
         this.init();
      }
      
      public function set displayRelevant(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? this._6d0c7c3932ffa9a7646377ca.rewardCoefficient * (-1924160604 ^ -1220584526 ^ 0x32FF49AC ^ 0x088FB1DE) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭劼劢劻勶剫券剪刲勦","剉剅剞勧剶剐勐别势刏刑劒刼判勩則") : this._6d0c7c3932ffa9a7646377ca.rewardFishcoins.toString();
         this._7144b00c2e30f6fd45f98c8d.labelReward = _loc2_;
      }
      
      private function init() : void
      {
         this._4afbda3a251f7d51a347cf6c();
      }
      
      private function _4afbda3a251f7d51a347cf6c() : void
      {
         this._7144b00c2e30f6fd45f98c8d.rewardType = this._6d0c7c3932ffa9a7646377ca.type;
         this._7144b00c2e30f6fd45f98c8d.labelPosition.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_PRIZE_PLACE.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._6d0c7c3932ffa9a7646377ca.prizePosition));
      }
      
      public function _98f920350045afc8aa501846() : void
      {
         this._7144b00c2e30f6fd45f98c8d.labelPosition.visible = false;
      }
   }
}

