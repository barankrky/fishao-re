package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._ebfae60a420fd1c3ccdd4d9b;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views._ffbd2d1d18df74027259837b;
   import flash.display.DisplayObjectContainer;
   
   public class _937aeef6b97a82652fa32b6e extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _c2006e36a319e43f20f8971f:_ffbd2d1d18df74027259837b;
      
      private var _532ebd0eb6f92975331f5741:_ebfae60a420fd1c3ccdd4d9b;
      
      private var _7e82f2a6dfa2f70df75c2d99:Array;
      
      public function _937aeef6b97a82652fa32b6e(param1:DisplayObjectContainer)
      {
         this._c2006e36a319e43f20f8971f = new _ffbd2d1d18df74027259837b(this,param1);
         super(this._c2006e36a319e43f20f8971f);
         this.init();
      }
      
      public function get pointerRewardType() : String
      {
         return this._c2006e36a319e43f20f8971f.pointerRewardType;
      }
      
      private function init() : void
      {
         this._532ebd0eb6f92975331f5741 = GameSwf.instance.managerWheelOfFortune;
         this._3d47da0befcd393834e23cfc();
      }
      
      private function _3d47da0befcd393834e23cfc() : void
      {
         this._7e82f2a6dfa2f70df75c2d99 = this._532ebd0eb6f92975331f5741.rewardsAvailable;
         this._c2006e36a319e43f20f8971f.rewards = this._7e82f2a6dfa2f70df75c2d99;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               §§push(0x2AB0C7AD ^ -1616326891 ^ -750343691 ^ 0x665EA14D);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               §§push(-286180817 ^ -1199430836 ^ -604184952 ^ -1919957014);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
               §§push(-1144112033 ^ 0x6F2A698A ^ 0x34DFBD2F ^ -532944648);
               break;
            default:
               §§push(0x4DD587C5 ^ 0x028DE6AE ^ 0x0705C600 ^ 0x485DA768);
         }
         switch(§§pop())
         {
            case 0:
               this._3d47da0befcd393834e23cfc();
               this._a1f8e7cd16973711ee87785e();
               break;
            case 1:
               this._f344c1200f6c7f4ea43473f5();
               break;
            case 2:
               this._2e5d051f5dbcaec827affcd9();
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓刟刡劈勳剎加剏劮募勌剈刭劚动劀剚励勎勧劓剳刄勿刖刀刍勫剥劑刢则勴勐劥剣劌勰劄剝劆剚剖刾剌刋刡剒剧割刅劌劋刳剸刉劄劝劺勰勽刅刨刈勣券剨募劜勏刜剛剋刳刪刁劒剑剰划勿勨劚劒勆剓动剅勍剎勺励剳劅剌劰劍刳动劵勵劚勚勪刳割刕剰劁勂剹勥劈刕努加劲剼勪刭剏勴刐勿剛剚劾労勗務刀勲勉刯","刨勾劣剗劭勲剏劻剛剼勶刁刽劜勸劕") + param1);
         }
      }
      
      private function _a1f8e7cd16973711ee87785e() : void
      {
         this._c2006e36a319e43f20f8971f._78057b666f71707da176fab7();
      }
      
      private function _f344c1200f6c7f4ea43473f5() : void
      {
         this._c2006e36a319e43f20f8971f._471a55365bf6043a770d3c83();
      }
      
      private function _2e5d051f5dbcaec827affcd9() : void
      {
         this._c2006e36a319e43f20f8971f._e3a3cacc6ff47d66620f39a2(this._532ebd0eb6f92975331f5741.spinReward);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

