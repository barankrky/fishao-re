package com.ax3.fishao.tutorial.views.dialogs.caught
{
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.model._c47e82e5d235217beb5f9566;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._16e26a611afe5208717ab607;
   import com.ax3.fishao.view.dialogs.caught._4afcffb379abb67c2a3266dc;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _bc882fd414165030feaf8199 extends _4afcffb379abb67c2a3266dc
   {
      
      private var _2cd9eaf38fb5e5d30d35b21f:_283b592e1b144e604db439f2;
      
      private var _06a7c8dfd3541993a62ec86f:Boolean;
      
      private var _ebcf47cd9ff25ea7b10132d1:Boolean;
      
      public function _bc882fd414165030feaf8199()
      {
         super();
         this._2cd9eaf38fb5e5d30d35b21f = GameSwf.instance.managerTutorial;
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return false;
      }
      
      override protected function _d6b22cbb525de1a39214ed4c(param1:Event) : void
      {
         var _loc2_:int = 0x7F86AA0C ^ -741007055 ^ 0x494C7860 ^ -1112550320;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7BB9A728 ^ 0x315F619D ^ -945389990 ^ -705650718))
            {
               case 0:
                  if(this._ebcf47cd9ff25ea7b10132d1)
                  {
                     _loc2_ = -551775894 ^ 0x55E50059 ^ 0x47158866 ^ -1789116837;
                  }
                  else
                  {
                     _loc2_ = 0x6CB1EDA3 ^ 0x1F567FBD ^ 0x0E14B0CF ^ 0x254305D8;
                  }
                  break;
               case 1:
                  super._d6b22cbb525de1a39214ed4c(param1);
                  this._06a7c8dfd3541993a62ec86f = false;
                  this._2cd9eaf38fb5e5d30d35b21f.tutorialInProgress._0e1bc13a989d12a3776df86c();
                  _loc2_ = 0x7F21A27B ^ 0x11ADAE24 ^ -567430567 ^ -401499895;
                  break;
               case 2:
                  return;
               case 3:
                  return;
               case 4:
                  if(this._06a7c8dfd3541993a62ec86f)
                  {
                     _loc2_ = 0x7A07F38F ^ -1130766875 ^ 0x13B44800 ^ -1919270554;
                  }
                  else
                  {
                     _loc2_ = 0x4CB7DF33 ^ -1676232355 ^ 0x44C99C37 ^ -858202799;
                  }
                  break;
               case 5:
                  super._d6b22cbb525de1a39214ed4c(param1);
                  _loc2_ = -192181309 ^ -1186706801 ^ -1997049913 ^ -1651996284;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _9905b0991336c7a648355d73(param1:MouseEvent) : void
      {
         if(this._06a7c8dfd3541993a62ec86f)
         {
            return;
         }
         viewInFishdexButton.disable();
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
         _needDispatchClose = false;
         close();
         var _loc2_:_16e26a611afe5208717ab607 = app.dialogFactory._0aa1dc1d8f735e865120e57f();
         _16e26a611afe5208717ab607.showFishId = _fishId;
         _loc2_.show();
      }
      
      override public function init(param1:IAssetWrappersProcessor) : void
      {
         super.init(param1);
      }
      
      override public function _b3a35344555fb4adad8a8342(param1:_c47e82e5d235217beb5f9566, param2:int, param3:Boolean, param4:Boolean) : void
      {
         super._b3a35344555fb4adad8a8342(param1,param2,param3,param4);
         this._2cd9eaf38fb5e5d30d35b21f.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
      
      public function _52dc9c359546efa57faf694e() : void
      {
         this._ebcf47cd9ff25ea7b10132d1 = true;
         this._4fbb214ca74d20d1bd73a1ed();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this._2cd9eaf38fb5e5d30d35b21f.tutorialHelpers;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(viewInFishdexButton,new Point(viewInFishdexButton.width / (0x68BC281B ^ 0x566B4F55 ^ 0x11BB8C4A ^ 0x2F6CEB06),-390629410 ^ -205472088 ^ 0x3EF0E7DF ^ -629616281)),0x63126472 ^ -1108911443 ^ -1909848365 ^ 0x50DF380C);
      }
      
      public function _84829e33652a4071373c49a2() : void
      {
         this._06a7c8dfd3541993a62ec86f = true;
         this._4fbb214ca74d20d1bd73a1ed();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this._2cd9eaf38fb5e5d30d35b21f.tutorialHelpers;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(closeButton,new Point(0x2BF913CD ^ 0x11BA5667 ^ 0x755B6D97 ^ -1326983195,-728827892 ^ -582608278 ^ 0x0EDBA6A7 ^ 0x07134491)),-1035987533 ^ -509512908 ^ 0x46746899 ^ 0x65950EFF);
      }
      
      private function _4fbb214ca74d20d1bd73a1ed() : void
      {
         closeButton.visible = this._06a7c8dfd3541993a62ec86f;
         viewInFishdexButton.visible = this._ebcf47cd9ff25ea7b10132d1;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         super.centerToRect(param1,param2,param3,param4);
      }
   }
}

