package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   
   public class _dcda14caf4d8aad3f24c11f3 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _365c3465fa3e41472c24dfb6:gViewEventRow = new gViewEventRow();
      
      public function _dcda14caf4d8aad3f24c11f3(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._365c3465fa3e41472c24dfb6);
         this._365c3465fa3e41472c24dfb6.viewFishcoin.visible = false;
         this._365c3465fa3e41472c24dfb6.viewFishbucks.visible = false;
         this._365c3465fa3e41472c24dfb6.labelReward.visible = false;
      }
      
      public function set position(param1:uint) : void
      {
         this._365c3465fa3e41472c24dfb6.labelPosition.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._365c3465fa3e41472c24dfb6.labelNameUser.text = param1;
      }
      
      public function set criteria(param1:String) : void
      {
         this._365c3465fa3e41472c24dfb6.labelCriteria.text = param1;
      }
      
      public function set fish(param1:String) : void
      {
         this._365c3465fa3e41472c24dfb6.labelNameFish.text = param1;
      }
      
      public function set rewardFishbucks(param1:uint) : void
      {
         this._365c3465fa3e41472c24dfb6.labelReward.text = param1.toString();
         this._365c3465fa3e41472c24dfb6.labelReward.visible = true;
         this._365c3465fa3e41472c24dfb6.viewFishbucks.visible = true;
      }
      
      public function set rewardFishcoins(param1:uint) : void
      {
         this._365c3465fa3e41472c24dfb6.labelReward.text = param1.toString();
         this._365c3465fa3e41472c24dfb6.labelReward.visible = true;
         this._365c3465fa3e41472c24dfb6.viewFishcoin.visible = true;
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         this._365c3465fa3e41472c24dfb6.viewBgCurrent.visible = param1;
      }
      
      public function set displayFishnameColumn(param1:Boolean) : void
      {
         var _loc2_:int = -857894233 ^ -868019161 ^ -1068745715 ^ 0x1D11B31A;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5889A2CB ^ -160583528 ^ -1011787383 ^ -1332329906))
            {
               case 0:
                  return;
               case 1:
                  this._365c3465fa3e41472c24dfb6.labelCriteria.width = -2036938594 ^ 0x025694E1 ^ -898233978 ^ 0x4EB654E1;
                  this._365c3465fa3e41472c24dfb6.labelNameFish.visible = false;
                  _loc2_ = -1582588351 ^ 0x26EB9EA3 ^ 0x79328C42 ^ 0x23B18534;
                  break;
               case 2:
                  this._365c3465fa3e41472c24dfb6.labelCriteria.width = -1677073622 ^ 0x3168A473 ^ 0x5729B8CF ^ -95879226;
                  this._365c3465fa3e41472c24dfb6.labelNameFish.visible = true;
                  _loc2_ = 0x36B9D531 ^ -2040306331 ^ 0x5E00407F ^ 0x3319F9BF;
                  break;
               case 3:
                  if(param1)
                  {
                     _loc2_ = 0x66DBEF95 ^ 0x3990FD27 ^ -919426366 ^ 0x4BBAB1E6;
                  }
                  else
                  {
                     _loc2_ = 0x3D746B43 ^ -547110988 ^ 0x473907C0 ^ 0x78EDDAA2;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

